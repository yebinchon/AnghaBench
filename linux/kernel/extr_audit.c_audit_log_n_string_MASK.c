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
struct audit_buffer {struct sk_buff* skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct audit_buffer*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,size_t) ; 
 unsigned char* FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct sk_buff*) ; 

void FUNC6(struct audit_buffer *ab, const char *string,
			size_t slen)
{
	int avail, new_len;
	unsigned char *ptr;
	struct sk_buff *skb;

	if (!ab)
		return;

	FUNC0(!ab->skb);
	skb = ab->skb;
	avail = FUNC5(skb);
	new_len = slen + 3;	/* enclosing quotes + null terminator */
	if (new_len > avail) {
		avail = FUNC1(ab, new_len);
		if (!avail)
			return;
	}
	ptr = FUNC4(skb);
	*ptr++ = '"';
	FUNC2(ptr, string, slen);
	ptr += slen;
	*ptr++ = '"';
	*ptr = 0;
	FUNC3(skb, slen + 2);	/* don't include null terminator */
}