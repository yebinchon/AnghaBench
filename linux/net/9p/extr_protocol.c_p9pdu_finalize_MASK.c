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
struct p9_fcall {int size; int /*<<< orphan*/  tag; int /*<<< orphan*/  id; } ;
struct p9_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  P9_DEBUG_9P ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct p9_fcall*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct p9_client*,struct p9_fcall*) ; 

int FUNC3(struct p9_client *clnt, struct p9_fcall *pdu)
{
	int size = pdu->size;
	int err;

	pdu->size = 0;
	err = FUNC1(pdu, 0, "d", size);
	pdu->size = size;

	FUNC2(clnt, pdu);
	FUNC0(P9_DEBUG_9P, ">>> size=%d type: %d tag: %d\n",
		 pdu->size, pdu->id, pdu->tag);

	return err;
}