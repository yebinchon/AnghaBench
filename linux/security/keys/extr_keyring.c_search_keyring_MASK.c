#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ lookup_type; } ;
struct keyring_search_context {int (* iterator ) (void const*,struct keyring_search_context*) ;int /*<<< orphan*/  index_key; TYPE_1__ match_data; } ;
struct key {int /*<<< orphan*/  keys; } ;

/* Variables and functions */
 scalar_t__ KEYRING_SEARCH_LOOKUP_DIRECT ; 
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int (*) (void const*,struct keyring_search_context*),struct keyring_search_context*) ; 
 int /*<<< orphan*/  keyring_assoc_array_ops ; 
 int FUNC2 (void const*,struct keyring_search_context*) ; 

__attribute__((used)) static int FUNC3(struct key *keyring, struct keyring_search_context *ctx)
{
	if (ctx->match_data.lookup_type == KEYRING_SEARCH_LOOKUP_DIRECT) {
		const void *object;

		object = FUNC0(&keyring->keys,
					  &keyring_assoc_array_ops,
					  &ctx->index_key);
		return object ? ctx->iterator(object, ctx) : 0;
	}
	return FUNC1(&keyring->keys, ctx->iterator, ctx);
}