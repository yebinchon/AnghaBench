
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct nfsd4_layout_seg {scalar_t__ offset; scalar_t__ length; } ;


 scalar_t__ NFS4_MAX_UINT64 ;

__attribute__((used)) static void
layout_update_len(struct nfsd4_layout_seg *lo, u64 end)
{
 if (end == NFS4_MAX_UINT64)
  lo->length = NFS4_MAX_UINT64;
 else
  lo->length = end - lo->offset;
}
