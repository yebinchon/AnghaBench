
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {struct dentry* mnt_root; } ;
struct qstr {char* name; void* len; } ;
struct dentry {int dummy; } ;
typedef int pid_t ;
typedef int buf ;


 struct dentry* d_hash_and_lookup (struct dentry*,struct qstr*) ;
 int d_invalidate (struct dentry*) ;
 int dput (struct dentry*) ;
 void* snprintf (char*,int,char*,int) ;
 void* strlen (char*) ;

__attribute__((used)) static void proc_flush_task_mnt(struct vfsmount *mnt, pid_t pid, pid_t tgid)
{
 struct dentry *dentry, *leader, *dir;
 char buf[10 + 1];
 struct qstr name;

 name.name = buf;
 name.len = snprintf(buf, sizeof(buf), "%u", pid);

 dentry = d_hash_and_lookup(mnt->mnt_root, &name);
 if (dentry) {
  d_invalidate(dentry);
  dput(dentry);
 }

 if (pid == tgid)
  return;

 name.name = buf;
 name.len = snprintf(buf, sizeof(buf), "%u", tgid);
 leader = d_hash_and_lookup(mnt->mnt_root, &name);
 if (!leader)
  goto out;

 name.name = "task";
 name.len = strlen(name.name);
 dir = d_hash_and_lookup(leader, &name);
 if (!dir)
  goto out_put_leader;

 name.name = buf;
 name.len = snprintf(buf, sizeof(buf), "%u", pid);
 dentry = d_hash_and_lookup(dir, &name);
 if (dentry) {
  d_invalidate(dentry);
  dput(dentry);
 }

 dput(dir);
out_put_leader:
 dput(leader);
out:
 return;
}
