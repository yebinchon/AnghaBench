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

/* Variables and functions */
 char FUNC0 (char) ; 

__attribute__((used)) static bool FUNC1(char symbol_type)
{
	symbol_type = FUNC0(symbol_type);
	return symbol_type == 'T' || symbol_type == 'W' || symbol_type == 'D' || symbol_type == 'B';
}