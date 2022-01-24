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
struct kioctx {struct file* aio_ring_file; } ;
struct file {struct address_space* f_mapping; } ;
struct address_space {int /*<<< orphan*/  private_lock; int /*<<< orphan*/ * private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct kioctx *ctx)
{
	struct file *aio_ring_file = ctx->aio_ring_file;
	struct address_space *i_mapping;

	if (aio_ring_file) {
		FUNC4(FUNC0(aio_ring_file), 0);

		/* Prevent further access to the kioctx from migratepages */
		i_mapping = aio_ring_file->f_mapping;
		FUNC2(&i_mapping->private_lock);
		i_mapping->private_data = NULL;
		ctx->aio_ring_file = NULL;
		FUNC3(&i_mapping->private_lock);

		FUNC1(aio_ring_file);
	}
}