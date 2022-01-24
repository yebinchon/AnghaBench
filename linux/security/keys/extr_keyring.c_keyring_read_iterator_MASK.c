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
struct keyring_read_iterator_context {scalar_t__ count; scalar_t__ buflen; int /*<<< orphan*/  buffer; } ;
struct key {int /*<<< orphan*/  serial; TYPE_1__* type; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 struct key* FUNC1 (void const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const void *object, void *data)
{
	struct keyring_read_iterator_context *ctx = data;
	const struct key *key = FUNC1(object);
	int ret;

	FUNC0("{%s,%d},,{%zu/%zu}",
	       key->type->name, key->serial, ctx->count, ctx->buflen);

	if (ctx->count >= ctx->buflen)
		return 1;

	ret = FUNC2(key->serial, ctx->buffer);
	if (ret < 0)
		return ret;
	ctx->buffer++;
	ctx->count += sizeof(key->serial);
	return 0;
}