
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;
 scalar_t__ kmalloc_verbose ;
 int nr_allocated ;
 int printf (char*,void*) ;
 int uatomic_dec (int *) ;

void kfree(void *p)
{
 if (!p)
  return;
 uatomic_dec(&nr_allocated);
 if (kmalloc_verbose)
  printf("Freeing %p to malloc\n", p);
 free(p);
}
