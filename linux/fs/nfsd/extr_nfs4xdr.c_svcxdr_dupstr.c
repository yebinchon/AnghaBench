
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfsd4_compoundargs {int dummy; } ;


 int memcpy (char*,void*,int) ;
 char* svcxdr_tmpalloc (struct nfsd4_compoundargs*,int) ;

__attribute__((used)) static char *
svcxdr_dupstr(struct nfsd4_compoundargs *argp, void *buf, u32 len)
{
 char *p = svcxdr_tmpalloc(argp, len + 1);

 if (!p)
  return ((void*)0);
 memcpy(p, buf, len);
 p[len] = '\0';
 return p;
}
