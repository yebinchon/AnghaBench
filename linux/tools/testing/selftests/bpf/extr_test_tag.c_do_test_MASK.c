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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  ftag ;
typedef  int /*<<< orphan*/  atag ;

/* Variables and functions */
 int BPF_MAXINSNS ; 
 int FUNC0 (int,int,void (*) (unsigned int,int)) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC7(uint32_t *tests, int start_insns, int fd_map,
		    void (*bpf_filler)(unsigned int insns, int fd))
{
	int i, fd_prog;

	for (i = start_insns; i <= BPF_MAXINSNS; i++) {
		uint8_t ftag[8], atag[sizeof(ftag)];

		fd_prog = FUNC0(i, fd_map, bpf_filler);
		FUNC6(fd_prog, ftag, sizeof(ftag));
		FUNC5(i, atag, sizeof(atag));
		if (FUNC2(ftag, atag, sizeof(ftag)))
			FUNC4(i, fd_map, ftag, atag, sizeof(ftag));

		FUNC1(fd_prog);
		FUNC3();
		(*tests)++;
	}
}