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
typedef  int /*<<< orphan*/  time64_t ;
struct key {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct key const*) ; 
 int FUNC1 (struct key const*,int /*<<< orphan*/ ) ; 
 struct key* FUNC2 (void const*) ; 

__attribute__((used)) static int FUNC3(const void *object, void *iterator_data)
{
	const struct key *key = FUNC2(object);
	time64_t *limit = iterator_data;

	FUNC0(key);
	return FUNC1(key, *limit);
}