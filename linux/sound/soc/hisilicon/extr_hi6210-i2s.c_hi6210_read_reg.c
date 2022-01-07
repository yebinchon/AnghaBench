
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hi6210_i2s {scalar_t__ base; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 hi6210_read_reg(struct hi6210_i2s *i2s, int reg)
{
 return readl(i2s->base + reg);
}
