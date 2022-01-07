
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int ) ;
 int int_exit (int ) ;
 int sock ;
 int sock_arp ;

__attribute__((used)) static void close_and_exit(int sig)
{
 close(sock);
 close(sock_arp);

 int_exit(0);
}
