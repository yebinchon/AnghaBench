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
struct elf_info {int dummy; } ;
typedef  enum export { ____Placeholder_export } export ;

/* Variables and functions */
 int export_gpl ; 
 int export_gpl_future ; 
 int export_plain ; 
 int export_unknown ; 
 int export_unused ; 
 int export_unused_gpl ; 
 char* FUNC0 (struct elf_info*,unsigned int) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static enum export FUNC2(struct elf_info *elf, unsigned int sec)
{
	const char *secname = FUNC0(elf, sec);

	if (FUNC1(secname, "___ksymtab+"))
		return export_plain;
	else if (FUNC1(secname, "___ksymtab_unused+"))
		return export_unused;
	else if (FUNC1(secname, "___ksymtab_gpl+"))
		return export_gpl;
	else if (FUNC1(secname, "___ksymtab_unused_gpl+"))
		return export_unused_gpl;
	else if (FUNC1(secname, "___ksymtab_gpl_future+"))
		return export_gpl_future;
	else
		return export_unknown;
}