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
struct multi_transaction {size_t size; } ;
struct file {struct multi_transaction* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t MULTI_TRANSACTION_LIMIT ; 
 int /*<<< orphan*/  multi_transaction_lock ; 
 int /*<<< orphan*/  FUNC1 (struct multi_transaction*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct file *file,
				  struct multi_transaction *new, size_t n)
{
	struct multi_transaction *old;

	FUNC0(n > MULTI_TRANSACTION_LIMIT);

	new->size = n;
	FUNC2(&multi_transaction_lock);
	old = (struct multi_transaction *) file->private_data;
	file->private_data = new;
	FUNC3(&multi_transaction_lock);
	FUNC1(old);
}