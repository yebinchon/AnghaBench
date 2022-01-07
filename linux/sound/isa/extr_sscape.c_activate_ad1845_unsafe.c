
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GA_CDCFG_REG ;
 int GA_HMCTL_REG ;
 unsigned char sscape_read_unsafe (unsigned int,int ) ;
 int sscape_write_unsafe (unsigned int,int ,int) ;

__attribute__((used)) static void activate_ad1845_unsafe(unsigned io_base)
{
 unsigned char val = sscape_read_unsafe(io_base, GA_HMCTL_REG);
 sscape_write_unsafe(io_base, GA_HMCTL_REG, (val & 0xcf) | 0x10);
 sscape_write_unsafe(io_base, GA_CDCFG_REG, 0x80);
}
