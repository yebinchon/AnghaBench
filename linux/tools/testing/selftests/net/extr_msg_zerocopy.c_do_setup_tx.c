
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PF_PACKET ;
 int PF_RDS ;
 int SOL_SOCKET ;
 int SO_SNDBUF ;
 int SO_ZEROCOPY ;
 scalar_t__ bind (int,void*,int ) ;
 int cfg_alen ;
 int cfg_dst_addr ;
 int cfg_src_addr ;
 scalar_t__ cfg_zerocopy ;
 scalar_t__ connect (int,void*,int ) ;
 int do_setsockopt (int,int ,int ,int) ;
 int errno ;
 int error (int,int ,char*) ;
 int socket (int,int,int) ;

__attribute__((used)) static int do_setup_tx(int domain, int type, int protocol)
{
 int fd;

 fd = socket(domain, type, protocol);
 if (fd == -1)
  error(1, errno, "socket t");

 do_setsockopt(fd, SOL_SOCKET, SO_SNDBUF, 1 << 21);
 if (cfg_zerocopy)
  do_setsockopt(fd, SOL_SOCKET, SO_ZEROCOPY, 1);

 if (domain != PF_PACKET && domain != PF_RDS)
  if (connect(fd, (void *) &cfg_dst_addr, cfg_alen))
   error(1, errno, "connect");

 if (domain == PF_RDS) {
  if (bind(fd, (void *) &cfg_src_addr, cfg_alen))
   error(1, errno, "bind");
 }

 return fd;
}
