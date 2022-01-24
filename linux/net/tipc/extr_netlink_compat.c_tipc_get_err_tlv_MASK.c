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
 int /*<<< orphan*/  TIPC_TLV_ERROR_STRING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,char*,int) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC4(char *str)
{
	int str_len = FUNC1(str) + 1;
	struct sk_buff *buf;

	buf = FUNC3(FUNC0(str_len));
	if (buf)
		FUNC2(buf, TIPC_TLV_ERROR_STRING, str, str_len);

	return buf;
}