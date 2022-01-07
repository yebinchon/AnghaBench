
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_data {int pipe_read; int pipe_write; int nr; } ;


 int BUG_ON (int) ;
 int loops ;
 int read (int ,int*,int) ;
 int write (int ,int*,int) ;

__attribute__((used)) static void *worker_thread(void *__tdata)
{
 struct thread_data *td = __tdata;
 int m = 0, i;
 int ret;

 for (i = 0; i < loops; i++) {
  if (!td->nr) {
   ret = read(td->pipe_read, &m, sizeof(int));
   BUG_ON(ret != sizeof(int));
   ret = write(td->pipe_write, &m, sizeof(int));
   BUG_ON(ret != sizeof(int));
  } else {
   ret = write(td->pipe_write, &m, sizeof(int));
   BUG_ON(ret != sizeof(int));
   ret = read(td->pipe_read, &m, sizeof(int));
   BUG_ON(ret != sizeof(int));
  }
 }

 return ((void*)0);
}
