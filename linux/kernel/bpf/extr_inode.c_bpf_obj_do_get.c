
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dentry; } ;
struct inode {int i_private; } ;
struct filename {int name; } ;
typedef enum bpf_type { ____Placeholder_bpf_type } bpf_type ;


 int ACC_MODE (int) ;
 void* ERR_PTR (int) ;
 int IS_ERR (void*) ;
 int LOOKUP_FOLLOW ;
 void* bpf_any_get (int ,int) ;
 int bpf_inode_type (struct inode*,int*) ;
 struct inode* d_backing_inode (int ) ;
 int inode_permission (struct inode*,int ) ;
 int kern_path (int ,int ,struct path*) ;
 int path_put (struct path*) ;
 int touch_atime (struct path*) ;

__attribute__((used)) static void *bpf_obj_do_get(const struct filename *pathname,
       enum bpf_type *type, int flags)
{
 struct inode *inode;
 struct path path;
 void *raw;
 int ret;

 ret = kern_path(pathname->name, LOOKUP_FOLLOW, &path);
 if (ret)
  return ERR_PTR(ret);

 inode = d_backing_inode(path.dentry);
 ret = inode_permission(inode, ACC_MODE(flags));
 if (ret)
  goto out;

 ret = bpf_inode_type(inode, type);
 if (ret)
  goto out;

 raw = bpf_any_get(inode->i_private, *type);
 if (!IS_ERR(raw))
  touch_atime(&path);

 path_put(&path);
 return raw;
out:
 path_put(&path);
 return ERR_PTR(ret);
}
