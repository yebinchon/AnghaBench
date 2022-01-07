
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ocfs2_cluster_connection {int cc_lockspace; } ;
struct file_lock {scalar_t__ fl_type; } ;
struct file {int dummy; } ;


 int F_CANCELLK ;
 int F_SETLK ;
 scalar_t__ F_UNLCK ;
 scalar_t__ IS_GETLK (int) ;
 int dlm_posix_get (int ,int ,struct file*,struct file_lock*) ;
 int dlm_posix_lock (int ,int ,struct file*,int,struct file_lock*) ;
 int dlm_posix_unlock (int ,int ,struct file*,struct file_lock*) ;

__attribute__((used)) static int user_plock(struct ocfs2_cluster_connection *conn,
        u64 ino,
        struct file *file,
        int cmd,
        struct file_lock *fl)
{
 if (cmd == F_CANCELLK) {
  cmd = F_SETLK;
  fl->fl_type = F_UNLCK;
 }

 if (IS_GETLK(cmd))
  return dlm_posix_get(conn->cc_lockspace, ino, file, fl);
 else if (fl->fl_type == F_UNLCK)
  return dlm_posix_unlock(conn->cc_lockspace, ino, file, fl);
 else
  return dlm_posix_lock(conn->cc_lockspace, ino, file, cmd, fl);
}
