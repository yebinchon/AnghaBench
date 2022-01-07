
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_family; } ;
struct seq_file {int dummy; } ;
struct nfs_server {int mountd_protocol; int mountd_address; } ;






 char* RPCBIND_NETID_TCP ;
 char* RPCBIND_NETID_TCP6 ;
 char* RPCBIND_NETID_UDP ;
 char* RPCBIND_NETID_UDP6 ;
 int seq_printf (struct seq_file*,char*,char*) ;

__attribute__((used)) static void nfs_show_mountd_netid(struct seq_file *m, struct nfs_server *nfss,
      int showdefaults)
{
 struct sockaddr *sap = (struct sockaddr *) &nfss->mountd_address;
 char *proto = ((void*)0);

 switch (sap->sa_family) {
 case 131:
  switch (nfss->mountd_protocol) {
  case 128:
   proto = RPCBIND_NETID_UDP;
   break;
  case 129:
   proto = RPCBIND_NETID_TCP;
   break;
  }
  break;
 case 130:
  switch (nfss->mountd_protocol) {
  case 128:
   proto = RPCBIND_NETID_UDP6;
   break;
  case 129:
   proto = RPCBIND_NETID_TCP6;
   break;
  }
  break;
 }
 if (proto || showdefaults)
  seq_printf(m, ",mountproto=%s", proto ?: "auto");
}
