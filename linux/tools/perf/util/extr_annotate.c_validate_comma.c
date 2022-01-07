
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ins_operands {char const* raw_comment; } ;



__attribute__((used)) static inline const char *validate_comma(const char *c, struct ins_operands *ops)
{
 if (ops->raw_comment && c > ops->raw_comment)
  return ((void*)0);

 return c;
}
