
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int modulo_min(unsigned int a, unsigned int b,
     unsigned long int modulus)
{
 unsigned int result;
 if (((a-b) % modulus) < (modulus/2))
  result = b;
 else
  result = a;

 return result;
}
