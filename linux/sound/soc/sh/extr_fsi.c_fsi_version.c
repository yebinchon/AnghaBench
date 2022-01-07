
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsi_master {TYPE_1__* core; } ;
struct TYPE_2__ {int ver; } ;



__attribute__((used)) static int fsi_version(struct fsi_master *master)
{
 return master->core->ver;
}
