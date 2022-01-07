
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_dev; } ;
typedef int dev_t ;


 int free_anon_bdev (int ) ;
 int generic_shutdown_super (struct super_block*) ;

void kill_anon_super(struct super_block *sb)
{
 dev_t dev = sb->s_dev;
 generic_shutdown_super(sb);
 free_anon_bdev(dev);
}
