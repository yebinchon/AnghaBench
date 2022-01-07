
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dentry; } ;
struct bpf_prog {int dummy; } ;
typedef enum bpf_prog_type { ____Placeholder_bpf_prog_type } bpf_prog_type ;


 struct bpf_prog* ERR_PTR (int) ;
 int IS_ERR (struct bpf_prog*) ;
 int LOOKUP_FOLLOW ;
 struct bpf_prog* __get_prog_inode (int ,int) ;
 int d_backing_inode (int ) ;
 int kern_path (char const*,int ,struct path*) ;
 int path_put (struct path*) ;
 int touch_atime (struct path*) ;

struct bpf_prog *bpf_prog_get_type_path(const char *name, enum bpf_prog_type type)
{
 struct bpf_prog *prog;
 struct path path;
 int ret = kern_path(name, LOOKUP_FOLLOW, &path);
 if (ret)
  return ERR_PTR(ret);
 prog = __get_prog_inode(d_backing_inode(path.dentry), type);
 if (!IS_ERR(prog))
  touch_atime(&path);
 path_put(&path);
 return prog;
}
