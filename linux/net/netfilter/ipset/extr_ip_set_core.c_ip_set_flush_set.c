
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ip_set {int lock; TYPE_1__* variant; int name; } ;
struct TYPE_2__ {int (* flush ) (struct ip_set*) ;} ;


 int pr_debug (char*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct ip_set*) ;

__attribute__((used)) static void
ip_set_flush_set(struct ip_set *set)
{
 pr_debug("set: %s\n", set->name);

 spin_lock_bh(&set->lock);
 set->variant->flush(set);
 spin_unlock_bh(&set->lock);
}
