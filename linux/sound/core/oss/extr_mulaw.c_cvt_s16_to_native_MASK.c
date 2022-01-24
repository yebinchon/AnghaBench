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
typedef  int /*<<< orphan*/  u16 ;
struct mulaw_priv {scalar_t__ native_bytes; scalar_t__ copy_bytes; int native_ofs; int copy_ofs; scalar_t__ cvt_endian; int /*<<< orphan*/  flip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct mulaw_priv *data,
				     unsigned char *dst, u16 sample)
{
	sample ^= data->flip;
	if (data->cvt_endian)
		sample = FUNC2(sample);
	if (data->native_bytes > data->copy_bytes)
		FUNC1(dst, 0, data->native_bytes);
	FUNC0(dst + data->native_ofs, (char *)&sample + data->copy_ofs,
	       data->copy_bytes);
}