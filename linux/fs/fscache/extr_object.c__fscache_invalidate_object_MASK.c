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
struct fscache_state {int dummy; } ;
struct fscache_operation {int flags; } ;
struct fscache_object {TYPE_2__* cache; int /*<<< orphan*/  flags; struct fscache_cookie* cookie; int /*<<< orphan*/  debug_id; } ;
struct fscache_cookie {int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; int /*<<< orphan*/  stores; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  invalidate_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FSCACHE_COOKIE_INVALIDATING ; 
 int /*<<< orphan*/  FSCACHE_COOKIE_NO_DATA_YET ; 
 int /*<<< orphan*/  FSCACHE_OBJECT_PENDING_WRITE ; 
 int /*<<< orphan*/  FSCACHE_OBJECT_RETIRED ; 
 int FSCACHE_OP_ASYNC ; 
 int FSCACHE_OP_EXCLUSIVE ; 
 int FSCACHE_OP_UNUSE_COOKIE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KILL_OBJECT ; 
 int /*<<< orphan*/  UPDATE_OBJECT ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct fscache_object*) ; 
 int /*<<< orphan*/  FUNC5 (struct fscache_cookie*) ; 
 int /*<<< orphan*/  FUNC6 (struct fscache_object*) ; 
 int /*<<< orphan*/  FUNC7 (struct fscache_cookie*,struct fscache_operation*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fscache_page_op_invalidate ; 
 int /*<<< orphan*/  FUNC8 (struct fscache_operation*) ; 
 scalar_t__ FUNC9 (struct fscache_object*,struct fscache_operation*) ; 
 int /*<<< orphan*/  FUNC10 (struct fscache_object*) ; 
 int /*<<< orphan*/  FUNC11 (struct fscache_object*) ; 
 int /*<<< orphan*/  FUNC12 (struct fscache_operation*) ; 
 struct fscache_operation* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct fscache_cookie*,int /*<<< orphan*/ *,struct fscache_operation*,int /*<<< orphan*/ ) ; 
 struct fscache_state const* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct fscache_state *FUNC22(struct fscache_object *object,
							      int event)
{
	struct fscache_operation *op;
	struct fscache_cookie *cookie = object->cookie;

	FUNC1("{OBJ%x},%d", object->debug_id, event);

	/* We're going to need the cookie.  If the cookie is not available then
	 * retire the object instead.
	 */
	if (!FUNC11(object)) {
		FUNC0(FUNC14(&object->cookie->stores));
		FUNC15(FSCACHE_OBJECT_RETIRED, &object->flags);
		FUNC2(" [no cookie]");
		return FUNC20(KILL_OBJECT);
	}

	/* Reject any new read/write ops and abort any that are pending. */
	FUNC5(cookie);
	FUNC3(FSCACHE_OBJECT_PENDING_WRITE, &object->flags);
	FUNC4(object);

	/* Now we have to wait for in-progress reads and writes */
	op = FUNC13(sizeof(*op), GFP_KERNEL);
	if (!op)
		goto nomem;

	FUNC7(cookie, op, object->cache->ops->invalidate_object,
			       NULL, NULL);
	op->flags = FSCACHE_OP_ASYNC |
		(1 << FSCACHE_OP_EXCLUSIVE) |
		(1 << FSCACHE_OP_UNUSE_COOKIE);
	FUNC19(cookie, NULL, op, fscache_page_op_invalidate);

	FUNC16(&cookie->lock);
	if (FUNC9(object, op) < 0)
		goto submit_op_failed;
	FUNC17(&cookie->lock);
	FUNC8(op);

	/* Once we've completed the invalidation, we know there will be no data
	 * stored in the cache and thus we can reinstate the data-check-skip
	 * optimisation.
	 */
	FUNC15(FSCACHE_COOKIE_NO_DATA_YET, &cookie->flags);

	/* We can allow read and write requests to come in once again.  They'll
	 * queue up behind our exclusive invalidation operation.
	 */
	if (FUNC18(FSCACHE_COOKIE_INVALIDATING, &cookie->flags))
		FUNC21(&cookie->flags, FSCACHE_COOKIE_INVALIDATING);
	FUNC2(" [ok]");
	return FUNC20(UPDATE_OBJECT);

nomem:
	FUNC6(object);
	FUNC10(object);
	FUNC2(" [ENOMEM]");
	return FUNC20(KILL_OBJECT);

submit_op_failed:
	FUNC6(object);
	FUNC17(&cookie->lock);
	FUNC10(object);
	FUNC12(op);
	FUNC2(" [EIO]");
	return FUNC20(KILL_OBJECT);
}