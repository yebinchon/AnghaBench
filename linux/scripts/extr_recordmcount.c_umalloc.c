
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int file_append_cleanup () ;
 int fprintf (int ,char*,size_t) ;
 void* malloc (size_t) ;
 int mmap_cleanup () ;
 int stderr ;

__attribute__((used)) static void * umalloc(size_t size)
{
 void *const addr = malloc(size);
 if (addr == 0) {
  fprintf(stderr, "malloc failed: %zu bytes\n", size);
  file_append_cleanup();
  mmap_cleanup();
  return ((void*)0);
 }
 return addr;
}
