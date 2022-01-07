
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int utf8clen(const char *s)
{
 unsigned char c = *s;
 return 1 + (c >= 0xC0) + (c >= 0xE0) + (c >= 0xF0);
}
