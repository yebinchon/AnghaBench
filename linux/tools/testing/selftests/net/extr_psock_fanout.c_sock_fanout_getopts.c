
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int sockopt ;
typedef int socklen_t ;


 int PACKET_FANOUT ;
 int SOL_PACKET ;
 int exit (int) ;
 scalar_t__ getsockopt (int,int ,int ,int*,int*) ;
 int perror (char*) ;

__attribute__((used)) static void sock_fanout_getopts(int fd, uint16_t *typeflags, uint16_t *group_id)
{
 int sockopt;
 socklen_t sockopt_len = sizeof(sockopt);

 if (getsockopt(fd, SOL_PACKET, PACKET_FANOUT,
         &sockopt, &sockopt_len)) {
  perror("failed to getsockopt");
  exit(1);
 }
 *typeflags = sockopt >> 16;
 *group_id = sockopt & 0xfffff;
}
