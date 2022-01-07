
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 scalar_t__ __get_safe_page (int ) ;

unsigned long get_safe_page(gfp_t gfp_mask)
{
 return (unsigned long)__get_safe_page(gfp_mask);
}
