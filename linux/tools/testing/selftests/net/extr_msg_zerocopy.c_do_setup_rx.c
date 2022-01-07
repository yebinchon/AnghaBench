
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPPROTO_RAW ;
 int PF_PACKET ;
 int SOCK_RAW ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_RCVBUF ;
 int SO_RCVLOWAT ;
 int SO_REUSEPORT ;
 scalar_t__ bind (int,void*,int ) ;
 int cfg_alen ;
 int cfg_dst_addr ;
 int do_accept (int) ;
 int do_setsockopt (int,int ,int ,int) ;
 int errno ;
 int error (int,int ,char*) ;
 scalar_t__ listen (int,int) ;
 int socket (int,int,int) ;

__attribute__((used)) static int do_setup_rx(int domain, int type, int protocol)
{
 int fd;




 if (domain == PF_PACKET)
  error(1, 0, "Use PF_INET/SOCK_RAW to read");

 if (type == SOCK_RAW && protocol == IPPROTO_RAW)
  error(1, 0, "IPPROTO_RAW: not supported on Rx");

 fd = socket(domain, type, protocol);
 if (fd == -1)
  error(1, errno, "socket r");

 do_setsockopt(fd, SOL_SOCKET, SO_RCVBUF, 1 << 21);
 do_setsockopt(fd, SOL_SOCKET, SO_RCVLOWAT, 1 << 16);
 do_setsockopt(fd, SOL_SOCKET, SO_REUSEPORT, 1);

 if (bind(fd, (void *) &cfg_dst_addr, cfg_alen))
  error(1, errno, "bind");

 if (type == SOCK_STREAM) {
  if (listen(fd, 1))
   error(1, errno, "listen");
  fd = do_accept(fd);
 }

 return fd;
}
