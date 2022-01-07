
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pageio_descriptor {int pg_inode; int * pg_dreq; } ;
struct nfs_page {scalar_t__ wb_offset; scalar_t__ wb_bytes; } ;


 scalar_t__ IS_ALIGNED (scalar_t__,unsigned int) ;
 scalar_t__ i_size_read (int ) ;
 scalar_t__ req_offset (struct nfs_page*) ;

__attribute__((used)) static bool
is_aligned_req(struct nfs_pageio_descriptor *pgio,
  struct nfs_page *req, unsigned int alignment, bool is_write)
{




 if (pgio->pg_dreq == ((void*)0))
  return 1;

 if (!IS_ALIGNED(req->wb_offset, alignment))
  return 0;

 if (IS_ALIGNED(req->wb_bytes, alignment))
  return 1;

 if (is_write &&
     (req_offset(req) + req->wb_bytes == i_size_read(pgio->pg_inode))) {







  return 1;
 }

 return 0;
}
