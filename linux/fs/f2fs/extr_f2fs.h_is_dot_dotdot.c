
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int len; char* name; } ;



__attribute__((used)) static inline bool is_dot_dotdot(const struct qstr *str)
{
 if (str->len == 1 && str->name[0] == '.')
  return 1;

 if (str->len == 2 && str->name[0] == '.' && str->name[1] == '.')
  return 1;

 return 0;
}
