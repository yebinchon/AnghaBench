
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int __GFP_COMP ;
 int __GFP_NORETRY ;
 int __GFP_NOWARN ;
 int __GFP_ZERO ;
 scalar_t__ __get_free_pages (int,unsigned long) ;
 int array_size (int,int ) ;
 char* vzalloc (int ) ;

__attribute__((used)) static char *alloc_one_pg_vec_page(unsigned long order)
{
 char *buffer;
 gfp_t gfp_flags = GFP_KERNEL | __GFP_COMP |
     __GFP_ZERO | __GFP_NOWARN | __GFP_NORETRY;

 buffer = (char *) __get_free_pages(gfp_flags, order);
 if (buffer)
  return buffer;


 buffer = vzalloc(array_size((1 << order), PAGE_SIZE));
 if (buffer)
  return buffer;


 gfp_flags &= ~__GFP_NORETRY;
 buffer = (char *) __get_free_pages(gfp_flags, order);
 if (buffer)
  return buffer;


 return ((void*)0);
}
