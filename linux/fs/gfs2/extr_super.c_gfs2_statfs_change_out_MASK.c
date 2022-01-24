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
struct gfs2_statfs_change_host {int /*<<< orphan*/  sc_dinodes; int /*<<< orphan*/  sc_free; int /*<<< orphan*/  sc_total; } ;
struct gfs2_statfs_change {void* sc_dinodes; void* sc_free; void* sc_total; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(const struct gfs2_statfs_change_host *sc, void *buf)
{
	struct gfs2_statfs_change *str = buf;

	str->sc_total = FUNC0(sc->sc_total);
	str->sc_free = FUNC0(sc->sc_free);
	str->sc_dinodes = FUNC0(sc->sc_dinodes);
}