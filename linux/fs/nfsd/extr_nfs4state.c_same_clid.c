
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cl_boot; scalar_t__ cl_id; } ;
typedef TYPE_1__ clientid_t ;



__attribute__((used)) static int
same_clid(clientid_t *cl1, clientid_t *cl2)
{
 return (cl1->cl_boot == cl2->cl_boot) && (cl1->cl_id == cl2->cl_id);
}
