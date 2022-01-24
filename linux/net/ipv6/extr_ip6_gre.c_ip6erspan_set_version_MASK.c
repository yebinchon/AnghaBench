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
struct nlattr {int dummy; } ;
struct __ip6_tnl_parm {int erspan_ver; int /*<<< orphan*/  hwid; void* dir; int /*<<< orphan*/  index; } ;

/* Variables and functions */
 size_t IFLA_GRE_ERSPAN_DIR ; 
 size_t IFLA_GRE_ERSPAN_HWID ; 
 size_t IFLA_GRE_ERSPAN_INDEX ; 
 size_t IFLA_GRE_ERSPAN_VER ; 
 int /*<<< orphan*/  FUNC0 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr*) ; 
 void* FUNC2 (struct nlattr*) ; 

__attribute__((used)) static void FUNC3(struct nlattr *data[],
				  struct __ip6_tnl_parm *parms)
{
	if (!data)
		return;

	parms->erspan_ver = 1;
	if (data[IFLA_GRE_ERSPAN_VER])
		parms->erspan_ver = FUNC2(data[IFLA_GRE_ERSPAN_VER]);

	if (parms->erspan_ver == 1) {
		if (data[IFLA_GRE_ERSPAN_INDEX])
			parms->index = FUNC1(data[IFLA_GRE_ERSPAN_INDEX]);
	} else if (parms->erspan_ver == 2) {
		if (data[IFLA_GRE_ERSPAN_DIR])
			parms->dir = FUNC2(data[IFLA_GRE_ERSPAN_DIR]);
		if (data[IFLA_GRE_ERSPAN_HWID])
			parms->hwid = FUNC0(data[IFLA_GRE_ERSPAN_HWID]);
	}
}