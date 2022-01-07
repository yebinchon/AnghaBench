
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kthread_create_info {int (* threadfn ) (void*) ;TYPE_1__* result; int done; void* data; } ;
struct kthread {int flags; int exited; int parked; void* data; } ;
struct completion {int dummy; } ;
struct TYPE_3__ {int * vfork_done; } ;


 int EINTR ;
 int ENOMEM ;
 TYPE_1__* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int KTHREAD_SHOULD_STOP ;
 int TASK_UNINTERRUPTIBLE ;
 int __kthread_parkme (struct kthread*) ;
 int __set_current_state (int ) ;
 int cgroup_kthread_ready () ;
 int complete (struct completion*) ;
 TYPE_1__* current ;
 int do_exit (int) ;
 int init_completion (int *) ;
 int kfree (struct kthread_create_info*) ;
 struct kthread* kzalloc (int,int ) ;
 int schedule () ;
 int set_kthread_struct (struct kthread*) ;
 int test_bit (int ,int *) ;
 struct completion* xchg (int *,int *) ;

__attribute__((used)) static int kthread(void *_create)
{

 struct kthread_create_info *create = _create;
 int (*threadfn)(void *data) = create->threadfn;
 void *data = create->data;
 struct completion *done;
 struct kthread *self;
 int ret;

 self = kzalloc(sizeof(*self), GFP_KERNEL);
 set_kthread_struct(self);


 done = xchg(&create->done, ((void*)0));
 if (!done) {
  kfree(create);
  do_exit(-EINTR);
 }

 if (!self) {
  create->result = ERR_PTR(-ENOMEM);
  complete(done);
  do_exit(-ENOMEM);
 }

 self->data = data;
 init_completion(&self->exited);
 init_completion(&self->parked);
 current->vfork_done = &self->exited;


 __set_current_state(TASK_UNINTERRUPTIBLE);
 create->result = current;
 complete(done);
 schedule();

 ret = -EINTR;
 if (!test_bit(KTHREAD_SHOULD_STOP, &self->flags)) {
  cgroup_kthread_ready();
  __kthread_parkme(self);
  ret = threadfn(data);
 }
 do_exit(ret);
}
