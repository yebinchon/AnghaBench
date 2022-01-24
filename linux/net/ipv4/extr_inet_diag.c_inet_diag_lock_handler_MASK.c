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
struct inet_diag_handler {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  ENOENT ; 
 struct inet_diag_handler const* FUNC0 (int /*<<< orphan*/ ) ; 
 struct inet_diag_handler const** inet_diag_table ; 
 int /*<<< orphan*/  inet_diag_table_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static const struct inet_diag_handler *FUNC3(int proto)
{
	if (!inet_diag_table[proto])
		FUNC2(AF_INET, proto);

	FUNC1(&inet_diag_table_mutex);
	if (!inet_diag_table[proto])
		return FUNC0(-ENOENT);

	return inet_diag_table[proto];
}