
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_data {int map; int * ready; } ;
typedef int ssize_t ;


 int go_away ;
 int munmap (int ,int ) ;
 int page_size ;
 int pr_err (char*) ;
 scalar_t__ thread_init (struct thread_data*) ;
 int usleep (int) ;
 int write (int ,int*,int) ;

__attribute__((used)) static void *thread_fn(void *arg)
{
 struct thread_data *td = arg;
 ssize_t ret;
 int go = 0;

 if (thread_init(td))
  return ((void*)0);


 ret = write(td->ready[1], &go, sizeof(int));
 if (ret != sizeof(int)) {
  pr_err("failed to notify\n");
  return ((void*)0);
 }

 while (!go_away) {

  usleep(100);
 }

 munmap(td->map, page_size);
 return ((void*)0);
}
