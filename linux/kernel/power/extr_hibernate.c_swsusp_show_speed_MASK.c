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
typedef  unsigned int u64 ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int NSEC_PER_MSEC ; 
 int PAGE_SIZE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ; 

void FUNC3(ktime_t start, ktime_t stop,
		      unsigned nr_pages, char *msg)
{
	ktime_t diff;
	u64 elapsed_centisecs64;
	unsigned int centisecs;
	unsigned int k;
	unsigned int kps;

	diff = FUNC1(stop, start);
	elapsed_centisecs64 = FUNC0(diff, 10*NSEC_PER_MSEC);
	centisecs = elapsed_centisecs64;
	if (centisecs == 0)
		centisecs = 1;	/* avoid div-by-zero */
	k = nr_pages * (PAGE_SIZE / 1024);
	kps = (k * 100) / centisecs;
	FUNC2("%s %u kbytes in %u.%02u seconds (%u.%02u MB/s)\n",
		msg, k, centisecs / 100, centisecs % 100, kps / 1000,
		(kps % 1000) / 10);
}