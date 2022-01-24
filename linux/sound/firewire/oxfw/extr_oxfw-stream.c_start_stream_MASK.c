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
struct TYPE_2__ {int /*<<< orphan*/  channel; } ;
struct cmp_connection {int /*<<< orphan*/  speed; TYPE_1__ resources; } ;
struct amdtp_stream {int dummy; } ;
struct snd_oxfw {int /*<<< orphan*/  domain; struct cmp_connection out_conn; struct cmp_connection in_conn; struct amdtp_stream rx_stream; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct amdtp_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cmp_connection*) ; 
 int FUNC2 (struct cmp_connection*) ; 

__attribute__((used)) static int FUNC3(struct snd_oxfw *oxfw, struct amdtp_stream *stream)
{
	struct cmp_connection *conn;
	int err;

	if (stream == &oxfw->rx_stream)
		conn = &oxfw->in_conn;
	else
		conn = &oxfw->out_conn;

	err = FUNC2(conn);
	if (err < 0)
		return err;

	err = FUNC0(&oxfw->domain, stream,
				      conn->resources.channel, conn->speed);
	if (err < 0) {
		FUNC1(conn);
		return err;
	}

	return 0;
}