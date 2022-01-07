
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_rateinfo {int burst; int avg; scalar_t__ cost; scalar_t__ credit_cap; struct xt_limit_priv* master; } ;
struct xt_mtchk_param {struct xt_rateinfo* matchinfo; } ;
struct xt_limit_priv {int lock; scalar_t__ credit; int prev; } ;


 int ENOMEM ;
 int ERANGE ;
 int GFP_KERNEL ;
 int jiffies ;
 struct xt_limit_priv* kmalloc (int,int ) ;
 int pr_info_ratelimited (char*,int,int) ;
 int spin_lock_init (int *) ;
 scalar_t__ user2credits (int) ;

__attribute__((used)) static int limit_mt_check(const struct xt_mtchk_param *par)
{
 struct xt_rateinfo *r = par->matchinfo;
 struct xt_limit_priv *priv;


 if (r->burst == 0
     || user2credits(r->avg * r->burst) < user2credits(r->avg)) {
  pr_info_ratelimited("Overflow, try lower: %u/%u\n",
        r->avg, r->burst);
  return -ERANGE;
 }

 priv = kmalloc(sizeof(*priv), GFP_KERNEL);
 if (priv == ((void*)0))
  return -ENOMEM;


 r->master = priv;


 priv->prev = jiffies;
 priv->credit = user2credits(r->avg * r->burst);
 if (r->cost == 0) {
  r->credit_cap = priv->credit;
  r->cost = user2credits(r->avg);
 }
 spin_lock_init(&priv->lock);

 return 0;
}
