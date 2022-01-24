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
struct sk_buff {int dummy; } ;

/* Variables and functions */
 scalar_t__ GENL_HDRLEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ TIPC_GENL_HDRLEN ; 
 int FUNC0 (int) ; 
 struct sk_buff* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 

__attribute__((used)) static struct sk_buff *FUNC4(int size)
{
	int hdr_len;
	struct sk_buff *buf;

	size = FUNC0(size);
	hdr_len = FUNC2(GENL_HDRLEN + TIPC_GENL_HDRLEN);

	buf = FUNC1(hdr_len + size, GFP_KERNEL);
	if (!buf)
		return NULL;

	FUNC3(buf, hdr_len);

	return buf;
}