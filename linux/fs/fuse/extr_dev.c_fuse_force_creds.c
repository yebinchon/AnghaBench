
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pid; int gid; int uid; } ;
struct TYPE_4__ {TYPE_1__ h; } ;
struct fuse_req {TYPE_2__ in; } ;
struct fuse_conn {int pid_ns; int user_ns; } ;


 int current ;
 int current_fsgid () ;
 int current_fsuid () ;
 int from_kgid_munged (int ,int ) ;
 int from_kuid_munged (int ,int ) ;
 int pid_nr_ns (int ,int ) ;
 int task_pid (int ) ;

__attribute__((used)) static void fuse_force_creds(struct fuse_conn *fc, struct fuse_req *req)
{
 req->in.h.uid = from_kuid_munged(fc->user_ns, current_fsuid());
 req->in.h.gid = from_kgid_munged(fc->user_ns, current_fsgid());
 req->in.h.pid = pid_nr_ns(task_pid(current), fc->pid_ns);
}
