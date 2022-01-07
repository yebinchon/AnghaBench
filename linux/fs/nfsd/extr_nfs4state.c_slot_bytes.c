
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nfsd4_slot {int dummy; } ;
struct nfsd4_channel_attrs {scalar_t__ maxresp_cached; } ;


 scalar_t__ NFSD_MIN_HDR_SEQ_SZ ;

__attribute__((used)) static inline u32 slot_bytes(struct nfsd4_channel_attrs *ca)
{
 u32 size;

 if (ca->maxresp_cached < NFSD_MIN_HDR_SEQ_SZ)
  size = 0;
 else
  size = ca->maxresp_cached - NFSD_MIN_HDR_SEQ_SZ;
 return size + sizeof(struct nfsd4_slot);
}
