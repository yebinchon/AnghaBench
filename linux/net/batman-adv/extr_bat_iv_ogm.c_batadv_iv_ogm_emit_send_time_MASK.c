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
struct batadv_priv {int /*<<< orphan*/  orig_interval; } ;

/* Variables and functions */
 int BATADV_JITTER ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (unsigned int) ; 
 int FUNC2 () ; 

__attribute__((used)) static unsigned long
FUNC3(const struct batadv_priv *bat_priv)
{
	unsigned int msecs;

	msecs = FUNC0(&bat_priv->orig_interval) - BATADV_JITTER;
	msecs += FUNC2() % (2 * BATADV_JITTER);

	return jiffies + FUNC1(msecs);
}