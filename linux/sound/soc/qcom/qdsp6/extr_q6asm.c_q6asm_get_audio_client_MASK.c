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
struct q6asm {int /*<<< orphan*/  slock; struct audio_client** session; int /*<<< orphan*/  dev; } ;
struct audio_client {int session; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int MAX_SESSIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct audio_client *FUNC4(struct q6asm *a,
						   int session_id)
{
	struct audio_client *ac = NULL;
	unsigned long flags;

	FUNC2(&a->slock, flags);
	if ((session_id <= 0) || (session_id > MAX_SESSIONS)) {
		FUNC0(a->dev, "invalid session: %d\n", session_id);
		goto err;
	}

	/* check for valid session */
	if (!a->session[session_id])
		goto err;
	else if (a->session[session_id]->session != session_id)
		goto err;

	ac = a->session[session_id];
	FUNC1(&ac->refcount);
err:
	FUNC3(&a->slock, flags);
	return ac;
}