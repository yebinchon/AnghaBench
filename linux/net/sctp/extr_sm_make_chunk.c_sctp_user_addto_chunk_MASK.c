#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sctp_chunk {int /*<<< orphan*/  skb; int /*<<< orphan*/  chunk_end; TYPE_1__* chunk_hdr; } ;
struct iov_iter {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (void*,int,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct sctp_chunk *chunk, int len,
			  struct iov_iter *from)
{
	void *target;

	/* Make room in chunk for data.  */
	target = FUNC3(chunk->skb, len);

	/* Copy data (whole iovec) into chunk */
	if (!FUNC0(target, len, from))
		return -EFAULT;

	/* Adjust the chunk length field.  */
	chunk->chunk_hdr->length =
		FUNC1(FUNC2(chunk->chunk_hdr->length) + len);
	chunk->chunk_end = FUNC4(chunk->skb);

	return 0;
}