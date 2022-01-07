
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nat_entry {int dummy; } ;


 int HAS_FSYNCED_INODE ;
 int HAS_LAST_FSYNC ;
 int IS_CHECKPOINTED ;
 int set_nat_flag (struct nat_entry*,int ,int) ;

__attribute__((used)) static inline void nat_reset_flag(struct nat_entry *ne)
{

 set_nat_flag(ne, IS_CHECKPOINTED, 1);
 set_nat_flag(ne, HAS_FSYNCED_INODE, 0);
 set_nat_flag(ne, HAS_LAST_FSYNC, 1);
}
