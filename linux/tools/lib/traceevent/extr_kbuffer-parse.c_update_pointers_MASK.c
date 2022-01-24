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
struct kbuffer {int curr; unsigned long long timestamp; int /*<<< orphan*/  index; scalar_t__ next; void* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kbuffer*,void*) ; 
 unsigned int FUNC1 (struct kbuffer*,void*,void**,unsigned long long*,int*) ; 

__attribute__((used)) static unsigned int FUNC2(struct kbuffer *kbuf)
{
	unsigned long long delta;
	unsigned int type_len;
	int length;
	void *ptr = kbuf->data + kbuf->curr;

	type_len = FUNC1(kbuf, ptr, &ptr, &delta, &length);

	kbuf->timestamp += delta;
	kbuf->index = FUNC0(kbuf, ptr);
	kbuf->next = kbuf->index + length;

	return type_len;
}