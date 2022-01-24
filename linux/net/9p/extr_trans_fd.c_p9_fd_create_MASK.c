#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct p9_fd_opts {int /*<<< orphan*/  wfd; int /*<<< orphan*/  rfd; } ;
struct TYPE_4__ {int /*<<< orphan*/  wfd; int /*<<< orphan*/  rfd; } ;
struct TYPE_3__ {TYPE_2__ fd; } ;
struct p9_client {TYPE_1__ trans_opts; } ;

/* Variables and functions */
 int ENOPROTOOPT ; 
 int /*<<< orphan*/  FUNC0 (struct p9_client*) ; 
 int FUNC1 (struct p9_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct p9_fd_opts*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(struct p9_client *client, const char *addr, char *args)
{
	int err;
	struct p9_fd_opts opts;

	FUNC2(args, &opts);
	client->trans_opts.fd.rfd = opts.rfd;
	client->trans_opts.fd.wfd = opts.wfd;

	if (opts.rfd == ~0 || opts.wfd == ~0) {
		FUNC3("Insufficient options for proto=fd\n");
		return -ENOPROTOOPT;
	}

	err = FUNC1(client, opts.rfd, opts.wfd);
	if (err < 0)
		return err;

	FUNC0(client);

	return 0;
}