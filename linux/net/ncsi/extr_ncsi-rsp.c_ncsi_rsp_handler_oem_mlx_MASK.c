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
struct ncsi_rsp_oem_pkt {scalar_t__ data; } ;
struct ncsi_rsp_oem_mlx_pkt {scalar_t__ cmd; scalar_t__ param; } ;
struct ncsi_request {int /*<<< orphan*/  rsp; } ;

/* Variables and functions */
 scalar_t__ NCSI_OEM_MLX_CMD_GMA ; 
 scalar_t__ NCSI_OEM_MLX_CMD_GMA_PARAM ; 
 int FUNC0 (struct ncsi_request*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ncsi_request *nr)
{
	struct ncsi_rsp_oem_mlx_pkt *mlx;
	struct ncsi_rsp_oem_pkt *rsp;

	/* Get the response header */
	rsp = (struct ncsi_rsp_oem_pkt *)FUNC1(nr->rsp);
	mlx = (struct ncsi_rsp_oem_mlx_pkt *)(rsp->data);

	if (mlx->cmd == NCSI_OEM_MLX_CMD_GMA &&
	    mlx->param == NCSI_OEM_MLX_CMD_GMA_PARAM)
		return FUNC0(nr);
	return 0;
}