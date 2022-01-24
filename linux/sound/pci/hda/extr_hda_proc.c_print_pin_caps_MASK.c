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
struct snd_info_buffer {int dummy; } ;
struct TYPE_2__ {int vendor_id; } ;
struct hda_codec {TYPE_1__ core; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 unsigned int AC_DEFCFG_ASSOC_SHIFT ; 
 unsigned int AC_DEFCFG_DEF_ASSOC ; 
 unsigned int AC_DEFCFG_MISC ; 
 unsigned int AC_DEFCFG_MISC_NO_PRESENCE ; 
 unsigned int AC_DEFCFG_MISC_SHIFT ; 
 unsigned int AC_DEFCFG_PORT_CONN ; 
 unsigned int AC_DEFCFG_PORT_CONN_SHIFT ; 
 unsigned int AC_DEFCFG_SEQUENCE ; 
 unsigned int AC_EAPDBTL_BALANCED ; 
 unsigned int AC_EAPDBTL_EAPD ; 
 unsigned int AC_EAPDBTL_LR_SWAP ; 
 int /*<<< orphan*/  AC_PAR_PIN_CAP ; 
 unsigned int AC_PINCAP_BALANCE ; 
 unsigned int AC_PINCAP_DP ; 
 unsigned int AC_PINCAP_EAPD ; 
 unsigned int AC_PINCAP_HBR ; 
 unsigned int AC_PINCAP_HDMI ; 
 unsigned int AC_PINCAP_HP_DRV ; 
 unsigned int AC_PINCAP_IMP_SENSE ; 
 unsigned int AC_PINCAP_IN ; 
 unsigned int AC_PINCAP_OUT ; 
 unsigned int AC_PINCAP_PRES_DETECT ; 
 unsigned int AC_PINCAP_TRIG_REQ ; 
 unsigned int AC_PINCAP_VREF ; 
 unsigned int AC_PINCAP_VREF_100 ; 
 unsigned int AC_PINCAP_VREF_50 ; 
 unsigned int AC_PINCAP_VREF_80 ; 
 unsigned int AC_PINCAP_VREF_GRD ; 
 unsigned int AC_PINCAP_VREF_HIZ ; 
 unsigned int AC_PINCAP_VREF_SHIFT ; 
 int /*<<< orphan*/  AC_VERB_GET_CONFIG_DEFAULT ; 
 int /*<<< orphan*/  AC_VERB_GET_EAPD_BTLENABLE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 unsigned int FUNC5 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_info_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC8(struct snd_info_buffer *buffer,
			   struct hda_codec *codec, hda_nid_t nid,
			   int *supports_vref)
{
	static const char * const jack_conns[4] = {
		"Jack", "N/A", "Fixed", "Both"
	};
	unsigned int caps, val;

	caps = FUNC5(codec, nid, AC_PAR_PIN_CAP);
	FUNC7(buffer, "  Pincap 0x%08x:", caps);
	if (caps & AC_PINCAP_IN)
		FUNC7(buffer, " IN");
	if (caps & AC_PINCAP_OUT)
		FUNC7(buffer, " OUT");
	if (caps & AC_PINCAP_HP_DRV)
		FUNC7(buffer, " HP");
	if (caps & AC_PINCAP_EAPD)
		FUNC7(buffer, " EAPD");
	if (caps & AC_PINCAP_PRES_DETECT)
		FUNC7(buffer, " Detect");
	if (caps & AC_PINCAP_BALANCE)
		FUNC7(buffer, " Balanced");
	if (caps & AC_PINCAP_HDMI) {
		/* Realtek uses this bit as a different meaning */
		if ((codec->core.vendor_id >> 16) == 0x10ec)
			FUNC7(buffer, " R/L");
		else {
			if (caps & AC_PINCAP_HBR)
				FUNC7(buffer, " HBR");
			FUNC7(buffer, " HDMI");
		}
	}
	if (caps & AC_PINCAP_DP)
		FUNC7(buffer, " DP");
	if (caps & AC_PINCAP_TRIG_REQ)
		FUNC7(buffer, " Trigger");
	if (caps & AC_PINCAP_IMP_SENSE)
		FUNC7(buffer, " ImpSense");
	FUNC7(buffer, "\n");
	if (caps & AC_PINCAP_VREF) {
		unsigned int vref =
			(caps & AC_PINCAP_VREF) >> AC_PINCAP_VREF_SHIFT;
		FUNC7(buffer, "    Vref caps:");
		if (vref & AC_PINCAP_VREF_HIZ)
			FUNC7(buffer, " HIZ");
		if (vref & AC_PINCAP_VREF_50)
			FUNC7(buffer, " 50");
		if (vref & AC_PINCAP_VREF_GRD)
			FUNC7(buffer, " GRD");
		if (vref & AC_PINCAP_VREF_80)
			FUNC7(buffer, " 80");
		if (vref & AC_PINCAP_VREF_100)
			FUNC7(buffer, " 100");
		FUNC7(buffer, "\n");
		*supports_vref = 1;
	} else
		*supports_vref = 0;
	if (caps & AC_PINCAP_EAPD) {
		val = FUNC6(codec, nid, 0,
					 AC_VERB_GET_EAPD_BTLENABLE, 0);
		FUNC7(buffer, "  EAPD 0x%x:", val);
		if (val & AC_EAPDBTL_BALANCED)
			FUNC7(buffer, " BALANCED");
		if (val & AC_EAPDBTL_EAPD)
			FUNC7(buffer, " EAPD");
		if (val & AC_EAPDBTL_LR_SWAP)
			FUNC7(buffer, " R/L");
		FUNC7(buffer, "\n");
	}
	caps = FUNC6(codec, nid, 0, AC_VERB_GET_CONFIG_DEFAULT, 0);
	FUNC7(buffer, "  Pin Default 0x%08x: [%s] %s at %s %s\n", caps,
		    jack_conns[(caps & AC_DEFCFG_PORT_CONN) >> AC_DEFCFG_PORT_CONN_SHIFT],
		    FUNC4(caps),
		    FUNC2(caps),
		    FUNC3(caps));
	FUNC7(buffer, "    Conn = %s, Color = %s\n",
		    FUNC1(caps),
		    FUNC0(caps));
	/* Default association and sequence values refer to default grouping
	 * of pin complexes and their sequence within the group. This is used
	 * for priority and resource allocation.
	 */
	FUNC7(buffer, "    DefAssociation = 0x%x, Sequence = 0x%x\n",
		    (caps & AC_DEFCFG_DEF_ASSOC) >> AC_DEFCFG_ASSOC_SHIFT,
		    caps & AC_DEFCFG_SEQUENCE);
	if (((caps & AC_DEFCFG_MISC) >> AC_DEFCFG_MISC_SHIFT) &
	    AC_DEFCFG_MISC_NO_PRESENCE) {
		/* Miscellaneous bit indicates external hardware does not
		 * support presence detection even if the pin complex
		 * indicates it is supported.
		 */
		FUNC7(buffer, "    Misc = NO_PRESENCE\n");
	}
}