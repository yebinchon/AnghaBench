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
typedef  enum net_attach_type { ____Placeholder_net_attach_type } net_attach_type ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * attach_type_strings ; 
 int FUNC2 (int,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ json_output ; 
 int /*<<< orphan*/  json_wtr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int net_attach_type_size ; 
 int FUNC5 (int*,char***) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(int argc, char **argv)
{
	enum net_attach_type attach_type;
	int progfd, ifindex, err = 0;

	/* parse detach args */
	if (!FUNC1(3))
		return -EINVAL;

	attach_type = FUNC7(*argv);
	if (attach_type == net_attach_type_size) {
		FUNC6("invalid net attach/detach type: %s", *argv);
		return -EINVAL;
	}
	FUNC0();

	ifindex = FUNC5(&argc, &argv);
	if (ifindex < 1)
		return -EINVAL;

	/* detach xdp prog */
	progfd = -1;
	if (FUNC3("xdp", attach_type_strings[attach_type]))
		err = FUNC2(progfd, attach_type, ifindex, NULL);

	if (err < 0) {
		FUNC6("interface %s detach failed: %s",
		      attach_type_strings[attach_type], FUNC8(-err));
		return err;
	}

	if (json_output)
		FUNC4(json_wtr);

	return 0;
}