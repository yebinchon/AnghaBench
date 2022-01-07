
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int WM8753_RESET ;

__attribute__((used)) static bool wm8753_volatile(struct device *dev, unsigned int reg)
{
 return reg == WM8753_RESET;
}
