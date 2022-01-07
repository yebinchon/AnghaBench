
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct timespec64 {scalar_t__ tv_nsec; int tv_sec; } ;
struct nfsd4_compoundargs {int dummy; } ;
typedef int __be32 ;


 int DECODE_HEAD ;
 int DECODE_TAIL ;
 int READ_BUF (int) ;
 scalar_t__ be32_to_cpup (int ) ;
 int nfserr_inval ;
 int p ;
 int xdr_decode_hyper (int ,int *) ;

__attribute__((used)) static __be32
nfsd4_decode_time(struct nfsd4_compoundargs *argp, struct timespec64 *tv)
{
 DECODE_HEAD;

 READ_BUF(12);
 p = xdr_decode_hyper(p, &tv->tv_sec);
 tv->tv_nsec = be32_to_cpup(p++);
 if (tv->tv_nsec >= (u32)1000000000)
  return nfserr_inval;

 DECODE_TAIL;
}
