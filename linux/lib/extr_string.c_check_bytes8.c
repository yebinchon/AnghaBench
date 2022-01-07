
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const u8 ;



__attribute__((used)) static void *check_bytes8(const u8 *start, u8 value, unsigned int bytes)
{
 while (bytes) {
  if (*start != value)
   return (void *)start;
  start++;
  bytes--;
 }
 return ((void*)0);
}
