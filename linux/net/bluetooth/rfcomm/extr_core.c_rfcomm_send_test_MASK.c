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
typedef  unsigned char u8 ;
struct socket {int dummy; } ;
struct rfcomm_session {int /*<<< orphan*/  initiator; struct socket* sock; } ;
struct msghdr {int dummy; } ;
struct kvec {unsigned char* iov_base; int iov_len; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_session*,int) ; 
 int EINVAL ; 
 int RFCOMM_TEST ; 
 int /*<<< orphan*/  RFCOMM_UIH ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned char FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned char FUNC3 (unsigned char*) ; 
 int FUNC4 (struct socket*,struct msghdr*,struct kvec*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct msghdr*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct rfcomm_session *s, int cr, u8 *pattern, int len)
{
	struct socket *sock = s->sock;
	struct kvec iv[3];
	struct msghdr msg;
	unsigned char hdr[5], crc[1];

	if (len > 125)
		return -EINVAL;

	FUNC0("%p cr %d", s, cr);

	hdr[0] = FUNC1(s->initiator, 0);
	hdr[1] = FUNC2(RFCOMM_UIH, 0);
	hdr[2] = 0x01 | ((len + 2) << 1);
	hdr[3] = 0x01 | ((cr & 0x01) << 1) | (RFCOMM_TEST << 2);
	hdr[4] = 0x01 | (len << 1);

	crc[0] = FUNC3(hdr);

	iv[0].iov_base = hdr;
	iv[0].iov_len  = 5;
	iv[1].iov_base = pattern;
	iv[1].iov_len  = len;
	iv[2].iov_base = crc;
	iv[2].iov_len  = 1;

	FUNC5(&msg, 0, sizeof(msg));

	return FUNC4(sock, &msg, iv, 3, 6 + len);
}