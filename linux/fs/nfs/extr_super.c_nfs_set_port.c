
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;


 int NFS_UNSPEC_PORT ;
 int rpc_set_port (struct sockaddr*,int) ;

__attribute__((used)) static void nfs_set_port(struct sockaddr *sap, int *port,
     const unsigned short default_port)
{
 if (*port == NFS_UNSPEC_PORT)
  *port = default_port;

 rpc_set_port(sap, *port);
}
