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
struct ubifs_wbuf {int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  jhead; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ubifs_wbuf*) ; 

__attribute__((used)) static inline int FUNC3(struct ubifs_wbuf *wbuf)
{
	int err;

	FUNC0(&wbuf->io_mutex, wbuf->jhead);
	err = FUNC2(wbuf);
	FUNC1(&wbuf->io_mutex);
	return err;
}