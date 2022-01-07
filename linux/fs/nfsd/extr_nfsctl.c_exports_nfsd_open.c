
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int s_fs_info; } ;


 int exports_net_open (int ,struct file*) ;

__attribute__((used)) static int exports_nfsd_open(struct inode *inode, struct file *file)
{
 return exports_net_open(inode->i_sb->s_fs_info, file);
}
