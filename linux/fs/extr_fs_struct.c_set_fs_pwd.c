
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {scalar_t__ dentry; } ;
struct fs_struct {int lock; int seq; struct path pwd; } ;


 int path_get (struct path const*) ;
 int path_put (struct path*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int write_seqcount_begin (int *) ;
 int write_seqcount_end (int *) ;

void set_fs_pwd(struct fs_struct *fs, const struct path *path)
{
 struct path old_pwd;

 path_get(path);
 spin_lock(&fs->lock);
 write_seqcount_begin(&fs->seq);
 old_pwd = fs->pwd;
 fs->pwd = *path;
 write_seqcount_end(&fs->seq);
 spin_unlock(&fs->lock);

 if (old_pwd.dentry)
  path_put(&old_pwd);
}
