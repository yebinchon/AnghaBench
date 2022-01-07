
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_lookup {int lo_len; int lo_name; } ;
struct nfsd4_compoundargs {int dummy; } ;
typedef int __be32 ;


 int DECODE_HEAD ;
 int DECODE_TAIL ;
 int READ_BUF (int) ;
 int SAVEMEM (int ,int) ;
 int be32_to_cpup (int ) ;
 int check_filename (int ,int) ;
 int p ;
 int status ;

__attribute__((used)) static __be32
nfsd4_decode_lookup(struct nfsd4_compoundargs *argp, struct nfsd4_lookup *lookup)
{
 DECODE_HEAD;

 READ_BUF(4);
 lookup->lo_len = be32_to_cpup(p++);
 READ_BUF(lookup->lo_len);
 SAVEMEM(lookup->lo_name, lookup->lo_len);
 if ((status = check_filename(lookup->lo_name, lookup->lo_len)))
  return status;

 DECODE_TAIL;
}
