
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct page {int dummy; } ;
struct msghdr {int msg_flags; int msg_iter; } ;
struct bio_vec {int bv_offset; size_t bv_len; struct page* bv_page; } ;


 int BUG_ON (int) ;
 int EAGAIN ;
 int MSG_DONTWAIT ;
 int MSG_NOSIGNAL ;
 int PAGE_SIZE ;
 int READ ;
 int iov_iter_bvec (int *,int ,struct bio_vec*,int,size_t) ;
 int sock_recvmsg (struct socket*,struct msghdr*,int) ;

__attribute__((used)) static int ceph_tcp_recvpage(struct socket *sock, struct page *page,
       int page_offset, size_t length)
{
 struct bio_vec bvec = {
  .bv_page = page,
  .bv_offset = page_offset,
  .bv_len = length
 };
 struct msghdr msg = { .msg_flags = MSG_DONTWAIT | MSG_NOSIGNAL };
 int r;

 BUG_ON(page_offset + length > PAGE_SIZE);
 iov_iter_bvec(&msg.msg_iter, READ, &bvec, 1, length);
 r = sock_recvmsg(sock, &msg, msg.msg_flags);
 if (r == -EAGAIN)
  r = 0;
 return r;
}
