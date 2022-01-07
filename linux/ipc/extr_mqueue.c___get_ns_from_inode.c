
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipc_namespace {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct TYPE_2__ {int s_fs_info; } ;


 struct ipc_namespace* get_ipc_ns (int ) ;

__attribute__((used)) static inline struct ipc_namespace *__get_ns_from_inode(struct inode *inode)
{
 return get_ipc_ns(inode->i_sb->s_fs_info);
}
