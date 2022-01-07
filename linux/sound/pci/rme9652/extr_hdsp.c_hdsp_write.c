
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {scalar_t__ iobase; } ;


 int writel (int,scalar_t__) ;

__attribute__((used)) static void hdsp_write(struct hdsp *hdsp, int reg, int val)
{
 writel(val, hdsp->iobase + reg);
}
