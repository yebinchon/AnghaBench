
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct nfsd4_layout_seg {scalar_t__ offset; scalar_t__ length; } ;


 scalar_t__ NFS4_MAX_UINT64 ;

__attribute__((used)) static inline u64
layout_end(struct nfsd4_layout_seg *seg)
{
 u64 end = seg->offset + seg->length;
 return end >= seg->offset ? end : NFS4_MAX_UINT64;
}
