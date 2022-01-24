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
struct nilfs_sc_info {int sc_flush_request; int /*<<< orphan*/  sc_flags; int /*<<< orphan*/  sc_state_lock; } ;

/* Variables and functions */
 int FLUSH_DAT_BIT ; 
 int FLUSH_FILE_BIT ; 
 int /*<<< orphan*/  NILFS_SC_PRIOR_FLUSH ; 
 int SC_FLUSH_DAT ; 
 int SC_FLUSH_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nilfs_sc_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct nilfs_sc_info *sci)
{
	int mode = 0;

	FUNC2(&sci->sc_state_lock);
	mode = (sci->sc_flush_request & FLUSH_DAT_BIT) ?
		SC_FLUSH_DAT : SC_FLUSH_FILE;
	FUNC3(&sci->sc_state_lock);

	if (mode) {
		FUNC1(sci, mode);

		FUNC2(&sci->sc_state_lock);
		sci->sc_flush_request &= (mode == SC_FLUSH_FILE) ?
			~FLUSH_FILE_BIT : ~FLUSH_DAT_BIT;
		FUNC3(&sci->sc_state_lock);
	}
	FUNC0(NILFS_SC_PRIOR_FLUSH, &sci->sc_flags);
}