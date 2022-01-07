
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jz4740_i2s {scalar_t__ base; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void jz4740_i2s_write(const struct jz4740_i2s *i2s,
 unsigned int reg, uint32_t value)
{
 writel(value, i2s->base + reg);
}
