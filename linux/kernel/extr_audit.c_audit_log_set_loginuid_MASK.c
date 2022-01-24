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
typedef  int /*<<< orphan*/  uid_t ;
struct tty_struct {int dummy; } ;
struct audit_buffer {int dummy; } ;
typedef  int /*<<< orphan*/  kuid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_LOGIN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  audit_enabled ; 
 struct tty_struct* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct audit_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct audit_buffer*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 struct audit_buffer* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct audit_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 char* FUNC10 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC11(kuid_t koldloginuid, kuid_t kloginuid,
				   unsigned int oldsessionid,
				   unsigned int sessionid, int rc)
{
	struct audit_buffer *ab;
	uid_t uid, oldloginuid, loginuid;
	struct tty_struct *tty;

	if (!audit_enabled)
		return;

	ab = FUNC4(FUNC0(), GFP_KERNEL, AUDIT_LOGIN);
	if (!ab)
		return;

	uid = FUNC7(&init_user_ns, FUNC9(current));
	oldloginuid = FUNC7(&init_user_ns, koldloginuid);
	loginuid = FUNC7(&init_user_ns, kloginuid),
	tty = FUNC1();

	FUNC3(ab, "pid=%d uid=%u", FUNC8(current), uid);
	FUNC5(ab);
	FUNC3(ab, " old-auid=%u auid=%u tty=%s old-ses=%u ses=%u res=%d",
			 oldloginuid, loginuid, tty ? FUNC10(tty) : "(none)",
			 oldsessionid, sessionid, !rc);
	FUNC6(tty);
	FUNC2(ab);
}