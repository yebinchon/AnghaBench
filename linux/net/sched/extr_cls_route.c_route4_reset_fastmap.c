
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct route4_head {int fastmap; } ;


 int fastmap_lock ;
 int memset (int ,int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void
route4_reset_fastmap(struct route4_head *head)
{
 spin_lock_bh(&fastmap_lock);
 memset(head->fastmap, 0, sizeof(head->fastmap));
 spin_unlock_bh(&fastmap_lock);
}
