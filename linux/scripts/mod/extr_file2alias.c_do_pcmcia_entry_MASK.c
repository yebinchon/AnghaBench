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
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int**) ; 
 int PCMCIA_DEV_ID_MATCH_CARD_ID ; 
 int PCMCIA_DEV_ID_MATCH_DEVICE_NO ; 
 int PCMCIA_DEV_ID_MATCH_FUNCTION ; 
 int PCMCIA_DEV_ID_MATCH_FUNC_ID ; 
 int PCMCIA_DEV_ID_MATCH_MANF_ID ; 
 int PCMCIA_DEV_ID_MATCH_PROD_ID1 ; 
 int PCMCIA_DEV_ID_MATCH_PROD_ID2 ; 
 int PCMCIA_DEV_ID_MATCH_PROD_ID3 ; 
 int PCMCIA_DEV_ID_MATCH_PROD_ID4 ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int card_id ; 
 int device_no ; 
 int func_id ; 
 int function ; 
 int manf_id ; 
 int match_flags ; 
 int /*<<< orphan*/  pcmcia_device_id ; 
 int** prod_id_hash ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static int FUNC6(const char *filename,
			   void *symval, char *alias)
{
	unsigned int i;
	FUNC1(symval, pcmcia_device_id, match_flags);
	FUNC1(symval, pcmcia_device_id, manf_id);
	FUNC1(symval, pcmcia_device_id, card_id);
	FUNC1(symval, pcmcia_device_id, func_id);
	FUNC1(symval, pcmcia_device_id, function);
	FUNC1(symval, pcmcia_device_id, device_no);
	FUNC2(symval, pcmcia_device_id, prod_id_hash);

	for (i=0; i<4; i++) {
		(*prod_id_hash)[i] = FUNC3((*prod_id_hash)[i]);
	}

	FUNC5(alias, "pcmcia:");
	FUNC0(alias, "m", match_flags & PCMCIA_DEV_ID_MATCH_MANF_ID,
	    manf_id);
	FUNC0(alias, "c", match_flags & PCMCIA_DEV_ID_MATCH_CARD_ID,
	    card_id);
	FUNC0(alias, "f", match_flags & PCMCIA_DEV_ID_MATCH_FUNC_ID,
	    func_id);
	FUNC0(alias, "fn", match_flags & PCMCIA_DEV_ID_MATCH_FUNCTION,
	    function);
	FUNC0(alias, "pfn", match_flags & PCMCIA_DEV_ID_MATCH_DEVICE_NO,
	    device_no);
	FUNC0(alias, "pa", match_flags & PCMCIA_DEV_ID_MATCH_PROD_ID1, (*prod_id_hash)[0]);
	FUNC0(alias, "pb", match_flags & PCMCIA_DEV_ID_MATCH_PROD_ID2, (*prod_id_hash)[1]);
	FUNC0(alias, "pc", match_flags & PCMCIA_DEV_ID_MATCH_PROD_ID3, (*prod_id_hash)[2]);
	FUNC0(alias, "pd", match_flags & PCMCIA_DEV_ID_MATCH_PROD_ID4, (*prod_id_hash)[3]);

	FUNC4(alias);
	return 1;
}