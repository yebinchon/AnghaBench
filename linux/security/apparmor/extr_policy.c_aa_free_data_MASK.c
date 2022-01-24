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
struct aa_data {struct aa_data* key; struct aa_data* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aa_data*) ; 

__attribute__((used)) static void FUNC1(void *ptr, void *arg)
{
	struct aa_data *data = ptr;

	FUNC0(data->data);
	FUNC0(data->key);
	FUNC0(data);
}