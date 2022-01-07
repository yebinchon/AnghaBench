
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_stream {int bus_option; } ;
struct fsi_priv {int dummy; } ;


 int BUSOP_SET (int,int ) ;
 int PACKAGE_24BITBUS_BACK ;

__attribute__((used)) static int fsi_pio_pop_init(struct fsi_priv *fsi, struct fsi_stream *io)
{



 io->bus_option = BUSOP_SET(24, PACKAGE_24BITBUS_BACK) |
    BUSOP_SET(16, PACKAGE_24BITBUS_BACK);
 return 0;
}
