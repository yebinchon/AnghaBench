
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfp_flag {int flags; } ;



__attribute__((used)) static int gfpcmp(const void *a, const void *b)
{
 const struct gfp_flag *fa = a;
 const struct gfp_flag *fb = b;

 return fa->flags - fb->flags;
}
