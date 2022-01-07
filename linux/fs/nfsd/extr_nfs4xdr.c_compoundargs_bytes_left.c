
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_compoundargs {unsigned int pagelen; scalar_t__ p; scalar_t__ end; } ;



__attribute__((used)) static unsigned int compoundargs_bytes_left(struct nfsd4_compoundargs *argp)
{
 unsigned int this = (char *)argp->end - (char *)argp->p;

 return this + argp->pagelen;
}
