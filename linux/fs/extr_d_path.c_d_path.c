
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct path {TYPE_3__* dentry; TYPE_1__* mnt; } ;
struct TYPE_9__ {int fs; } ;
struct TYPE_8__ {TYPE_2__* d_op; } ;
struct TYPE_7__ {char* (* d_dname ) (TYPE_3__*,char*,int) ;} ;
struct TYPE_6__ {TYPE_3__* mnt_root; } ;


 char* ERR_PTR (int) ;
 int IS_ROOT (TYPE_3__*) ;
 TYPE_4__* current ;
 int get_fs_root_rcu (int ,struct path*) ;
 int path_with_deleted (struct path const*,struct path*,char**,int*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 char* stub1 (TYPE_3__*,char*,int) ;

char *d_path(const struct path *path, char *buf, int buflen)
{
 char *res = buf + buflen;
 struct path root;
 int error;
 if (path->dentry->d_op && path->dentry->d_op->d_dname &&
     (!IS_ROOT(path->dentry) || path->dentry != path->mnt->mnt_root))
  return path->dentry->d_op->d_dname(path->dentry, buf, buflen);

 rcu_read_lock();
 get_fs_root_rcu(current->fs, &root);
 error = path_with_deleted(path, &root, &res, &buflen);
 rcu_read_unlock();

 if (error < 0)
  res = ERR_PTR(error);
 return res;
}
