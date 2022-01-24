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
struct wm2000_priv {int /*<<< orphan*/  anc_mode; struct i2c_client* i2c; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANC_OFF ; 
 int /*<<< orphan*/  WM2000_ANC_ENG_CLR ; 
 int /*<<< orphan*/  WM2000_RAM_CLR ; 
 int /*<<< orphan*/  WM2000_REG_ID1 ; 
 int /*<<< orphan*/  WM2000_REG_SYS_CTL2 ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct wm2000_priv *wm2000)
{
	struct i2c_client *i2c = wm2000->i2c;

	FUNC0(i2c, WM2000_REG_SYS_CTL2, WM2000_ANC_ENG_CLR);
	FUNC0(i2c, WM2000_REG_SYS_CTL2, WM2000_RAM_CLR);
	FUNC0(i2c, WM2000_REG_ID1, 0);

	wm2000->anc_mode = ANC_OFF;
}