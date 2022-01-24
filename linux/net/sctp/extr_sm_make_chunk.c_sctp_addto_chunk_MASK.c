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
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,void const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void *FUNC6(struct sctp_chunk *chunk, int len, const void *data)
{
	int chunklen = FUNC2(chunk->chunk_hdr->length);
	int padlen = FUNC0(chunklen) - chunklen;
	void *target;

	FUNC4(chunk->skb, padlen);
	target = FUNC3(chunk->skb, data, len);

	/* Adjust the chunk length field.  */
	chunk->chunk_hdr->length = FUNC1(chunklen + padlen + len);
	chunk->chunk_end = FUNC5(chunk->skb);

	return target;
}