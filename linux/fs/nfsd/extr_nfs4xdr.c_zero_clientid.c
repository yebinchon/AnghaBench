
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cl_boot; scalar_t__ cl_id; } ;
typedef TYPE_1__ clientid_t ;



__attribute__((used)) static int zero_clientid(clientid_t *clid)
{
 return (clid->cl_boot == 0) && (clid->cl_id == 0);
}
