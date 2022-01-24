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
struct socket {int dummy; } ;
struct page {int dummy; } ;
struct msghdr {int msg_flags; int /*<<< orphan*/  msg_iter; } ;
struct bio_vec {int bv_offset; size_t bv_len; struct page* bv_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int MSG_DONTWAIT ; 
 int MSG_NOSIGNAL ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bio_vec*,int,size_t) ; 
 int FUNC2 (struct socket*,struct msghdr*,int) ; 

__attribute__((used)) static int FUNC3(struct socket *sock, struct page *page,
		     int page_offset, size_t length)
{
	struct bio_vec bvec = {
		.bv_page = page,
		.bv_offset = page_offset,
		.bv_len = length
	};
	struct msghdr msg = { .msg_flags = MSG_DONTWAIT | MSG_NOSIGNAL };
	int r;

	FUNC0(page_offset + length > PAGE_SIZE);
	FUNC1(&msg.msg_iter, READ, &bvec, 1, length);
	r = FUNC2(sock, &msg, msg.msg_flags);
	if (r == -EAGAIN)
		r = 0;
	return r;
}