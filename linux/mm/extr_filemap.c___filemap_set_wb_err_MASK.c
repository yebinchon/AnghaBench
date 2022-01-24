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
struct address_space {int /*<<< orphan*/  wb_err; } ;
typedef  int /*<<< orphan*/  errseq_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct address_space*,int /*<<< orphan*/ ) ; 

void FUNC2(struct address_space *mapping, int err)
{
	errseq_t eseq = FUNC0(&mapping->wb_err, err);

	FUNC1(mapping, eseq);
}