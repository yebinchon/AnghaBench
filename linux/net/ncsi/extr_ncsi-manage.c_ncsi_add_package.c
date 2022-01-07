
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncsi_package {unsigned char id; int node; int channel_whitelist; int channels; int lock; struct ncsi_dev_priv* ndp; } ;
struct ncsi_dev_priv {int lock; int package_num; int packages; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int UINT_MAX ;
 int kfree (struct ncsi_package*) ;
 struct ncsi_package* kzalloc (int,int ) ;
 int list_add_tail_rcu (int *,int *) ;
 struct ncsi_package* ncsi_find_package (struct ncsi_dev_priv*,unsigned char) ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct ncsi_package *ncsi_add_package(struct ncsi_dev_priv *ndp,
          unsigned char id)
{
 struct ncsi_package *np, *tmp;
 unsigned long flags;

 np = kzalloc(sizeof(*np), GFP_ATOMIC);
 if (!np)
  return ((void*)0);

 np->id = id;
 np->ndp = ndp;
 spin_lock_init(&np->lock);
 INIT_LIST_HEAD(&np->channels);
 np->channel_whitelist = UINT_MAX;

 spin_lock_irqsave(&ndp->lock, flags);
 tmp = ncsi_find_package(ndp, id);
 if (tmp) {
  spin_unlock_irqrestore(&ndp->lock, flags);
  kfree(np);
  return tmp;
 }

 list_add_tail_rcu(&np->node, &ndp->packages);
 ndp->package_num++;
 spin_unlock_irqrestore(&ndp->lock, flags);

 return np;
}
