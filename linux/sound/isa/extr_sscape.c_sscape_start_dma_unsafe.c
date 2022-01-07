
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum GA_REG { ____Placeholder_GA_REG } GA_REG ;


 int sscape_read_unsafe (unsigned int,int) ;
 int sscape_write_unsafe (unsigned int,int,int) ;

__attribute__((used)) static void sscape_start_dma_unsafe(unsigned io_base, enum GA_REG reg)
{
 sscape_write_unsafe(io_base, reg,
       sscape_read_unsafe(io_base, reg) | 0x01);
 sscape_write_unsafe(io_base, reg,
       sscape_read_unsafe(io_base, reg) & 0xfe);
}
