
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ptid; } ;
struct TYPE_5__ {unsigned long address; TYPE_1__ feat; int flags; } ;
struct TYPE_6__ {TYPE_2__ pagefault; } ;
struct uffd_msg {TYPE_3__ arg; int event; } ;


 unsigned int FAULT_FLAG_WRITE ;
 int UFFD_EVENT_PAGEFAULT ;
 unsigned int UFFD_FEATURE_THREAD_ID ;
 int UFFD_PAGEFAULT_FLAG_WP ;
 int UFFD_PAGEFAULT_FLAG_WRITE ;
 unsigned long VM_UFFD_WP ;
 int current ;
 int msg_init (struct uffd_msg*) ;
 int task_pid_vnr (int ) ;

__attribute__((used)) static inline struct uffd_msg userfault_msg(unsigned long address,
         unsigned int flags,
         unsigned long reason,
         unsigned int features)
{
 struct uffd_msg msg;
 msg_init(&msg);
 msg.event = UFFD_EVENT_PAGEFAULT;
 msg.arg.pagefault.address = address;
 if (flags & FAULT_FLAG_WRITE)







  msg.arg.pagefault.flags |= UFFD_PAGEFAULT_FLAG_WRITE;
 if (reason & VM_UFFD_WP)







  msg.arg.pagefault.flags |= UFFD_PAGEFAULT_FLAG_WP;
 if (features & UFFD_FEATURE_THREAD_ID)
  msg.arg.pagefault.feat.ptid = task_pid_vnr(current);
 return msg;
}
