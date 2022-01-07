
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct sockaddr_storage {int dummy; } ;
struct msghdr {char* iov_base; int iov_len; int msg_namelen; int msg_iovlen; struct msghdr* msg_iov; struct sockaddr_storage* msg_name; } ;
struct iovec {char* iov_base; int iov_len; int msg_namelen; int msg_iovlen; struct iovec* msg_iov; struct sockaddr_storage* msg_name; } ;
typedef int iov ;
typedef int hdr ;
typedef int fd_set ;
typedef int data ;


 int FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int memset (struct msghdr*,int ,int) ;
 int recvmsg (int,struct msghdr*,int ) ;
 scalar_t__ select (int,int *,int *,int *,struct timeval*) ;

__attribute__((used)) static int recvmsg_from_client(int sockfd, struct sockaddr_storage *src_addr)
{
 struct timeval tv;
 struct msghdr hdr;
 struct iovec iov;
 char data[64];
 fd_set rfds;

 FD_ZERO(&rfds);
 FD_SET(sockfd, &rfds);

 tv.tv_sec = 2;
 tv.tv_usec = 0;

 if (select(sockfd + 1, &rfds, ((void*)0), ((void*)0), &tv) <= 0 ||
     !FD_ISSET(sockfd, &rfds))
  return -1;

 memset(&iov, 0, sizeof(iov));
 iov.iov_base = data;
 iov.iov_len = sizeof(data);

 memset(&hdr, 0, sizeof(hdr));
 hdr.msg_name = src_addr;
 hdr.msg_namelen = sizeof(struct sockaddr_storage);
 hdr.msg_iov = &iov;
 hdr.msg_iovlen = 1;

 return recvmsg(sockfd, &hdr, 0);
}
