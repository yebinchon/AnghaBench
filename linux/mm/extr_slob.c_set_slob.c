
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int slobidx_t ;
struct TYPE_4__ {int units; } ;
typedef TYPE_1__ slob_t ;


 unsigned long PAGE_MASK ;

__attribute__((used)) static void set_slob(slob_t *s, slobidx_t size, slob_t *next)
{
 slob_t *base = (slob_t *)((unsigned long)s & PAGE_MASK);
 slobidx_t offset = next - base;

 if (size > 1) {
  s[0].units = size;
  s[1].units = offset;
 } else
  s[0].units = -offset;
}
