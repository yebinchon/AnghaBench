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
struct TYPE_2__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,void const*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC6(struct sctp_chunk *chunk, int len,
			      const void *data)
{
	int chunklen = FUNC3(chunk->chunk_hdr->length);
	void *target;

	target = FUNC4(chunk->skb, len);

	if (data)
		FUNC1(target, data, len);
	else
		FUNC2(target, 0, len);

	/* Adjust the chunk length field.  */
	chunk->chunk_hdr->length = FUNC0(chunklen + len);
	chunk->chunk_end = FUNC5(chunk->skb);

	return target;
}