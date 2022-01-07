
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long rate; } ;
struct fsi_priv {TYPE_1__ clock; } ;



__attribute__((used)) static void fsi_clk_valid(struct fsi_priv *fsi, unsigned long rate)
{
 fsi->clock.rate = rate;
}
