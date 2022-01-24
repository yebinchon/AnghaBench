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
struct ceph_entity_addr {int dummy; } ;
struct ceph_options {struct ceph_entity_addr my_addr; } ;
struct ceph_client {int /*<<< orphan*/  msgr; int /*<<< orphan*/  monc; int /*<<< orphan*/  osdc; struct ceph_options* options; int /*<<< orphan*/  required_features; int /*<<< orphan*/  supported_features; int /*<<< orphan*/ * extra_mon_dispatch; scalar_t__ auth_err; int /*<<< orphan*/  auth_wq; int /*<<< orphan*/  mount_mutex; void* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_FEATURES_REQUIRED_DEFAULT ; 
 int /*<<< orphan*/  CEPH_FEATURES_SUPPORTED_DEFAULT ; 
 int /*<<< orphan*/  CEPH_FEATURE_MSG_AUTH ; 
 int ENOMEM ; 
 struct ceph_client* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MYIP ; 
 int /*<<< orphan*/  NOMSGAUTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ceph_entity_addr*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct ceph_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct ceph_client*) ; 
 scalar_t__ FUNC6 (struct ceph_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ceph_client*) ; 
 struct ceph_client* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 () ; 

struct ceph_client *FUNC12(struct ceph_options *opt, void *private)
{
	struct ceph_client *client;
	struct ceph_entity_addr *myaddr = NULL;
	int err;

	err = FUNC11();
	if (err < 0)
		return FUNC0(err);

	client = FUNC9(sizeof(*client), GFP_KERNEL);
	if (client == NULL)
		return FUNC0(-ENOMEM);

	client->private = private;
	client->options = opt;

	FUNC10(&client->mount_mutex);
	FUNC7(&client->auth_wq);
	client->auth_err = 0;

	client->extra_mon_dispatch = NULL;
	client->supported_features = CEPH_FEATURES_SUPPORTED_DEFAULT;
	client->required_features = CEPH_FEATURES_REQUIRED_DEFAULT;

	if (!FUNC6(client, NOMSGAUTH))
		client->required_features |= CEPH_FEATURE_MSG_AUTH;

	/* msgr */
	if (FUNC6(client, MYIP))
		myaddr = &client->options->my_addr;

	FUNC2(&client->msgr, myaddr);

	/* subsystems */
	err = FUNC3(&client->monc, client);
	if (err < 0)
		goto fail;
	err = FUNC5(&client->osdc, client);
	if (err < 0)
		goto fail_monc;

	return client;

fail_monc:
	FUNC4(&client->monc);
fail:
	FUNC1(&client->msgr);
	FUNC8(client);
	return FUNC0(err);
}