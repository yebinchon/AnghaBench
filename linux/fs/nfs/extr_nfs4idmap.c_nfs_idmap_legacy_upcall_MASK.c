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
struct rpc_pipe_msg {int dummy; } ;
struct request_key_auth {struct key* target_key; } ;
struct key {int /*<<< orphan*/  description; } ;
struct idmap_msg {int dummy; } ;
struct idmap_legacy_upcalldata {int /*<<< orphan*/  authkey; struct idmap* idmap; struct idmap_msg idmap_msg; struct rpc_pipe_msg pipe_msg; } ;
struct idmap {int /*<<< orphan*/  idmap_pipe; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOKEY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct key*,int) ; 
 struct request_key_auth* FUNC1 (struct key*) ; 
 int /*<<< orphan*/  FUNC2 (struct key*) ; 
 int /*<<< orphan*/  FUNC3 (struct idmap_legacy_upcalldata*) ; 
 struct idmap_legacy_upcalldata* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct idmap*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct idmap*,struct idmap_msg*,struct rpc_pipe_msg*) ; 
 int /*<<< orphan*/  FUNC7 (struct idmap*,struct idmap_legacy_upcalldata*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct rpc_pipe_msg*) ; 

__attribute__((used)) static int FUNC9(struct key *authkey, void *aux)
{
	struct idmap_legacy_upcalldata *data;
	struct request_key_auth *rka = FUNC1(authkey);
	struct rpc_pipe_msg *msg;
	struct idmap_msg *im;
	struct idmap *idmap = (struct idmap *)aux;
	struct key *key = rka->target_key;
	int ret = -ENOKEY;

	if (!aux)
		goto out1;

	/* msg and im are freed in idmap_pipe_destroy_msg */
	ret = -ENOMEM;
	data = FUNC4(sizeof(*data), GFP_KERNEL);
	if (!data)
		goto out1;

	msg = &data->pipe_msg;
	im = &data->idmap_msg;
	data->idmap = idmap;
	data->authkey = FUNC2(authkey);

	ret = FUNC6(key->description, idmap, im, msg);
	if (ret < 0)
		goto out2;

	ret = -EAGAIN;
	if (!FUNC7(idmap, data))
		goto out2;

	ret = FUNC8(idmap->idmap_pipe, msg);
	if (ret < 0)
		FUNC5(idmap, ret);

	return ret;
out2:
	FUNC3(data);
out1:
	FUNC0(authkey, ret);
	return ret;
}