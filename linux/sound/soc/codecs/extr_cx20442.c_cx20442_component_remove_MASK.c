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
struct tty_struct {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct cx20442_priv {int /*<<< orphan*/  por; struct tty_struct* tty; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cx20442_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct cx20442_priv* FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC6(struct snd_soc_component *component)
{
	struct cx20442_priv *cx20442 = FUNC3(component);

	if (cx20442->tty) {
		struct tty_struct *tty = cx20442->tty;
		FUNC5(tty);
	}

	if (!FUNC0(cx20442->por)) {
		/* should be already in STANDBY, hence disabled */
		FUNC2(cx20442->por);
	}

	FUNC4(component, NULL);
	FUNC1(cx20442);
}