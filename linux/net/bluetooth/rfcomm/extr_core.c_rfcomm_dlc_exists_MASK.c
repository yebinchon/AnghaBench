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
typedef  int /*<<< orphan*/  u8 ;
struct rfcomm_session {int dummy; } ;
struct rfcomm_dlc {int dummy; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct rfcomm_dlc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rfcomm_session*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct rfcomm_dlc* FUNC4 (struct rfcomm_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct rfcomm_session* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 

struct rfcomm_dlc *FUNC8(bdaddr_t *src, bdaddr_t *dst, u8 channel)
{
	struct rfcomm_session *s;
	struct rfcomm_dlc *dlc = NULL;
	u8 dlci;

	if (FUNC3(channel))
		return FUNC0(-EINVAL);

	FUNC5();
	s = FUNC6(src, dst);
	if (s) {
		dlci = FUNC1(FUNC2(s), channel);
		dlc = FUNC4(s, dlci);
	}
	FUNC7();
	return dlc;
}