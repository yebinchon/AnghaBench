
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rds_header {int * h_exthdr; int h_sequence; void* h_dport; void* h_sport; scalar_t__ h_flags; } ;
typedef void* __be16 ;


 int RDS_EXTHDR_NONE ;
 int cpu_to_be64 (int ) ;

void rds_message_populate_header(struct rds_header *hdr, __be16 sport,
     __be16 dport, u64 seq)
{
 hdr->h_flags = 0;
 hdr->h_sport = sport;
 hdr->h_dport = dport;
 hdr->h_sequence = cpu_to_be64(seq);
 hdr->h_exthdr[0] = RDS_EXTHDR_NONE;
}
