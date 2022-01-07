
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static inline u16 sign_invert(u16 a)
{

 if (a == (u16)-32768)
  return 32767;
 else
  return -a;
}
