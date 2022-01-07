
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_ff_layout_mirror {int stateid; } ;
typedef int nfs4_stateid ;


 int nfs4_ff_layout_ds_version (struct nfs4_ff_layout_mirror const*) ;
 int nfs4_stateid_copy (int *,int *) ;

void
nfs4_ff_layout_select_ds_stateid(const struct nfs4_ff_layout_mirror *mirror,
  nfs4_stateid *stateid)
{
 if (nfs4_ff_layout_ds_version(mirror) == 4)
  nfs4_stateid_copy(stateid, &mirror->stateid);
}
