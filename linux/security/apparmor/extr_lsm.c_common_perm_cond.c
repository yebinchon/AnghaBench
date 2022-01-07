
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct path_cond {int member_1; int member_0; } ;
struct path {int dentry; } ;
struct TYPE_2__ {int i_mode; int i_uid; } ;


 int common_perm (char const*,struct path const*,int ,struct path_cond*) ;
 TYPE_1__* d_backing_inode (int ) ;
 int path_mediated_fs (int ) ;

__attribute__((used)) static int common_perm_cond(const char *op, const struct path *path, u32 mask)
{
 struct path_cond cond = { d_backing_inode(path->dentry)->i_uid,
      d_backing_inode(path->dentry)->i_mode
 };

 if (!path_mediated_fs(path->dentry))
  return 0;

 return common_perm(op, path, mask, &cond);
}
