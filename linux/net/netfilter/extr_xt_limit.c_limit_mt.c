
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_rateinfo {scalar_t__ credit_cap; scalar_t__ cost; struct xt_limit_priv* master; } ;
struct xt_limit_priv {scalar_t__ credit; int lock; int prev; } ;
struct xt_action_param {struct xt_rateinfo* matchinfo; } ;
struct sk_buff {int dummy; } ;


 unsigned long CREDITS_PER_JIFFY ;
 unsigned long jiffies ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 unsigned long xchg (int *,unsigned long) ;

__attribute__((used)) static bool
limit_mt(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct xt_rateinfo *r = par->matchinfo;
 struct xt_limit_priv *priv = r->master;
 unsigned long now = jiffies;

 spin_lock_bh(&priv->lock);
 priv->credit += (now - xchg(&priv->prev, now)) * CREDITS_PER_JIFFY;
 if (priv->credit > r->credit_cap)
  priv->credit = r->credit_cap;

 if (priv->credit >= r->cost) {

  priv->credit -= r->cost;
  spin_unlock_bh(&priv->lock);
  return 1;
 }

 spin_unlock_bh(&priv->lock);
 return 0;
}
