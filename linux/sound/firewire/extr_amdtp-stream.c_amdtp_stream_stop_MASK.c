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
struct amdtp_stream {int callbacked; int /*<<< orphan*/  mutex; int /*<<< orphan*/  pkt_descs; int /*<<< orphan*/  unit; int /*<<< orphan*/  buffer; int /*<<< orphan*/  context; int /*<<< orphan*/  period_tasklet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct amdtp_stream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct amdtp_stream *s)
{
	FUNC6(&s->mutex);

	if (!FUNC1(s)) {
		FUNC7(&s->mutex);
		return;
	}

	FUNC8(&s->period_tasklet);
	FUNC3(s->context);
	FUNC2(s->context);
	s->context = FUNC0(-1);
	FUNC4(&s->buffer, s->unit);
	FUNC5(s->pkt_descs);

	s->callbacked = false;

	FUNC7(&s->mutex);
}