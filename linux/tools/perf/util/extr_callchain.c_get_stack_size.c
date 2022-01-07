
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int USHRT_MAX ;
 int pr_err (char*,unsigned long,char const*) ;
 unsigned long round_down (int ,int) ;
 unsigned long round_up (unsigned long,int) ;
 unsigned long strtoul (char const*,char**,int ) ;

__attribute__((used)) static int get_stack_size(const char *str, unsigned long *_size)
{
 char *endptr;
 unsigned long size;
 unsigned long max_size = round_down(USHRT_MAX, sizeof(u64));

 size = strtoul(str, &endptr, 0);

 do {
  if (*endptr)
   break;

  size = round_up(size, sizeof(u64));
  if (!size || size > max_size)
   break;

  *_size = size;
  return 0;

 } while (0);

 pr_err("callchain: Incorrect stack dump size (max %ld): %s\n",
        max_size, str);
 return -1;
}
