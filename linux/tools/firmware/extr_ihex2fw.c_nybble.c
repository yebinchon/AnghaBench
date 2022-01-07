
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;



__attribute__((used)) static uint8_t nybble(const uint8_t n)
{
 if (n >= '0' && n <= '9') return n - '0';
 else if (n >= 'A' && n <= 'F') return n - ('A' - 10);
 else if (n >= 'a' && n <= 'f') return n - ('a' - 10);
 return 0;
}
