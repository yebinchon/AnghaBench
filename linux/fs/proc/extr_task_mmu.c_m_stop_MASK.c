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
struct seq_file {struct proc_maps_private* private; } ;
struct proc_maps_private {int /*<<< orphan*/ * task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct proc_maps_private*) ; 

__attribute__((used)) static void FUNC3(struct seq_file *m, void *v)
{
	struct proc_maps_private *priv = m->private;

	if (!FUNC0(v))
		FUNC2(priv);
	if (priv->task) {
		FUNC1(priv->task);
		priv->task = NULL;
	}
}