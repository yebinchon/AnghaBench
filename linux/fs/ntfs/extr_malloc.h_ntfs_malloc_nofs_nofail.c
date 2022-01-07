
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_NOFS ;
 int __GFP_HIGHMEM ;
 int __GFP_NOFAIL ;
 void* __ntfs_malloc (unsigned long,int) ;

__attribute__((used)) static inline void *ntfs_malloc_nofs_nofail(unsigned long size)
{
 return __ntfs_malloc(size, GFP_NOFS | __GFP_HIGHMEM | __GFP_NOFAIL);
}
