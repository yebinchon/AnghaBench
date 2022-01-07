
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int POLLIN ;
 int SOCK_STREAM ;
 int bytes ;
 scalar_t__ cfg_runtime_ms ;
 scalar_t__ close (int) ;
 int do_flush_datagram (int,int) ;
 int do_flush_tcp (int) ;
 int do_poll (int,int ) ;
 int do_setup_rx (int,int,int) ;
 int errno ;
 int error (int,int ,char*) ;
 int fprintf (int ,char*,int ,int) ;
 scalar_t__ gettimeofday_ms () ;
 int packets ;
 int stderr ;

__attribute__((used)) static void do_rx(int domain, int type, int protocol)
{
 const int cfg_receiver_wait_ms = 400;
 uint64_t tstop;
 int fd;

 fd = do_setup_rx(domain, type, protocol);

 tstop = gettimeofday_ms() + cfg_runtime_ms + cfg_receiver_wait_ms;
 do {
  if (type == SOCK_STREAM)
   do_flush_tcp(fd);
  else
   do_flush_datagram(fd, type);

  do_poll(fd, POLLIN);

 } while (gettimeofday_ms() < tstop);

 if (close(fd))
  error(1, errno, "close");

 fprintf(stderr, "rx=%lu (%lu MB)\n", packets, bytes >> 20);
}
