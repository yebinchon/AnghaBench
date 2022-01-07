
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_object {int dummy; } ;
typedef int pthread_t ;


 int BPF_PROG_TYPE_CGROUP_SKB ;
 scalar_t__ CHECK_FAIL (int) ;
 int bpf_object__close (struct bpf_object*) ;
 int bpf_prog_load (char const*,int ,struct bpf_object**,int*) ;
 int errno ;
 int printf (char*,int) ;
 int pthread_create (int *,int *,int *,int*) ;
 scalar_t__ pthread_join (int ,void**) ;
 int spin_lock_thread ;

void test_spinlock(void)
{
 const char *file = "./test_spin_lock.o";
 pthread_t thread_id[4];
 struct bpf_object *obj = ((void*)0);
 int prog_fd;
 int err = 0, i;
 void *ret;

 err = bpf_prog_load(file, BPF_PROG_TYPE_CGROUP_SKB, &obj, &prog_fd);
 if (CHECK_FAIL(err)) {
  printf("test_spin_lock:bpf_prog_load errno %d\n", errno);
  goto close_prog;
 }
 for (i = 0; i < 4; i++)
  if (CHECK_FAIL(pthread_create(&thread_id[i], ((void*)0),
           &spin_lock_thread, &prog_fd)))
   goto close_prog;

 for (i = 0; i < 4; i++)
  if (CHECK_FAIL(pthread_join(thread_id[i], &ret) ||
          ret != (void *)&prog_fd))
   goto close_prog;
close_prog:
 bpf_object__close(obj);
}
