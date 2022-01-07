
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_data {int * ready; int pt; } ;
typedef int ssize_t ;


 int close (int ) ;
 scalar_t__ pipe (int *) ;
 int pthread_create (int *,int *,int ,struct thread_data*) ;
 int read (int ,int*,int) ;
 int thread_fn ;
 struct thread_data* threads ;

__attribute__((used)) static int thread_create(int i)
{
 struct thread_data *td = &threads[i];
 int err, go;

 if (pipe(td->ready))
  return -1;

 err = pthread_create(&td->pt, ((void*)0), thread_fn, td);
 if (!err) {

  ssize_t ret = read(td->ready[0], &go, sizeof(int));
  err = ret != sizeof(int);
 }

 close(td->ready[0]);
 close(td->ready[1]);
 return err;
}
