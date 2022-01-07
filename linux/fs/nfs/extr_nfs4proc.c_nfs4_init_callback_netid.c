
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {int cl_ipaddr; } ;


 unsigned int scnprintf (char*,size_t,char*) ;
 int * strchr (int ,char) ;

__attribute__((used)) static unsigned int
nfs4_init_callback_netid(const struct nfs_client *clp, char *buf, size_t len)
{
 if (strchr(clp->cl_ipaddr, ':') != ((void*)0))
  return scnprintf(buf, len, "tcp6");
 else
  return scnprintf(buf, len, "tcp");
}
