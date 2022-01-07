
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_ext {int dummy; } ;


 int buffer_ext_add (struct buffer_ext*,void*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void emit_string(struct buffer_ext *be, const char *s)
{
 buffer_ext_add(be, (void *)s, strlen(s) + 1);
}
