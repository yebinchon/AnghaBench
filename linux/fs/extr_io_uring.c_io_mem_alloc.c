
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int GFP_KERNEL ;
 int __GFP_COMP ;
 int __GFP_NORETRY ;
 int __GFP_NOWARN ;
 int __GFP_ZERO ;
 scalar_t__ __get_free_pages (int,int ) ;
 int get_order (size_t) ;

__attribute__((used)) static void *io_mem_alloc(size_t size)
{
 gfp_t gfp_flags = GFP_KERNEL | __GFP_ZERO | __GFP_NOWARN | __GFP_COMP |
    __GFP_NORETRY;

 return (void *) __get_free_pages(gfp_flags, get_order(size));
}
