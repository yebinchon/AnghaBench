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
struct cmtp_session {int /*<<< orphan*/  blockids; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC1(struct cmtp_session *session)
{
	int i, id = -1;

	for (i = 0; i < 16; i++)
		if (!FUNC0(i, &session->blockids)) {
			id = i;
			break;
		}

	return id;
}