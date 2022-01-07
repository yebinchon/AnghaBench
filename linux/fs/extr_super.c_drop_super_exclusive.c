
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_umount; } ;


 int put_super (struct super_block*) ;
 int up_write (int *) ;

void drop_super_exclusive(struct super_block *sb)
{
 up_write(&sb->s_umount);
 put_super(sb);
}
