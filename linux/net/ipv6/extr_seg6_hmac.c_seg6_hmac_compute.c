
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
struct seg6_hmac_info {int hmackeyid; } ;
struct ipv6_sr_hdr {int first_segment; char* segments; int flags; } ;
typedef char in6_addr ;
typedef char __be32 ;


 int EMSGSIZE ;
 int SEG6_HMAC_FIELD_LEN ;
 int SEG6_HMAC_MAX_DIGESTSIZE ;
 int SEG6_HMAC_RING_SIZE ;
 int __do_hmac (struct seg6_hmac_info*,char*,int,char*,int) ;
 char cpu_to_be32 (int ) ;
 int hmac_ring ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int ,int) ;
 char* this_cpu_ptr (int ) ;

int seg6_hmac_compute(struct seg6_hmac_info *hinfo, struct ipv6_sr_hdr *hdr,
        struct in6_addr *saddr, u8 *output)
{
 __be32 hmackeyid = cpu_to_be32(hinfo->hmackeyid);
 u8 tmp_out[SEG6_HMAC_MAX_DIGESTSIZE];
 int plen, i, dgsize, wrsize;
 char *ring, *off;






 plen = 16 + 1 + 1 + 4 + (hdr->first_segment + 1) * 16;


 if (plen >= SEG6_HMAC_RING_SIZE)
  return -EMSGSIZE;
 local_bh_disable();
 ring = this_cpu_ptr(hmac_ring);
 off = ring;


 memcpy(off, saddr, 16);
 off += 16;


 *off++ = hdr->first_segment;


 *off++ = hdr->flags;


 memcpy(off, &hmackeyid, 4);
 off += 4;


 for (i = 0; i < hdr->first_segment + 1; i++) {
  memcpy(off, hdr->segments + i, 16);
  off += 16;
 }

 dgsize = __do_hmac(hinfo, ring, plen, tmp_out,
      SEG6_HMAC_MAX_DIGESTSIZE);
 local_bh_enable();

 if (dgsize < 0)
  return dgsize;

 wrsize = SEG6_HMAC_FIELD_LEN;
 if (wrsize > dgsize)
  wrsize = dgsize;

 memset(output, 0, SEG6_HMAC_FIELD_LEN);
 memcpy(output, tmp_out, wrsize);

 return 0;
}
