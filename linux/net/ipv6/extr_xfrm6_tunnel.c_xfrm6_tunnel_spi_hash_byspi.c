
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 unsigned int XFRM6_TUNNEL_SPI_BYSPI_HSIZE ;

__attribute__((used)) static inline unsigned int xfrm6_tunnel_spi_hash_byspi(u32 spi)
{
 return spi % XFRM6_TUNNEL_SPI_BYSPI_HSIZE;
}
