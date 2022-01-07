
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvec {unsigned int iov_len; int * iov_base; } ;
struct ceph_connection {int sock; } ;


 int BUG_ON (int) ;
 int ceph_tcp_recvmsg (int ,char*,int) ;
 int crc32c (int ,int *,unsigned int) ;

__attribute__((used)) static int read_partial_message_section(struct ceph_connection *con,
     struct kvec *section,
     unsigned int sec_len, u32 *crc)
{
 int ret, left;

 BUG_ON(!section);

 while (section->iov_len < sec_len) {
  BUG_ON(section->iov_base == ((void*)0));
  left = sec_len - section->iov_len;
  ret = ceph_tcp_recvmsg(con->sock, (char *)section->iov_base +
           section->iov_len, left);
  if (ret <= 0)
   return ret;
  section->iov_len += ret;
 }
 if (section->iov_len == sec_len)
  *crc = crc32c(0, section->iov_base, section->iov_len);

 return 1;
}
