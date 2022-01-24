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
struct fsi_priv {int /*<<< orphan*/  capture; int /*<<< orphan*/  playback; } ;
struct fsi_master {struct fsi_priv fsib; struct fsi_priv fsia; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fsi_priv*,int /*<<< orphan*/ *,struct device*) ; 
 struct fsi_master* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *dev)
{
	struct fsi_master *master = FUNC1(dev);
	struct fsi_priv *fsia = &master->fsia;
	struct fsi_priv *fsib = &master->fsib;

	FUNC0(fsia, &fsia->playback, dev);
	FUNC0(fsia, &fsia->capture, dev);

	FUNC0(fsib, &fsib->playback, dev);
	FUNC0(fsib, &fsib->capture, dev);

	return 0;
}