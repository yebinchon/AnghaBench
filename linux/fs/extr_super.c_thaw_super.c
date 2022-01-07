
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_umount; } ;


 int down_write (int *) ;
 int thaw_super_locked (struct super_block*) ;

int thaw_super(struct super_block *sb)
{
 down_write(&sb->s_umount);
 return thaw_super_locked(sb);
}
