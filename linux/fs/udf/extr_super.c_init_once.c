
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * i_data; } ;
struct udf_inode_info {int vfs_inode; TYPE_1__ i_ext; } ;


 int inode_init_once (int *) ;

__attribute__((used)) static void init_once(void *foo)
{
 struct udf_inode_info *ei = (struct udf_inode_info *)foo;

 ei->i_ext.i_data = ((void*)0);
 inode_init_once(&ei->vfs_inode);
}
