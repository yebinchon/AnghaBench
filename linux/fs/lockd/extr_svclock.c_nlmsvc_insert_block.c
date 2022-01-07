
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_block {int dummy; } ;


 int nlm_blocked_lock ;
 int nlmsvc_insert_block_locked (struct nlm_block*,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nlmsvc_insert_block(struct nlm_block *block, unsigned long when)
{
 spin_lock(&nlm_blocked_lock);
 nlmsvc_insert_block_locked(block, when);
 spin_unlock(&nlm_blocked_lock);
}
