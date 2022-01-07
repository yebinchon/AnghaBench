
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int kstrtol (char*,int ,long*) ;
 char* strpbrk (char*,char*) ;

int traceprobe_split_symbol_offset(char *symbol, long *offset)
{
 char *tmp;
 int ret;

 if (!offset)
  return -EINVAL;

 tmp = strpbrk(symbol, "+-");
 if (tmp) {
  ret = kstrtol(tmp, 0, offset);
  if (ret)
   return ret;
  *tmp = '\0';
 } else
  *offset = 0;

 return 0;
}
