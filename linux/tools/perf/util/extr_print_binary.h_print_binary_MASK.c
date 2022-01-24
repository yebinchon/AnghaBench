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
typedef  int /*<<< orphan*/  binary__fprintf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,size_t,size_t,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static inline void FUNC1(unsigned char *data, size_t len,
				size_t bytes_per_line, binary__fprintf_t printer,
				void *extra)
{
	FUNC0(data, len, bytes_per_line, printer, extra, stdout);
}