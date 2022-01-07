
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct path {int dentry; } ;
struct kstat {int dummy; } ;
struct inode {int dummy; } ;


 struct inode* d_inode (int ) ;
 int generic_fillattr (struct inode*,struct kstat*) ;

__attribute__((used)) static int empty_dir_getattr(const struct path *path, struct kstat *stat,
        u32 request_mask, unsigned int query_flags)
{
 struct inode *inode = d_inode(path->dentry);
 generic_fillattr(inode, stat);
 return 0;
}
