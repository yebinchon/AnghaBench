
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

__attribute__((used)) static int decode_bits(char c)
{
 if (c >= 'A' && c <= 'Z')
  return c - 'A';
 if (c >= 'a' && c <= 'z')
  return c - 'a' + 26;
 if (c >= '0' && c <= '9')
  return c - '0' + 52;
 if (c == '+')
  return 62;
 if (c == '/')
  return 63;
 if (c == '=')
  return 0;
 return -EINVAL;
}
