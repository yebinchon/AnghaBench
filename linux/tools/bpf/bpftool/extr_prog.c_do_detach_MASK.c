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
typedef  enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int,int,int) ; 
 scalar_t__ json_output ; 
 int /*<<< orphan*/  json_wtr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int,char**,int*,int*,int*) ; 

__attribute__((used)) static int FUNC4(int argc, char **argv)
{
	enum bpf_attach_type attach_type;
	int err, progfd;
	int mapfd;

	err = FUNC3(argc, argv,
				       &progfd, &attach_type, &mapfd);
	if (err)
		return err;

	err = FUNC0(progfd, mapfd, attach_type);
	if (err) {
		FUNC2("failed prog detach from map");
		return -EINVAL;
	}

	if (json_output)
		FUNC1(json_wtr);
	return 0;
}