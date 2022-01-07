
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_sequence_res {int * sr_slot; } ;


 int nfs40_sequence_free_slot (struct nfs4_sequence_res*) ;

__attribute__((used)) static void nfs4_sequence_free_slot(struct nfs4_sequence_res *res)
{
 if (res->sr_slot != ((void*)0))
  nfs40_sequence_free_slot(res);
}
