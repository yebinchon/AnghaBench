
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool tomoyo_invalid(const unsigned char c)
{
 return c && (c <= ' ' || c >= 127);
}
