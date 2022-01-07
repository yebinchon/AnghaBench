
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int squashfs_copy_cache (struct page*,int *,int,int ) ;

__attribute__((used)) static int squashfs_readpage_sparse(struct page *page, int expected)
{
 squashfs_copy_cache(page, ((void*)0), expected, 0);
 return 0;
}
