
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_info {scalar_t__ tcpi_unacked; } ;
typedef int socklen_t ;
typedef int info ;


 int SOL_TCP ;
 int TCP_INFO ;
 int getsockopt (int,int ,int ,struct tcp_info*,int*) ;
 int log_err (char*) ;
 int usleep (int) ;

__attribute__((used)) static int wait_for_ack(int fd, int retries)
{
 struct tcp_info info;
 socklen_t optlen;
 int i, err;

 for (i = 0; i < retries; i++) {
  optlen = sizeof(info);
  err = getsockopt(fd, SOL_TCP, TCP_INFO, &info, &optlen);
  if (err < 0) {
   log_err("Failed to lookup TCP stats");
   return err;
  }

  if (info.tcpi_unacked == 0)
   return 0;

  usleep(10);
 }

 log_err("Did not receive ACK");
 return -1;
}
