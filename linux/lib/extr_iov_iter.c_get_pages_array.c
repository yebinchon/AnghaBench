
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int GFP_KERNEL ;
 struct page** kvmalloc_array (size_t,int,int ) ;

__attribute__((used)) static struct page **get_pages_array(size_t n)
{
 return kvmalloc_array(n, sizeof(struct page *), GFP_KERNEL);
}
