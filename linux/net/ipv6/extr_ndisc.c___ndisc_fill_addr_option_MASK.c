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
typedef  int u8 ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 int* FUNC3 (struct sk_buff*,int) ; 

void FUNC4(struct sk_buff *skb, int type, void *data,
			      int data_len, int pad)
{
	int space = FUNC0(data_len, pad);
	u8 *opt = FUNC3(skb, space);

	opt[0] = type;
	opt[1] = space>>3;

	FUNC2(opt + 2, 0, pad);
	opt   += pad;
	space -= pad;

	FUNC1(opt+2, data, data_len);
	data_len += 2;
	opt += data_len;
	space -= data_len;
	if (space > 0)
		FUNC2(opt, 0, space);
}