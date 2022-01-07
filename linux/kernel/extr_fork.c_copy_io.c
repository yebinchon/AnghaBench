
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {struct io_context* io_context; } ;
struct io_context {int ioprio; } ;
struct TYPE_2__ {struct io_context* io_context; } ;


 unsigned long CLONE_IO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NUMA_NO_NODE ;
 TYPE_1__* current ;
 struct io_context* get_task_io_context (struct task_struct*,int ,int ) ;
 int ioc_task_link (struct io_context*) ;
 scalar_t__ ioprio_valid (int ) ;
 int put_io_context (struct io_context*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int copy_io(unsigned long clone_flags, struct task_struct *tsk)
{
 return 0;
}
