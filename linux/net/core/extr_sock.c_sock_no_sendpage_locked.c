
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct page {int dummy; } ;
struct msghdr {int msg_flags; } ;
struct kvec {char* iov_base; size_t iov_len; } ;
typedef int ssize_t ;


 int kernel_sendmsg_locked (struct sock*,struct msghdr*,struct kvec*,int,size_t) ;
 char* kmap (struct page*) ;
 int kunmap (struct page*) ;

ssize_t sock_no_sendpage_locked(struct sock *sk, struct page *page,
    int offset, size_t size, int flags)
{
 ssize_t res;
 struct msghdr msg = {.msg_flags = flags};
 struct kvec iov;
 char *kaddr = kmap(page);

 iov.iov_base = kaddr + offset;
 iov.iov_len = size;
 res = kernel_sendmsg_locked(sk, &msg, &iov, 1, size);
 kunmap(page);
 return res;
}
