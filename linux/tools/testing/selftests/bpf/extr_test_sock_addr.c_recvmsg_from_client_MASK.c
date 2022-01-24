#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct sockaddr_storage {int dummy; } ;
struct msghdr {char* iov_base; int iov_len; int msg_namelen; int msg_iovlen; struct msghdr* msg_iov; struct sockaddr_storage* msg_name; } ;
struct iovec {char* iov_base; int iov_len; int msg_namelen; int msg_iovlen; struct iovec* msg_iov; struct sockaddr_storage* msg_name; } ;
typedef  int /*<<< orphan*/  iov ;
typedef  int /*<<< orphan*/  hdr ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct msghdr*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int,struct msghdr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 

__attribute__((used)) static int FUNC6(int sockfd, struct sockaddr_storage *src_addr)
{
	struct timeval tv;
	struct msghdr hdr;
	struct iovec iov;
	char data[64];
	fd_set rfds;

	FUNC2(&rfds);
	FUNC1(sockfd, &rfds);

	tv.tv_sec = 2;
	tv.tv_usec = 0;

	if (FUNC5(sockfd + 1, &rfds, NULL, NULL, &tv) <= 0 ||
	    !FUNC0(sockfd, &rfds))
		return -1;

	FUNC3(&iov, 0, sizeof(iov));
	iov.iov_base = data;
	iov.iov_len = sizeof(data);

	FUNC3(&hdr, 0, sizeof(hdr));
	hdr.msg_name = src_addr;
	hdr.msg_namelen = sizeof(struct sockaddr_storage);
	hdr.msg_iov = &iov;
	hdr.msg_iovlen = 1;

	return FUNC4(sockfd, &hdr, 0);
}