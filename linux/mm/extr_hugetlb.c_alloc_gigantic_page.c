
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct hstate {int dummy; } ;
typedef int nodemask_t ;
typedef int gfp_t ;



__attribute__((used)) static struct page *alloc_gigantic_page(struct hstate *h, gfp_t gfp_mask,
     int nid, nodemask_t *nodemask)
{
 return ((void*)0);
}
