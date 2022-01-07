
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ver ;


 int PACKET_VERSION ;
 int PF_PACKET ;
 int SOCK_RAW ;
 int SOL_PACKET ;
 int exit (int) ;
 int perror (char*) ;
 int setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static int pfsocket(int ver)
{
 int ret, sock = socket(PF_PACKET, SOCK_RAW, 0);
 if (sock == -1) {
  perror("socket");
  exit(1);
 }

 ret = setsockopt(sock, SOL_PACKET, PACKET_VERSION, &ver, sizeof(ver));
 if (ret == -1) {
  perror("setsockopt");
  exit(1);
 }

 return sock;
}
