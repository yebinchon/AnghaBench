
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int UINT_MAX ;

__attribute__((used)) static inline unsigned int div32(unsigned int a, unsigned int b,
     unsigned int *r)
{
 if (b == 0) {
  *r = 0;
  return UINT_MAX;
 }
 *r = a % b;
 return a / b;
}
