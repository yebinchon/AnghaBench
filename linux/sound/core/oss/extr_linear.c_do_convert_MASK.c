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
struct linear_priv {int copy_ofs; int src_ofs; unsigned int flip; int dst_ofs; int /*<<< orphan*/  dst_bytes; scalar_t__ cvt_endian; int /*<<< orphan*/  copy_bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned int) ; 

__attribute__((used)) static inline void FUNC2(struct linear_priv *data,
			      unsigned char *dst, unsigned char *src)
{
	unsigned int tmp = 0;
	unsigned char *p = (unsigned char *)&tmp;

	FUNC0(p + data->copy_ofs, src + data->src_ofs, data->copy_bytes);
	if (data->cvt_endian)
		tmp = FUNC1(tmp);
	tmp ^= data->flip;
	FUNC0(dst, p + data->dst_ofs, data->dst_bytes);
}