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
struct sk_buff {int /*<<< orphan*/  csum; } ;
typedef  int /*<<< orphan*/  __wsum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(void *dptr, char *to, int offset,
			      int len, int odd, struct sk_buff *skb)
{
	__wsum csum;

	csum = FUNC1(dptr+offset, to, len, 0);
	skb->csum = FUNC0(skb->csum, csum, odd);
	return 0;
}