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
struct wm8903_priv {int /*<<< orphan*/  supplies; } ;
struct i2c_client {scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct wm8903_priv*) ; 
 struct wm8903_priv* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wm8903_priv*) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct wm8903_priv *wm8903 = FUNC2(client);

	FUNC3(FUNC0(wm8903->supplies),
			       wm8903->supplies);
	if (client->irq)
		FUNC1(client->irq, wm8903);
	FUNC4(wm8903);

	return 0;
}