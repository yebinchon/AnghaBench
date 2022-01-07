
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int doff; scalar_t__ fin; scalar_t__ syn; } ;
typedef size_t __u32 ;



__attribute__((used)) static inline __u32 segment_seq_plus_len(__u32 seq,
      size_t len,
      unsigned int dataoff,
      const struct tcphdr *tcph)
{


 return (seq + len - dataoff - tcph->doff*4
  + (tcph->syn ? 1 : 0) + (tcph->fin ? 1 : 0));
}
