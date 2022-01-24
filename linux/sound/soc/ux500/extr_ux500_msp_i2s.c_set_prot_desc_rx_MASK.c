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
typedef  int /*<<< orphan*/  u32 ;
struct ux500_msp {scalar_t__ registers; scalar_t__ def_elem_len; } ;
struct msp_protdesc {int rx_elem_len_1; int rx_elem_len_2; int /*<<< orphan*/  frame_sync_ignore; int /*<<< orphan*/  expansion_mode; int /*<<< orphan*/  rx_half_word_swap; int /*<<< orphan*/  rx_fsync_pol; int /*<<< orphan*/  rx_byte_order; int /*<<< orphan*/  rx_data_delay; int /*<<< orphan*/  rx_frame_len_2; int /*<<< orphan*/  rx_frame_len_1; int /*<<< orphan*/  rx_phase2_start_mode; int /*<<< orphan*/  rx_phase_mode; } ;
typedef  enum msp_data_size { ____Placeholder_msp_data_size } msp_data_size ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ MSP_RCF ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC13(struct ux500_msp *msp,
			struct msp_protdesc *protdesc,
			enum msp_data_size data_size)
{
	u32 temp_reg = 0;

	temp_reg |= FUNC6(protdesc->rx_phase_mode);
	temp_reg |= FUNC8(protdesc->rx_phase2_start_mode);
	temp_reg |= FUNC4(protdesc->rx_frame_len_1);
	temp_reg |= FUNC7(protdesc->rx_frame_len_2);
	if (msp->def_elem_len) {
		temp_reg |= FUNC3(protdesc->rx_elem_len_1);
		temp_reg |= FUNC5(protdesc->rx_elem_len_2);
	} else {
		temp_reg |= FUNC3(data_size);
		temp_reg |= FUNC5(data_size);
	}

	temp_reg |= FUNC0(protdesc->rx_data_delay);
	temp_reg |= FUNC10(protdesc->rx_byte_order);
	temp_reg |= FUNC2(protdesc->rx_fsync_pol);
	temp_reg |= FUNC1(protdesc->rx_half_word_swap);
	temp_reg |= FUNC9(protdesc->expansion_mode);
	temp_reg |= FUNC11(protdesc->frame_sync_ignore);

	FUNC12(temp_reg, msp->registers + MSP_RCF);
}