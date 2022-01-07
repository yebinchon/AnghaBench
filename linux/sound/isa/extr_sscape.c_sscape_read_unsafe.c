
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum GA_REG { ____Placeholder_GA_REG } GA_REG ;


 int ODIE_ADDR_IO (unsigned int) ;
 int ODIE_DATA_IO (unsigned int) ;
 unsigned char inb (int ) ;
 int outb (int,int ) ;

__attribute__((used)) static inline unsigned char sscape_read_unsafe(unsigned io_base,
            enum GA_REG reg)
{
 outb(reg, ODIE_ADDR_IO(io_base));
 return inb(ODIE_DATA_IO(io_base));
}
