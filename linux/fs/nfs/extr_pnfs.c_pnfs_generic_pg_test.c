
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct nfs_pageio_descriptor {TYPE_2__* pg_lseg; } ;
struct nfs_page {int dummy; } ;
struct TYPE_3__ {int length; int offset; } ;
struct TYPE_4__ {TYPE_1__ pls_range; } ;


 unsigned int nfs_generic_pg_test (struct nfs_pageio_descriptor*,struct nfs_page*,struct nfs_page*) ;
 scalar_t__ pnfs_end_offset (int ,int ) ;
 scalar_t__ req_offset (struct nfs_page*) ;

size_t
pnfs_generic_pg_test(struct nfs_pageio_descriptor *pgio,
       struct nfs_page *prev, struct nfs_page *req)
{
 unsigned int size;
 u64 seg_end, req_start, seg_left;

 size = nfs_generic_pg_test(pgio, prev, req);
 if (!size)
  return 0;
 if (pgio->pg_lseg) {
  seg_end = pnfs_end_offset(pgio->pg_lseg->pls_range.offset,
         pgio->pg_lseg->pls_range.length);
  req_start = req_offset(req);


  if (req_start >= seg_end)
   return 0;



  seg_left = seg_end - req_start;
  if (seg_left < size)
   size = (unsigned int)seg_left;
 }

 return size;
}
