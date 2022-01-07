
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int height(int n)
{
 int h = 0;
 while ((n & 1) == 0) {
  h++;
  n = n >> 1;
 }
 return h;
}
