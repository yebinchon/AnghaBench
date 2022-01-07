
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int rl_printf (char*,...) ;

__attribute__((used)) static void hex_dump(const uint8_t *buf, size_t len)
{
 int i;

 rl_printf("%3u: ", 0);
 for (i = 0; i < len; i++) {
  if (i && !(i % 16))
   rl_printf("\n%3u: ", i);
  rl_printf("%02x ", buf[i]);
 }
 rl_printf("\n");
}
