
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_tag {char tag; int mult; } ;
typedef int buf ;


 long EINVAL ;
 unsigned long PERF_ALIGN (unsigned long,unsigned long) ;
 int is_power_of_2 (unsigned long) ;
 unsigned long page_size ;
 unsigned long parse_tag_value (char const*,struct parse_tag*) ;
 int pr_info (char*,char*,unsigned long) ;
 unsigned long roundup_pow_of_two (unsigned long) ;
 unsigned long strtoul (char const*,char**,int) ;
 int unit_number__scnprintf (char*,int,unsigned long) ;

__attribute__((used)) static long parse_pages_arg(const char *str, unsigned long min,
       unsigned long max)
{
 unsigned long pages, val;
 static struct parse_tag tags[] = {
  { .tag = 'B', .mult = 1 },
  { .tag = 'K', .mult = 1 << 10 },
  { .tag = 'M', .mult = 1 << 20 },
  { .tag = 'G', .mult = 1 << 30 },
  { .tag = 0 },
 };

 if (str == ((void*)0))
  return -EINVAL;

 val = parse_tag_value(str, tags);
 if (val != (unsigned long) -1) {

  pages = PERF_ALIGN(val, page_size) / page_size;
 } else {

  char *eptr;
  pages = strtoul(str, &eptr, 10);
  if (*eptr != '\0')
   return -EINVAL;
 }

 if (pages == 0 && min == 0) {

 } else if (!is_power_of_2(pages)) {
  char buf[100];


  pages = roundup_pow_of_two(pages);
  if (!pages)
   return -EINVAL;

  unit_number__scnprintf(buf, sizeof(buf), pages * page_size);
  pr_info("rounding mmap pages size to %s (%lu pages)\n",
   buf, pages);
 }

 if (pages > max)
  return -EINVAL;

 return pages;
}
