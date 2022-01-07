
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_compoundargs {int pagelen; scalar_t__ p; scalar_t__ end; int * pagelist; } ;


 int PAGE_SIZE ;
 scalar_t__ XDR_QUADLEN (int) ;
 scalar_t__ page_address (int ) ;

__attribute__((used)) static void next_decode_page(struct nfsd4_compoundargs *argp)
{
 argp->p = page_address(argp->pagelist[0]);
 argp->pagelist++;
 if (argp->pagelen < PAGE_SIZE) {
  argp->end = argp->p + XDR_QUADLEN(argp->pagelen);
  argp->pagelen = 0;
 } else {
  argp->end = argp->p + (PAGE_SIZE>>2);
  argp->pagelen -= PAGE_SIZE;
 }
}
