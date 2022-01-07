
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 int __nfsd4_init_cld_pipe (struct net*) ;
 int printk (char*) ;

__attribute__((used)) static int
nfsd4_init_cld_pipe(struct net *net)
{
 int status;

 status = __nfsd4_init_cld_pipe(net);
 if (!status)
  printk("NFSD: Using old nfsdcld client tracking operations.\n");
 return status;
}
