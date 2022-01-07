
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct ipc_namespace {struct vfsmount* mq_mnt; int mq_msgsize_default; int mq_msg_default; int mq_msgsize_max; int mq_msg_max; int mq_queues_max; scalar_t__ mq_queues_count; } ;


 int DFLT_MSG ;
 int DFLT_MSGMAX ;
 int DFLT_MSGSIZE ;
 int DFLT_MSGSIZEMAX ;
 int DFLT_QUEUESMAX ;
 scalar_t__ IS_ERR (struct vfsmount*) ;
 int PTR_ERR (struct vfsmount*) ;
 struct vfsmount* mq_create_mount (struct ipc_namespace*) ;

int mq_init_ns(struct ipc_namespace *ns)
{
 struct vfsmount *m;

 ns->mq_queues_count = 0;
 ns->mq_queues_max = DFLT_QUEUESMAX;
 ns->mq_msg_max = DFLT_MSGMAX;
 ns->mq_msgsize_max = DFLT_MSGSIZEMAX;
 ns->mq_msg_default = DFLT_MSG;
 ns->mq_msgsize_default = DFLT_MSGSIZE;

 m = mq_create_mount(ns);
 if (IS_ERR(m))
  return PTR_ERR(m);
 ns->mq_mnt = m;
 return 0;
}
