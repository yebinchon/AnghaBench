
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;
typedef size_t loff_t ;


 size_t EINVAL ;
 int memcpy (void*,void const*,size_t) ;

ssize_t memory_read_from_buffer(void *to, size_t count, loff_t *ppos,
    const void *from, size_t available)
{
 loff_t pos = *ppos;

 if (pos < 0)
  return -EINVAL;
 if (pos >= available)
  return 0;
 if (count > available - pos)
  count = available - pos;
 memcpy(to, from + pos, count);
 *ppos = pos + count;

 return count;
}
