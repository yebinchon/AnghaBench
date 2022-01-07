
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int opt_len(const char *s)
{
 bool open_quote = 0;
 int len;
 char c;

 for (len = 0; (c = s[len]) != '\0'; len++) {
  if (c == '"')
   open_quote = !open_quote;
  if (c == ',' && !open_quote)
   break;
 }
 return len;
}
