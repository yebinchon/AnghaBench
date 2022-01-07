
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iphdr {int dummy; } ;
typedef int buf ;


 scalar_t__ EAGAIN ;
 int MSG_DONTWAIT ;
 int MSG_TRUNC ;
 scalar_t__ PF_INET ;
 int SOCK_RAW ;
 int bytes ;
 scalar_t__ cfg_family ;
 int cfg_payload_len ;
 scalar_t__ errno ;
 int error (int,scalar_t__,char*,...) ;
 scalar_t__ memcmp (char*,int ,int) ;
 int packets ;
 int payload ;
 int recv (int,char*,int,int) ;

__attribute__((used)) static void do_flush_datagram(int fd, int type)
{
 int ret, off = 0;
 char buf[64];


 ret = recv(fd, buf, sizeof(buf), MSG_DONTWAIT | MSG_TRUNC);
 if (ret == -1 && errno == EAGAIN)
  return;


 if (cfg_family == PF_INET && type == SOCK_RAW) {
  off += sizeof(struct iphdr);
  ret -= sizeof(struct iphdr);
 }

 if (ret == -1)
  error(1, errno, "recv");
 if (ret != cfg_payload_len)
  error(1, 0, "recv: ret=%u != %u", ret, cfg_payload_len);
 if (ret > sizeof(buf) - off)
  ret = sizeof(buf) - off;
 if (memcmp(buf + off, payload, ret))
  error(1, 0, "recv: data mismatch");

 packets++;
 bytes += cfg_payload_len;
}
