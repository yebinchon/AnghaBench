
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int MF_IGNORED ;

__attribute__((used)) static int me_kernel(struct page *p, unsigned long pfn)
{
 return MF_IGNORED;
}
