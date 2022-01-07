
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_type {int list; } ;
struct list_head {int dummy; } ;


 int list_add_rcu (int *,struct list_head*) ;
 struct list_head* ptype_head (struct packet_type*) ;
 int ptype_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void dev_add_pack(struct packet_type *pt)
{
 struct list_head *head = ptype_head(pt);

 spin_lock(&ptype_lock);
 list_add_rcu(&pt->list, head);
 spin_unlock(&ptype_lock);
}
