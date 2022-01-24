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
struct sctp_chunk {int dummy; } ;
struct sctp_association {int /*<<< orphan*/  last_ecne_tsn; int /*<<< orphan*/  need_ecne; } ;

/* Variables and functions */
 struct sctp_chunk* FUNC0 (struct sctp_association*,int /*<<< orphan*/ ) ; 

struct sctp_chunk *FUNC1(struct sctp_association *asoc)
{
	if (!asoc->need_ecne)
		return NULL;

	/* Send ECNE if needed.
	 * Not being able to allocate a chunk here is not deadly.
	 */
	return FUNC0(asoc, asoc->last_ecne_tsn);
}