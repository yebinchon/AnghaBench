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
struct kbuffer {int curr; int next; int size; int index; unsigned int timestamp; void* data; } ;

/* Variables and functions */
#define  OLD_RINGBUF_TYPE_PADDING 130 
#define  OLD_RINGBUF_TYPE_TIME_EXTEND 129 
#define  OLD_RINGBUF_TYPE_TIME_STAMP 128 
 unsigned long long TS_SHIFT ; 
 int FUNC0 (struct kbuffer*,void*) ; 
 unsigned int FUNC1 (struct kbuffer*,unsigned int) ; 
 void* FUNC2 (struct kbuffer*,void*) ; 
 unsigned int FUNC3 (struct kbuffer*,unsigned int) ; 
 unsigned int FUNC4 (struct kbuffer*,unsigned int) ; 

__attribute__((used)) static unsigned int FUNC5(struct kbuffer *kbuf)
{
	unsigned long long extend;
	unsigned int type_len_ts;
	unsigned int type;
	unsigned int len;
	unsigned int delta;
	unsigned int length;
	void *ptr = kbuf->data + kbuf->curr;

	type_len_ts = FUNC2(kbuf, ptr);
	ptr += 4;

	type = FUNC4(kbuf, type_len_ts);
	len = FUNC1(kbuf, type_len_ts);
	delta = FUNC3(kbuf, type_len_ts);

	switch (type) {
	case OLD_RINGBUF_TYPE_PADDING:
		kbuf->next = kbuf->size;
		return 0;

	case OLD_RINGBUF_TYPE_TIME_EXTEND:
		extend = FUNC2(kbuf, ptr);
		extend <<= TS_SHIFT;
		extend += delta;
		delta = extend;
		ptr += 4;
		length = 0;
		break;

	case OLD_RINGBUF_TYPE_TIME_STAMP:
		/* should never happen! */
		kbuf->curr = kbuf->size;
		kbuf->next = kbuf->size;
		kbuf->index = kbuf->size;
		return -1;
	default:
		if (len)
			length = len * 4;
		else {
			length = FUNC2(kbuf, ptr);
			length -= 4;
			ptr += 4;
		}
		break;
	}

	kbuf->timestamp += delta;
	kbuf->index = FUNC0(kbuf, ptr);
	kbuf->next = kbuf->index + length;

	return type;
}