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
typedef  int /*<<< orphan*/  u8 ;
struct ts_state {int dummy; } ;
struct ts_config {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ts_state*) ; 
 unsigned int FUNC1 (unsigned int,int /*<<< orphan*/  const**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC2(unsigned int offset, const u8 **text,
					  struct ts_config *conf,
					  struct ts_state *state)
{
	return FUNC1(offset, text, FUNC0(state));
}