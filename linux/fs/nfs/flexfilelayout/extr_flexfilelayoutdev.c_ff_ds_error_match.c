
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * data; } ;
struct nfs4_ff_layout_ds_err {scalar_t__ opnum; scalar_t__ status; scalar_t__ offset; int length; int deviceid; TYPE_1__ stateid; } ;


 int memcmp (int *,int *,int) ;
 scalar_t__ pnfs_end_offset (scalar_t__,int ) ;

__attribute__((used)) static int
ff_ds_error_match(const struct nfs4_ff_layout_ds_err *e1,
  const struct nfs4_ff_layout_ds_err *e2)
{
 int ret;

 if (e1->opnum != e2->opnum)
  return e1->opnum < e2->opnum ? -1 : 1;
 if (e1->status != e2->status)
  return e1->status < e2->status ? -1 : 1;
 ret = memcmp(e1->stateid.data, e2->stateid.data,
   sizeof(e1->stateid.data));
 if (ret != 0)
  return ret;
 ret = memcmp(&e1->deviceid, &e2->deviceid, sizeof(e1->deviceid));
 if (ret != 0)
  return ret;
 if (pnfs_end_offset(e1->offset, e1->length) < e2->offset)
  return -1;
 if (e1->offset > pnfs_end_offset(e2->offset, e2->length))
  return 1;

 return 0;
}
