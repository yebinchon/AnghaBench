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
struct cmp_connection {scalar_t__ direction; int /*<<< orphan*/  pcr_index; } ;
struct amdtp_stream {int dummy; } ;
struct snd_efw {TYPE_1__* unit; struct cmp_connection in_conn; struct cmp_connection out_conn; struct amdtp_stream tx_stream; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 scalar_t__ CMP_OUTPUT ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct amdtp_stream*) ; 
 int FUNC1 (struct cmp_connection*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct snd_efw *efw, struct amdtp_stream *s)
{
	struct cmp_connection *conn;
	bool used;
	int err;

	if (s == &efw->tx_stream)
		conn = &efw->out_conn;
	else
		conn = &efw->in_conn;

	err = FUNC1(conn, &used);
	if ((err >= 0) && used && !FUNC0(s)) {
		FUNC2(&efw->unit->device,
			"Connection established by others: %cPCR[%d]\n",
			(conn->direction == CMP_OUTPUT) ? 'o' : 'i',
			conn->pcr_index);
		err = -EBUSY;
	}

	return err;
}