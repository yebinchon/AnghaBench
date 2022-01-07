
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmac_keywest {int dummy; } ;


 int DBG (char*) ;

 int send_init_client (struct pmac_keywest*,unsigned int*) ;

__attribute__((used)) static int tumbler_init_client(struct pmac_keywest *i2c)
{
 static unsigned int regs[] = {

  128, (1<<6)|(2<<4)|(2<<2)|0,
  0,
 };
 DBG("(I) tumbler init client\n");
 return send_init_client(i2c, regs);
}
