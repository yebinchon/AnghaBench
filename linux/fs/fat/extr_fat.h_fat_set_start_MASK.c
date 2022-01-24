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
struct msdos_dir_entry {void* starthi; void* start; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 

__attribute__((used)) static inline void FUNC1(struct msdos_dir_entry *de, int cluster)
{
	de->start   = FUNC0(cluster);
	de->starthi = FUNC0(cluster >> 16);
}