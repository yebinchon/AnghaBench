
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__ nfs4_verifier ;


 scalar_t__ memcmp (int ,int ,int) ;

__attribute__((used)) static int
same_verf(nfs4_verifier *v1, nfs4_verifier *v2)
{
 return 0 == memcmp(v1->data, v2->data, sizeof(v1->data));
}
