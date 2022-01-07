
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct pnfs_layout_segment {int dummy; } ;
struct nfs4_ff_layout_mirror {TYPE_1__* mirror_ds; } ;
struct nfs4_deviceid_node {int dummy; } ;
struct TYPE_2__ {struct nfs4_deviceid_node id_node; } ;


 struct nfs4_ff_layout_mirror* FF_LAYOUT_COMP (struct pnfs_layout_segment*,scalar_t__) ;
 scalar_t__ FF_LAYOUT_MIRROR_COUNT (struct pnfs_layout_segment*) ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int nfs4_test_deviceid_unavailable (struct nfs4_deviceid_node*) ;

__attribute__((used)) static bool ff_read_layout_has_available_ds(struct pnfs_layout_segment *lseg)
{
 struct nfs4_ff_layout_mirror *mirror;
 struct nfs4_deviceid_node *devid;
 u32 idx;

 for (idx = 0; idx < FF_LAYOUT_MIRROR_COUNT(lseg); idx++) {
  mirror = FF_LAYOUT_COMP(lseg, idx);
  if (mirror) {
   if (!mirror->mirror_ds)
    return 1;
   if (IS_ERR(mirror->mirror_ds))
    continue;
   devid = &mirror->mirror_ds->id_node;
   if (!nfs4_test_deviceid_unavailable(devid))
    return 1;
  }
 }

 return 0;
}
