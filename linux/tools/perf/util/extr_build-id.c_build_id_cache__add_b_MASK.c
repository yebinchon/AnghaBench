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
struct nsinfo {int dummy; } ;

/* Variables and functions */
 int SBUILD_ID_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,size_t,char*) ; 
 int FUNC1 (char*,char const*,struct nsinfo*,int,int) ; 

__attribute__((used)) static int FUNC2(const u8 *build_id, size_t build_id_size,
				 const char *name, struct nsinfo *nsi,
				 bool is_kallsyms, bool is_vdso)
{
	char sbuild_id[SBUILD_ID_SIZE];

	FUNC0(build_id, build_id_size, sbuild_id);

	return FUNC1(sbuild_id, name, nsi, is_kallsyms,
				     is_vdso);
}