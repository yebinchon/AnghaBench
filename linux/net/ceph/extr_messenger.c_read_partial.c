
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_connection {int in_base_pos; int sock; } ;


 int ceph_tcp_recvmsg (int ,void*,int) ;

__attribute__((used)) static int read_partial(struct ceph_connection *con,
   int end, int size, void *object)
{
 while (con->in_base_pos < end) {
  int left = end - con->in_base_pos;
  int have = size - left;
  int ret = ceph_tcp_recvmsg(con->sock, object + have, left);
  if (ret <= 0)
   return ret;
  con->in_base_pos += ret;
 }
 return 1;
}
