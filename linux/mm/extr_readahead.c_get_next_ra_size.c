
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_ra_state {unsigned long size; } ;



__attribute__((used)) static unsigned long get_next_ra_size(struct file_ra_state *ra,
          unsigned long max)
{
 unsigned long cur = ra->size;

 if (cur < max / 16)
  return 4 * cur;
 if (cur <= max / 2)
  return 2 * cur;
 return max;
}
