
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_debug (char*,...) ;

__attribute__((used)) static void dump_buf(unsigned char *buf, size_t len)
{
 size_t i;

 for (i = 0; i < len; i++) {
  pr_debug("0x%02x ", buf[i]);
  if (i % 16 == 15)
   pr_debug("\n");
 }
 pr_debug("\n");
}
