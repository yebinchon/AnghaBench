
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_lp_stats {int dummy; } ;
struct ubifs_info {int space_lock; int lst; } ;


 int memcpy (struct ubifs_lp_stats*,int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ubifs_get_lp_stats(struct ubifs_info *c, struct ubifs_lp_stats *lst)
{
 spin_lock(&c->space_lock);
 memcpy(lst, &c->lst, sizeof(struct ubifs_lp_stats));
 spin_unlock(&c->space_lock);
}
