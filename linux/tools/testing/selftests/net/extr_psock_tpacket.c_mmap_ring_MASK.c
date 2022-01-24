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
struct ring {scalar_t__ mm_space; int rd_num; int flen; TYPE_1__* rd; int /*<<< orphan*/  rd_len; int /*<<< orphan*/  mm_len; } ;
struct TYPE_2__ {scalar_t__ iov_base; int iov_len; } ;

/* Variables and functions */
 scalar_t__ MAP_FAILED ; 
 int MAP_LOCKED ; 
 int MAP_POPULATE ; 
 int MAP_SHARED ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(int sock, struct ring *ring)
{
	int i;

	ring->mm_space = FUNC2(0, ring->mm_len, PROT_READ | PROT_WRITE,
			      MAP_SHARED | MAP_LOCKED | MAP_POPULATE, sock, 0);
	if (ring->mm_space == MAP_FAILED) {
		FUNC3("mmap");
		FUNC0(1);
	}

	FUNC1(ring->rd, 0, ring->rd_len);
	for (i = 0; i < ring->rd_num; ++i) {
		ring->rd[i].iov_base = ring->mm_space + (i * ring->flen);
		ring->rd[i].iov_len = ring->flen;
	}
}