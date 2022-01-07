
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {unsigned long kcov_size; struct kcov* kcov; int kcov_mode; int kcov_area; } ;
struct kcov {void* mode; unsigned long size; struct task_struct* t; int area; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOTSUPP ;
 int ENOTTY ;
 int INT_MAX ;



 void* KCOV_MODE_DISABLED ;
 void* KCOV_MODE_INIT ;
 void* KCOV_MODE_TRACE_CMP ;
 void* KCOV_MODE_TRACE_PC ;
 unsigned long KCOV_TRACE_CMP ;
 unsigned long KCOV_TRACE_PC ;
 int WARN_ON (int) ;
 int WRITE_ONCE (int ,void*) ;
 int barrier () ;
 struct task_struct* current ;
 int kcov_fault_in_area (struct kcov*) ;
 int kcov_get (struct kcov*) ;
 int kcov_put (struct kcov*) ;
 int kcov_task_init (struct task_struct*) ;

__attribute__((used)) static int kcov_ioctl_locked(struct kcov *kcov, unsigned int cmd,
        unsigned long arg)
{
 struct task_struct *t;
 unsigned long size, unused;

 switch (cmd) {
 case 128:




  if (kcov->mode != KCOV_MODE_DISABLED)
   return -EBUSY;





  size = arg;
  if (size < 2 || size > INT_MAX / sizeof(unsigned long))
   return -EINVAL;
  kcov->size = size;
  kcov->mode = KCOV_MODE_INIT;
  return 0;
 case 129:







  if (kcov->mode != KCOV_MODE_INIT || !kcov->area)
   return -EINVAL;
  t = current;
  if (kcov->t != ((void*)0) || t->kcov != ((void*)0))
   return -EBUSY;
  if (arg == KCOV_TRACE_PC)
   kcov->mode = KCOV_MODE_TRACE_PC;
  else if (arg == KCOV_TRACE_CMP)



  return -ENOTSUPP;

  else
   return -EINVAL;
  kcov_fault_in_area(kcov);

  t->kcov_size = kcov->size;
  t->kcov_area = kcov->area;

  barrier();
  WRITE_ONCE(t->kcov_mode, kcov->mode);
  t->kcov = kcov;
  kcov->t = t;

  kcov_get(kcov);
  return 0;
 case 130:

  unused = arg;
  if (unused != 0 || current->kcov != kcov)
   return -EINVAL;
  t = current;
  if (WARN_ON(kcov->t != t))
   return -EINVAL;
  kcov_task_init(t);
  kcov->t = ((void*)0);
  kcov->mode = KCOV_MODE_INIT;
  kcov_put(kcov);
  return 0;
 default:
  return -ENOTTY;
 }
}
