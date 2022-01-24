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
typedef  size_t u8 ;

/* Variables and functions */
 size_t const WLAN_EID_EXTENSION ; 
 size_t const WLAN_EID_RIC_DATA ; 
 int /*<<< orphan*/  FUNC0 (size_t const*,int,size_t const,int) ; 
 size_t FUNC1 (size_t const*,size_t,size_t) ; 

size_t FUNC2(const u8 *ies, size_t ielen,
			      const u8 *ids, int n_ids,
			      const u8 *after_ric, int n_after_ric,
			      size_t offset)
{
	size_t pos = offset;

	while (pos < ielen) {
		u8 ext = 0;

		if (ies[pos] == WLAN_EID_EXTENSION)
			ext = 2;
		if ((pos + ext) >= ielen)
			break;

		if (!FUNC0(ids, n_ids, ies[pos + ext],
					  ies[pos] == WLAN_EID_EXTENSION))
			break;

		if (ies[pos] == WLAN_EID_RIC_DATA && n_after_ric) {
			pos = FUNC1(ies, ielen, pos);

			while (pos < ielen) {
				if (ies[pos] == WLAN_EID_EXTENSION)
					ext = 2;
				else
					ext = 0;

				if ((pos + ext) >= ielen)
					break;

				if (!FUNC0(after_ric,
							  n_after_ric,
							  ies[pos + ext],
							  ext == 2))
					pos = FUNC1(ies, ielen, pos);
				else
					break;
			}
		} else {
			pos = FUNC1(ies, ielen, pos);
		}
	}

	return pos;
}