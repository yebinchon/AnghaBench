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
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rsnd_priv*,int) ; 
 int FUNC2 (struct rsnd_priv*) ; 
 struct rsnd_mod* FUNC3 (int /*<<< orphan*/ ) ; 

struct rsnd_mod *FUNC4(struct rsnd_priv *priv, int id)
{
	if (FUNC0(id < 0 || id >= FUNC2(priv)))
		id = 0;

	return FUNC3(FUNC1(priv, id));
}