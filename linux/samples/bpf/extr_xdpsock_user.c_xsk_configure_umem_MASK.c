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
typedef  int /*<<< orphan*/  u64 ;
struct xsk_umem_info {void* buffer; int /*<<< orphan*/  cq; int /*<<< orphan*/  fq; int /*<<< orphan*/  umem; } ;
struct xsk_umem_config {int /*<<< orphan*/  flags; int /*<<< orphan*/  frame_headroom; int /*<<< orphan*/  frame_size; int /*<<< orphan*/  comp_size; int /*<<< orphan*/  fill_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  XSK_RING_CONS__DEFAULT_NUM_DESCS ; 
 int /*<<< orphan*/  XSK_RING_PROD__DEFAULT_NUM_DESCS ; 
 int /*<<< orphan*/  XSK_UMEM__DEFAULT_FRAME_HEADROOM ; 
 struct xsk_umem_info* FUNC0 (int,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  opt_umem_flags ; 
 int /*<<< orphan*/  opt_xsk_frame_size ; 
 int FUNC2 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct xsk_umem_config*) ; 

__attribute__((used)) static struct xsk_umem_info *FUNC3(void *buffer, u64 size)
{
	struct xsk_umem_info *umem;
	struct xsk_umem_config cfg = {
		.fill_size = XSK_RING_PROD__DEFAULT_NUM_DESCS,
		.comp_size = XSK_RING_CONS__DEFAULT_NUM_DESCS,
		.frame_size = opt_xsk_frame_size,
		.frame_headroom = XSK_UMEM__DEFAULT_FRAME_HEADROOM,
		.flags = opt_umem_flags
	};

	int ret;

	umem = FUNC0(1, sizeof(*umem));
	if (!umem)
		FUNC1(errno);

	ret = FUNC2(&umem->umem, buffer, size, &umem->fq, &umem->cq,
			       &cfg);

	if (ret)
		FUNC1(-ret);

	umem->buffer = buffer;
	return umem;
}