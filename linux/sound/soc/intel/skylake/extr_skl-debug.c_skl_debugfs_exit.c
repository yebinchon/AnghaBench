
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skl_dev {struct skl_debug* debugfs; } ;
struct skl_debug {int fs; } ;


 int debugfs_remove_recursive (int ) ;

void skl_debugfs_exit(struct skl_dev *skl)
{
 struct skl_debug *d = skl->debugfs;

 debugfs_remove_recursive(d->fs);

 d = ((void*)0);
}
