
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum als4k_iobase_t { ____Placeholder_als4k_iobase_t } als4k_iobase_t ;


 int outl (int ,int) ;

__attribute__((used)) static inline void snd_als4k_iobase_writel(unsigned long iobase,
      enum als4k_iobase_t reg,
      u32 val)
{
 outl(val, iobase + reg);
}
