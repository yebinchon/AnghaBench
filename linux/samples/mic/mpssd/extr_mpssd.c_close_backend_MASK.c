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
struct TYPE_2__ {int /*<<< orphan*/  backend_file; int /*<<< orphan*/  backend; int /*<<< orphan*/  backend_size; int /*<<< orphan*/  backend_addr; } ;
struct mic_info {TYPE_1__ mic_virtblk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct mic_info *mic)
{
	FUNC2(mic->mic_virtblk.backend_addr, mic->mic_virtblk.backend_size);
	FUNC0(mic->mic_virtblk.backend);
	FUNC1(mic->mic_virtblk.backend_file);
}