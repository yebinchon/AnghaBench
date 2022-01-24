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
struct bpf_prog_info {char* id; char const* name; } ;
typedef  int /*<<< orphan*/  info ;
typedef  int __u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,struct bpf_prog_info*,int*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ json_output ; 
 int /*<<< orphan*/  json_wtr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*,char const*,char const*,char const*) ; 

__attribute__((used)) static int FUNC8(int id, const char *attach_type_str,
			 const char *attach_flags_str,
			 int level)
{
	struct bpf_prog_info info = {};
	__u32 info_len = sizeof(info);
	int prog_fd;

	prog_fd = FUNC1(id);
	if (prog_fd < 0)
		return -1;

	if (FUNC0(prog_fd, &info, &info_len)) {
		FUNC2(prog_fd);
		return -1;
	}

	if (json_output) {
		FUNC4(json_wtr);
		FUNC6(json_wtr, "id", info.id);
		FUNC5(json_wtr, "attach_type",
				   attach_type_str);
		FUNC5(json_wtr, "attach_flags",
				   attach_flags_str);
		FUNC5(json_wtr, "name", info.name);
		FUNC3(json_wtr);
	} else {
		FUNC7("%s%-8u %-15s %-15s %-15s\n", level ? "    " : "",
		       info.id,
		       attach_type_str,
		       attach_flags_str,
		       info.name);
	}

	FUNC2(prog_fd);
	return 0;
}