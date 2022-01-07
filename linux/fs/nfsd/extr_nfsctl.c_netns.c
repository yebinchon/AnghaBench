
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_4__ {TYPE_1__* i_sb; } ;
struct TYPE_3__ {struct net* s_fs_info; } ;


 TYPE_2__* file_inode (struct file*) ;

__attribute__((used)) static inline struct net *netns(struct file *file)
{
 return file_inode(file)->i_sb->s_fs_info;
}
