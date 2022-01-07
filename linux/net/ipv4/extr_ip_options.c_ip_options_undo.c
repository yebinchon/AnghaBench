
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iphdr {int dummy; } ;
struct ip_options {int srr; unsigned char* __data; int rr; int ts; scalar_t__ ts_needaddr; scalar_t__ ts_needtime; scalar_t__ rr_needaddr; int faddr; } ;


 unsigned char IPOPT_TS_PRESPEC ;
 int memcpy (unsigned char*,int *,int) ;
 int memmove (unsigned char*,unsigned char*,unsigned char) ;
 int memset (unsigned char*,int ,int) ;

void ip_options_undo(struct ip_options *opt)
{
 if (opt->srr) {
  unsigned char *optptr = opt->__data+opt->srr-sizeof(struct iphdr);
  memmove(optptr+7, optptr+3, optptr[1]-7);
  memcpy(optptr+3, &opt->faddr, 4);
 }
 if (opt->rr_needaddr) {
  unsigned char *optptr = opt->__data+opt->rr-sizeof(struct iphdr);
  optptr[2] -= 4;
  memset(&optptr[optptr[2]-1], 0, 4);
 }
 if (opt->ts) {
  unsigned char *optptr = opt->__data+opt->ts-sizeof(struct iphdr);
  if (opt->ts_needtime) {
   optptr[2] -= 4;
   memset(&optptr[optptr[2]-1], 0, 4);
   if ((optptr[3]&0xF) == IPOPT_TS_PRESPEC)
    optptr[2] -= 4;
  }
  if (opt->ts_needaddr) {
   optptr[2] -= 4;
   memset(&optptr[optptr[2]-1], 0, 4);
  }
 }
}
