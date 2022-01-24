#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct selinux_state {int dummy; } ;
struct selinux_fs_info {struct selinux_state* state; } ;
struct file {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_4__ {TYPE_1__* i_sb; } ;
struct TYPE_3__ {struct selinux_fs_info* s_fs_info; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ERANGE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SECCLASS_SECURITY ; 
 int /*<<< orphan*/  SECINITSID_SECURITY ; 
 int /*<<< orphan*/  SECURITY__COMPUTE_RELABEL ; 
 int SIMPLE_TRANSACTION_LIMIT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__* FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int FUNC6 (struct selinux_state*,int,int,int /*<<< orphan*/ ,int*) ; 
 int FUNC7 (struct selinux_state*,char*,int*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct selinux_state*,int,char**,int*) ; 
 int /*<<< orphan*/  selinux_state ; 
 int FUNC9 (char*,char*,char*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC10(struct file *file, char *buf, size_t size)
{
	struct selinux_fs_info *fsi = FUNC2(file)->i_sb->s_fs_info;
	struct selinux_state *state = fsi->state;
	char *scon = NULL, *tcon = NULL;
	u32 ssid, tsid, newsid;
	u16 tclass;
	ssize_t length;
	char *newcon = NULL;
	u32 len;

	length = FUNC0(&selinux_state,
			      FUNC1(), SECINITSID_SECURITY,
			      SECCLASS_SECURITY, SECURITY__COMPUTE_RELABEL,
			      NULL);
	if (length)
		goto out;

	length = -ENOMEM;
	scon = FUNC4(size + 1, GFP_KERNEL);
	if (!scon)
		goto out;

	length = -ENOMEM;
	tcon = FUNC4(size + 1, GFP_KERNEL);
	if (!tcon)
		goto out;

	length = -EINVAL;
	if (FUNC9(buf, "%s %s %hu", scon, tcon, &tclass) != 3)
		goto out;

	length = FUNC7(state, scon, &ssid, GFP_KERNEL);
	if (length)
		goto out;

	length = FUNC7(state, tcon, &tsid, GFP_KERNEL);
	if (length)
		goto out;

	length = FUNC6(state, ssid, tsid, tclass, &newsid);
	if (length)
		goto out;

	length = FUNC8(state, newsid, &newcon, &len);
	if (length)
		goto out;

	length = -ERANGE;
	if (len > SIMPLE_TRANSACTION_LIMIT)
		goto out;

	FUNC5(buf, newcon, len);
	length = len;
out:
	FUNC3(newcon);
	FUNC3(tcon);
	FUNC3(scon);
	return length;
}