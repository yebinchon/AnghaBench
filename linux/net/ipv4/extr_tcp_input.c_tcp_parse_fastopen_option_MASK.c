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
struct tcp_fastopen_cookie {int len; int exp; int /*<<< orphan*/  val; } ;

/* Variables and functions */
 int TCP_FASTOPEN_COOKIE_MAX ; 
 int TCP_FASTOPEN_COOKIE_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char const*,int) ; 

__attribute__((used)) static void FUNC1(int len, const unsigned char *cookie,
				      bool syn, struct tcp_fastopen_cookie *foc,
				      bool exp_opt)
{
	/* Valid only in SYN or SYN-ACK with an even length.  */
	if (!foc || !syn || len < 0 || (len & 1))
		return;

	if (len >= TCP_FASTOPEN_COOKIE_MIN &&
	    len <= TCP_FASTOPEN_COOKIE_MAX)
		FUNC0(foc->val, cookie, len);
	else if (len != 0)
		len = -1;
	foc->len = len;
	foc->exp = exp_opt;
}