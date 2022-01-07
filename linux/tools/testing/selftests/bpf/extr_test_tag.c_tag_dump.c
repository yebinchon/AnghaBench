
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int printf (char*,...) ;

__attribute__((used)) static void tag_dump(const char *prefix, uint8_t *tag, uint32_t len)
{
 int i;

 printf("%s", prefix);
 for (i = 0; i < len; i++)
  printf("%02x", tag[i]);
 printf("\n");
}
