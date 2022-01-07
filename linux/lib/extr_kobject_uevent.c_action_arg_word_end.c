
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isalnum (int ) ;

__attribute__((used)) static const char *action_arg_word_end(const char *buf, const char *buf_end,
           char delim)
{
 const char *next = buf;

 while (next <= buf_end && *next != delim)
  if (!isalnum(*next++))
   return ((void*)0);

 if (next == buf)
  return ((void*)0);

 return next;
}
