
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
struct nfs4_client {TYPE_1__ cl_verifier; } ;
struct TYPE_5__ {int data; } ;
typedef TYPE_2__ nfs4_verifier ;


 int memcpy (int ,int ,int) ;

__attribute__((used)) static void copy_verf(struct nfs4_client *target, nfs4_verifier *source)
{
 memcpy(target->cl_verifier.data, source->data,
   sizeof(target->cl_verifier.data));
}
