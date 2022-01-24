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
struct sst_ipc_message {int /*<<< orphan*/  header; int /*<<< orphan*/  member_0; } ;
struct sst_byt {int /*<<< orphan*/  ipc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct sst_ipc_message) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct sst_ipc_message,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct sst_byt *byt, int type,
				     int stream_id, int wait)
{
	struct sst_ipc_message request = {0};

	request.header = FUNC0(type, 0, false, stream_id);
	if (wait)
		return FUNC2(&byt->ipc, request, NULL);
	else
		return FUNC1(&byt->ipc, request);
}