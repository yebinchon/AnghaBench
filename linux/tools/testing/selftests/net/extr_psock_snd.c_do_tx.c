
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int one ;


 int PACKET_QDISC_BYPASS ;
 int PACKET_VNET_HDR ;
 int PF_PACKET ;
 int SOCK_DGRAM ;
 int SOCK_RAW ;
 int SOL_PACKET ;
 int build_packet (int ) ;
 int cfg_payload_len ;
 int cfg_truncate_len ;
 scalar_t__ cfg_use_bind ;
 scalar_t__ cfg_use_dgram ;
 scalar_t__ cfg_use_qdisc_bypass ;
 scalar_t__ cfg_use_vnet ;
 scalar_t__ close (int) ;
 int do_bind (int) ;
 int do_send (int,int ,int) ;
 int errno ;
 int error (int,int ,char*) ;
 scalar_t__ setsockopt (int,int ,int ,int const*,int) ;
 int socket (int ,int ,int ) ;
 int tbuf ;

__attribute__((used)) static int do_tx(void)
{
 const int one = 1;
 int fd, len;

 fd = socket(PF_PACKET, cfg_use_dgram ? SOCK_DGRAM : SOCK_RAW, 0);
 if (fd == -1)
  error(1, errno, "socket t");

 if (cfg_use_bind)
  do_bind(fd);

 if (cfg_use_qdisc_bypass &&
     setsockopt(fd, SOL_PACKET, PACKET_QDISC_BYPASS, &one, sizeof(one)))
  error(1, errno, "setsockopt qdisc bypass");

 if (cfg_use_vnet &&
     setsockopt(fd, SOL_PACKET, PACKET_VNET_HDR, &one, sizeof(one)))
  error(1, errno, "setsockopt vnet");

 len = build_packet(cfg_payload_len);

 if (cfg_truncate_len < len)
  len = cfg_truncate_len;

 do_send(fd, tbuf, len);

 if (close(fd))
  error(1, errno, "close t");

 return len;
}
