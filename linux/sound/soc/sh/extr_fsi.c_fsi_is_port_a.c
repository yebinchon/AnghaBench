
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsi_priv {scalar_t__ base; TYPE_1__* master; } ;
struct TYPE_2__ {scalar_t__ base; } ;



__attribute__((used)) static int fsi_is_port_a(struct fsi_priv *fsi)
{
 return fsi->master->base == fsi->base;
}
