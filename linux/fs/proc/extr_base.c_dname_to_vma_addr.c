
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; } ;
struct dentry {TYPE_1__ d_name; } ;


 int EINVAL ;
 unsigned int KSTRTOX_OVERFLOW ;
 unsigned int _parse_integer (char const*,int,unsigned long long*) ;

__attribute__((used)) static int dname_to_vma_addr(struct dentry *dentry,
        unsigned long *start, unsigned long *end)
{
 const char *str = dentry->d_name.name;
 unsigned long long sval, eval;
 unsigned int len;

 if (str[0] == '0' && str[1] != '-')
  return -EINVAL;
 len = _parse_integer(str, 16, &sval);
 if (len & KSTRTOX_OVERFLOW)
  return -EINVAL;
 if (sval != (unsigned long)sval)
  return -EINVAL;
 str += len;

 if (*str != '-')
  return -EINVAL;
 str++;

 if (str[0] == '0' && str[1])
  return -EINVAL;
 len = _parse_integer(str, 16, &eval);
 if (len & KSTRTOX_OVERFLOW)
  return -EINVAL;
 if (eval != (unsigned long)eval)
  return -EINVAL;
 str += len;

 if (*str != '\0')
  return -EINVAL;

 *start = sval;
 *end = eval;

 return 0;
}
