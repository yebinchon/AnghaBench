
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int EINVAL ;
 unsigned long PAGE_COUNTER_MAX ;
 int PAGE_SIZE ;
 int memparse (char const*,char**) ;
 unsigned long min (int,int) ;
 int strcmp (char const*,char const*) ;

int page_counter_memparse(const char *buf, const char *max,
     unsigned long *nr_pages)
{
 char *end;
 u64 bytes;

 if (!strcmp(buf, max)) {
  *nr_pages = PAGE_COUNTER_MAX;
  return 0;
 }

 bytes = memparse(buf, &end);
 if (*end != '\0')
  return -EINVAL;

 *nr_pages = min(bytes / PAGE_SIZE, (u64)PAGE_COUNTER_MAX);

 return 0;
}
