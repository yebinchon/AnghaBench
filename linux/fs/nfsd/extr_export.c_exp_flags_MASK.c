#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uid_t ;
struct user_namespace {int dummy; } ;
struct seq_file {TYPE_2__* file; } ;
struct nfsd4_fs_locations {scalar_t__ locations_count; TYPE_3__* locations; scalar_t__ migrated; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;
typedef  int gid_t ;
struct TYPE_6__ {int /*<<< orphan*/  hosts; int /*<<< orphan*/  path; } ;
struct TYPE_5__ {TYPE_1__* f_cred; } ;
struct TYPE_4__ {struct user_namespace* user_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFSEXP_ALLFLAGS ; 
 int NFSEXP_FSID ; 
 char* FUNC0 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct user_namespace*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct user_namespace*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC8 (struct seq_file*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct seq_file *m, int flag, int fsid,
		kuid_t anonu, kgid_t anong, struct nfsd4_fs_locations *fsloc)
{
	struct user_namespace *userns = m->file->f_cred->user_ns;

	FUNC8(m, flag, NFSEXP_ALLFLAGS);
	if (flag & NFSEXP_FSID)
		FUNC6(m, ",fsid=%d", fsid);
	if (!FUNC9(anonu, FUNC4(userns, (uid_t)-2)) &&
	    !FUNC9(anonu, FUNC4(userns, 0x10000-2)))
		FUNC6(m, ",anonuid=%u", FUNC1(userns, anonu));
	if (!FUNC2(anong, FUNC3(userns, (gid_t)-2)) &&
	    !FUNC2(anong, FUNC3(userns, 0x10000-2)))
		FUNC6(m, ",anongid=%u", FUNC0(userns, anong));
	if (fsloc && fsloc->locations_count > 0) {
		char *loctype = (fsloc->migrated) ? "refer" : "replicas";
		int i;

		FUNC6(m, ",%s=", loctype);
		FUNC5(m, fsloc->locations[0].path, ",;@ \t\n\\");
		FUNC7(m, '@');
		FUNC5(m, fsloc->locations[0].hosts, ",;@ \t\n\\");
		for (i = 1; i < fsloc->locations_count; i++) {
			FUNC7(m, ';');
			FUNC5(m, fsloc->locations[i].path, ",;@ \t\n\\");
			FUNC7(m, '@');
			FUNC5(m, fsloc->locations[i].hosts, ",;@ \t\n\\");
		}
	}
}