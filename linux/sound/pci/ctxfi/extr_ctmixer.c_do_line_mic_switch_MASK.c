#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ct_atc {int /*<<< orphan*/  card; int /*<<< orphan*/  mixer; int /*<<< orphan*/  (* select_mic_in ) (struct ct_atc*) ;int /*<<< orphan*/  (* select_line_in ) (struct ct_atc*) ;} ;
typedef  enum CTALSA_MIXER_CTL { ____Placeholder_CTALSA_MIXER_CTL } CTALSA_MIXER_CTL ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int MIXER_LINEIN_C_S ; 
 int MIXER_MIC_C_S ; 
 int /*<<< orphan*/  SNDRV_CTL_EVENT_MASK_VALUE ; 
 TYPE_1__** kctls ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ct_atc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ct_atc*) ; 

__attribute__((used)) static void
FUNC4(struct ct_atc *atc, enum CTALSA_MIXER_CTL type)
{

	if (MIXER_LINEIN_C_S == type) {
		atc->select_line_in(atc);
		FUNC0(atc->mixer, MIXER_MIC_C_S, 0);
		FUNC1(atc->card, SNDRV_CTL_EVENT_MASK_VALUE,
							&kctls[1]->id);
	} else if (MIXER_MIC_C_S == type) {
		atc->select_mic_in(atc);
		FUNC0(atc->mixer, MIXER_LINEIN_C_S, 0);
		FUNC1(atc->card, SNDRV_CTL_EVENT_MASK_VALUE,
							&kctls[0]->id);
	}
}