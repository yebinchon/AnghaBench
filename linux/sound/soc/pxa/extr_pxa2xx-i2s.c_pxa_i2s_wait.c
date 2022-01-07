
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SADR ;

__attribute__((used)) static int pxa_i2s_wait(void)
{
 int i;


 for (i = 0; i < 16; i++)
  SADR;
 return 0;
}
