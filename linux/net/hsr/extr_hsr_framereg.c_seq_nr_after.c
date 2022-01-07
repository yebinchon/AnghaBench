
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef scalar_t__ s16 ;



__attribute__((used)) static bool seq_nr_after(u16 a, u16 b)
{



 if ((int)b - a == 32768)
  return 0;

 return (((s16)(b - a)) < 0);
}
