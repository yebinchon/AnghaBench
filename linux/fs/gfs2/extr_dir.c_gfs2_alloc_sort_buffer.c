
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_NOFS ;
 unsigned int KMALLOC_MAX_SIZE ;
 int PAGE_KERNEL ;
 int __GFP_NOWARN ;
 void* __vmalloc (unsigned int,int,int ) ;
 void* kmalloc (unsigned int,int) ;

__attribute__((used)) static void *gfs2_alloc_sort_buffer(unsigned size)
{
 void *ptr = ((void*)0);

 if (size < KMALLOC_MAX_SIZE)
  ptr = kmalloc(size, GFP_NOFS | __GFP_NOWARN);
 if (!ptr)
  ptr = __vmalloc(size, GFP_NOFS, PAGE_KERNEL);
 return ptr;
}
