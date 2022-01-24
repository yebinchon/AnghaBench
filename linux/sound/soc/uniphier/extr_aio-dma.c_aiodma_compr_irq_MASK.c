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
struct uniphier_aio_sub {TYPE_1__* cstream; int /*<<< orphan*/  lock; int /*<<< orphan*/  compr_bytes; int /*<<< orphan*/  compr_addr; scalar_t__ threshold; } ;
struct snd_compr_runtime {int fragment_size; } ;
struct TYPE_2__ {struct snd_compr_runtime* runtime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uniphier_aio_sub*) ; 
 int FUNC1 (struct uniphier_aio_sub*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct uniphier_aio_sub*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct uniphier_aio_sub *sub)
{
	struct snd_compr_runtime *runtime = sub->cstream->runtime;
	int bytes = runtime->fragment_size;
	int ret;

	FUNC4(&sub->lock);
	ret = FUNC1(sub, sub->compr_bytes,
				      sub->threshold + bytes);
	if (!ret)
		sub->threshold += bytes;

	FUNC2(sub, sub->compr_addr, sub->compr_bytes, bytes);
	FUNC0(sub);
	FUNC5(&sub->lock);

	FUNC3(sub->cstream);
}