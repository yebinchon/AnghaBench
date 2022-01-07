
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int height (int) ;

__attribute__((used)) static int right(int x)
{
 int h = height(x);
 return x + (1 << (h-1));
}
