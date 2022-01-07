
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int end; int start; } ;
union sctp_sack_variable {TYPE_1__ gab; } ;
struct sctp_sackhdr {int num_gap_ack_blocks; union sctp_sack_variable* variable; int cum_tsn_ack; } ;
typedef int __u32 ;
typedef int __u16 ;


 scalar_t__ TSN_lte (int,int) ;
 int ntohl (int ) ;
 int ntohs (int ) ;

__attribute__((used)) static int sctp_acked(struct sctp_sackhdr *sack, __u32 tsn)
{
 __u32 ctsn = ntohl(sack->cum_tsn_ack);
 union sctp_sack_variable *frags;
 __u16 tsn_offset, blocks;
 int i;

 if (TSN_lte(tsn, ctsn))
  goto pass;
 frags = sack->variable;
 blocks = ntohs(sack->num_gap_ack_blocks);
 tsn_offset = tsn - ctsn;
 for (i = 0; i < blocks; ++i) {
  if (tsn_offset >= ntohs(frags[i].gab.start) &&
      tsn_offset <= ntohs(frags[i].gab.end))
   goto pass;
 }

 return 0;
pass:
 return 1;
}
