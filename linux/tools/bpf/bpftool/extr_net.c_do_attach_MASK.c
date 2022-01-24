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
 char** attach_type_strings ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int,int,int) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 scalar_t__ json_output ; 
 int /*<<< orphan*/  json_wtr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int net_attach_type_size ; 
 int FUNC6 (int*,char***) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,...) ; 
 int FUNC8 (char*) ; 
 int FUNC9 (int*,char***) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(int argc, char **argv)
{
	enum net_attach_type attach_type;
	int progfd, ifindex, err = 0;
	bool overwrite = false;

	/* parse attach args */
	if (!FUNC1(5))
		return -EINVAL;

	attach_type = FUNC8(*argv);
	if (attach_type == net_attach_type_size) {
		FUNC7("invalid net attach/detach type: %s", *argv);
		return -EINVAL;
	}
	FUNC0();

	progfd = FUNC9(&argc, &argv);
	if (progfd < 0)
		return -EINVAL;

	ifindex = FUNC6(&argc, &argv);
	if (ifindex < 1) {
		FUNC2(progfd);
		return -EINVAL;
	}

	if (argc) {
		if (FUNC4(*argv, "overwrite")) {
			overwrite = true;
		} else {
			FUNC7("expected 'overwrite', got: '%s'?", *argv);
			FUNC2(progfd);
			return -EINVAL;
		}
	}

	/* attach xdp prog */
	if (FUNC4("xdp", attach_type_strings[attach_type]))
		err = FUNC3(progfd, attach_type, ifindex,
					   overwrite);

	if (err < 0) {
		FUNC7("interface %s attach failed: %s",
		      attach_type_strings[attach_type], FUNC10(-err));
		return err;
	}

	if (json_output)
		FUNC5(json_wtr);

	return 0;
}