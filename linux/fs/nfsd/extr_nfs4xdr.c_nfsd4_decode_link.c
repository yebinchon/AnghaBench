
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_link {int li_namelen; int li_name; } ;
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
nfsd4_decode_link(struct nfsd4_compoundargs *argp, struct nfsd4_link *link)
{
 DECODE_HEAD;

 READ_BUF(4);
 link->li_namelen = be32_to_cpup(p++);
 READ_BUF(link->li_namelen);
 SAVEMEM(link->li_name, link->li_namelen);
 if ((status = check_filename(link->li_name, link->li_namelen)))
  return status;

 DECODE_TAIL;
}
