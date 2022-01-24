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
struct hw {int model; } ;
typedef  enum ADCSRC { ____Placeholder_ADCSRC } ADCSRC ;

/* Variables and functions */
#define  CTSB055X 130 
#define  CTSB073X 129 
#define  CTUAA 128 
 int FUNC0 (struct hw*,int) ; 
 int FUNC1 (struct hw*,int) ; 
 int FUNC2 (struct hw*,int) ; 

__attribute__((used)) static int FUNC3(struct hw *hw, enum ADCSRC type)
{
	switch (hw->model) {
	case CTSB055X:
		return FUNC0(hw, type);
	case CTSB073X:
		return FUNC2(hw, type);
	case CTUAA:
		return FUNC2(hw, type);
	default:
		return FUNC1(hw, type);
	}
}