
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pgv {int * buffer; } ;


 int free_pages (unsigned long,unsigned int) ;
 scalar_t__ is_vmalloc_addr (int *) ;
 int kfree (struct pgv*) ;
 scalar_t__ likely (int *) ;
 int vfree (int *) ;

__attribute__((used)) static void free_pg_vec(struct pgv *pg_vec, unsigned int order,
   unsigned int len)
{
 int i;

 for (i = 0; i < len; i++) {
  if (likely(pg_vec[i].buffer)) {
   if (is_vmalloc_addr(pg_vec[i].buffer))
    vfree(pg_vec[i].buffer);
   else
    free_pages((unsigned long)pg_vec[i].buffer,
        order);
   pg_vec[i].buffer = ((void*)0);
  }
 }
 kfree(pg_vec);
}
