
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void decode (unsigned int msr)
{
 unsigned int multiplier;
 unsigned int mv;

 multiplier = ((msr >> 8) & 0xFF);

 mv = (((msr & 0xFF) * 16) + 700);

 printf("0x%x means multiplier %d @ %d mV\n", msr, multiplier, mv);
}
