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
typedef  int /*<<< orphan*/  substring_t ;

/* Variables and functions */
 int MAX_OPT_ARGS ; 
 int /*<<< orphan*/  ONERROR ; 
 int /*<<< orphan*/  ONERROR_LOCK ; 
 int /*<<< orphan*/  ONERROR_PANIC ; 
 int /*<<< orphan*/  ONERROR_REPAIR ; 
 int /*<<< orphan*/  ONERROR_UMOUNT ; 
#define  Opt_onerror_lock 141 
#define  Opt_onerror_panic 140 
#define  Opt_onerror_repair 139 
#define  Opt_onerror_umount 138 
#define  Opt_type_44bsd 137 
#define  Opt_type_hp 136 
#define  Opt_type_nextstep 135 
#define  Opt_type_nextstepcd 134 
#define  Opt_type_old 133 
#define  Opt_type_openstep 132 
#define  Opt_type_sun 131 
#define  Opt_type_sunos 130 
#define  Opt_type_sunx86 129 
#define  Opt_type_ufs2 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  UFSTYPE ; 
 int /*<<< orphan*/  UFSTYPE_44BSD ; 
 int /*<<< orphan*/  UFSTYPE_HP ; 
 int /*<<< orphan*/  UFSTYPE_NEXTSTEP ; 
 int /*<<< orphan*/  UFSTYPE_NEXTSTEP_CD ; 
 int /*<<< orphan*/  UFSTYPE_OLD ; 
 int /*<<< orphan*/  UFSTYPE_OPENSTEP ; 
 int /*<<< orphan*/  UFSTYPE_SUN ; 
 int /*<<< orphan*/  UFSTYPE_SUNOS ; 
 int /*<<< orphan*/  UFSTYPE_SUNx86 ; 
 int /*<<< orphan*/  UFSTYPE_UFS2 ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 char* FUNC3 (char**,char*) ; 
 int /*<<< orphan*/  tokens ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6 (char * options, unsigned * mount_options)
{
	char * p;
	
	FUNC0("ENTER\n");
	
	if (!options)
		return 1;

	while ((p = FUNC3(&options, ",")) != NULL) {
		substring_t args[MAX_OPT_ARGS];
		int token;
		if (!*p)
			continue;

		token = FUNC1(p, tokens, args);
		switch (token) {
		case Opt_type_old:
			FUNC4 (*mount_options, UFSTYPE);
			FUNC5 (*mount_options, UFSTYPE_OLD);
			break;
		case Opt_type_sunx86:
			FUNC4 (*mount_options, UFSTYPE);
			FUNC5 (*mount_options, UFSTYPE_SUNx86);
			break;
		case Opt_type_sun:
			FUNC4 (*mount_options, UFSTYPE);
			FUNC5 (*mount_options, UFSTYPE_SUN);
			break;
		case Opt_type_sunos:
			FUNC4(*mount_options, UFSTYPE);
			FUNC5(*mount_options, UFSTYPE_SUNOS);
			break;
		case Opt_type_44bsd:
			FUNC4 (*mount_options, UFSTYPE);
			FUNC5 (*mount_options, UFSTYPE_44BSD);
			break;
		case Opt_type_ufs2:
			FUNC4(*mount_options, UFSTYPE);
			FUNC5(*mount_options, UFSTYPE_UFS2);
			break;
		case Opt_type_hp:
			FUNC4 (*mount_options, UFSTYPE);
			FUNC5 (*mount_options, UFSTYPE_HP);
			break;
		case Opt_type_nextstepcd:
			FUNC4 (*mount_options, UFSTYPE);
			FUNC5 (*mount_options, UFSTYPE_NEXTSTEP_CD);
			break;
		case Opt_type_nextstep:
			FUNC4 (*mount_options, UFSTYPE);
			FUNC5 (*mount_options, UFSTYPE_NEXTSTEP);
			break;
		case Opt_type_openstep:
			FUNC4 (*mount_options, UFSTYPE);
			FUNC5 (*mount_options, UFSTYPE_OPENSTEP);
			break;
		case Opt_onerror_panic:
			FUNC4 (*mount_options, ONERROR);
			FUNC5 (*mount_options, ONERROR_PANIC);
			break;
		case Opt_onerror_lock:
			FUNC4 (*mount_options, ONERROR);
			FUNC5 (*mount_options, ONERROR_LOCK);
			break;
		case Opt_onerror_umount:
			FUNC4 (*mount_options, ONERROR);
			FUNC5 (*mount_options, ONERROR_UMOUNT);
			break;
		case Opt_onerror_repair:
			FUNC2("Unable to do repair on error, will lock lock instead\n");
			FUNC4 (*mount_options, ONERROR);
			FUNC5 (*mount_options, ONERROR_REPAIR);
			break;
		default:
			FUNC2("Invalid option: \"%s\" or missing value\n", p);
			return 0;
		}
	}
	return 1;
}