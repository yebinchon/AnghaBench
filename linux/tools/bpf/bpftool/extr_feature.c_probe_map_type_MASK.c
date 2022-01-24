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
typedef  int /*<<< orphan*/  plain_desc ;
typedef  enum bpf_map_type { ____Placeholder_bpf_map_type } bpf_map_type ;
typedef  int /*<<< orphan*/  define_name ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 char** map_type_name ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char const*,...) ; 
 size_t FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static void
FUNC6(enum bpf_map_type map_type, const char *define_prefix,
	       __u32 ifindex)
{
	char feat_name[128], plain_desc[128], define_name[128];
	const char *plain_comment = "eBPF map_type ";
	size_t maxlen;
	bool res;

	res = FUNC0(map_type, ifindex);

	maxlen = sizeof(plain_desc) - FUNC4(plain_comment) - 1;
	if (FUNC4(map_type_name[map_type]) > maxlen) {
		FUNC1("map type name too long");
		return;
	}

	FUNC3(feat_name, "have_%s_map_type", map_type_name[map_type]);
	FUNC3(define_name, "%s_map_type", map_type_name[map_type]);
	FUNC5(define_name, sizeof(define_name));
	FUNC3(plain_desc, "%s%s", plain_comment, map_type_name[map_type]);
	FUNC2(feat_name, plain_desc, define_name, res,
			   define_prefix);
}