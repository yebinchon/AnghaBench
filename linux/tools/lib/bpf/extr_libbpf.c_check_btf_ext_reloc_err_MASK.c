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
struct bpf_program {int /*<<< orphan*/  section_name; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int
FUNC1(struct bpf_program *prog, int err,
			void *btf_prog_info, const char *info_name)
{
	if (err != -ENOENT) {
		FUNC0("Error in loading %s for sec %s.\n",
			   info_name, prog->section_name);
		return err;
	}

	/* err == -ENOENT (i.e. prog->section_name not found in btf_ext) */

	if (btf_prog_info) {
		/*
		 * Some info has already been found but has problem
		 * in the last btf_ext reloc. Must have to error out.
		 */
		FUNC0("Error in relocating %s for sec %s.\n",
			   info_name, prog->section_name);
		return err;
	}

	/* Have problem loading the very first info. Ignore the rest. */
	FUNC0("Cannot find %s for main program sec %s. Ignore all %s.\n",
		   info_name, prog->section_name, info_name);
	return 0;
}