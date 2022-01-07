
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_data {int tid; void* map; } ;


 int MAP_ANONYMOUS ;
 void* MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_EXEC ;
 int PROT_READ ;
 int PROT_WRITE ;
 int SYS_gettid ;
 void* mmap (int *,int ,int,int,int,int ) ;
 int page_size ;
 int perror (char*) ;
 int pr_debug (char*,int ,void*) ;
 int syscall (int ) ;

__attribute__((used)) static int thread_init(struct thread_data *td)
{
 void *map;

 map = mmap(((void*)0), page_size,
     PROT_READ|PROT_WRITE|PROT_EXEC,
     MAP_SHARED|MAP_ANONYMOUS, -1, 0);

 if (map == MAP_FAILED) {
  perror("mmap failed");
  return -1;
 }

 td->map = map;
 td->tid = syscall(SYS_gettid);

 pr_debug("tid = %d, map = %p\n", td->tid, map);
 return 0;
}
