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
struct xdr_stream {int dummy; } ;
struct xdr_buf {int dummy; } ;
struct pnfs_device {int /*<<< orphan*/  dev_id; int /*<<< orphan*/  pglen; int /*<<< orphan*/  pages; } ;
struct pnfs_block_volume {int dummy; } ;
struct nfs4_deviceid_node {int dummy; } ;
struct pnfs_block_dev {struct nfs4_deviceid_node node; } ;
struct page {int dummy; } ;
struct nfs_server {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nfs_server*,struct pnfs_block_dev*,struct pnfs_block_volume*,int,int /*<<< orphan*/ ) ; 
 struct pnfs_block_volume* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pnfs_block_volume*) ; 
 struct pnfs_block_dev* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct xdr_stream*,struct pnfs_block_volume*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfs4_deviceid_node*,struct nfs_server*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct nfs4_deviceid_node*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct xdr_stream*,struct xdr_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (struct xdr_stream*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct nfs4_deviceid_node *
FUNC14(struct nfs_server *server, struct pnfs_device *pdev,
		gfp_t gfp_mask)
{
	struct nfs4_deviceid_node *node = NULL;
	struct pnfs_block_volume *volumes;
	struct pnfs_block_dev *top;
	struct xdr_stream xdr;
	struct xdr_buf buf;
	struct page *scratch;
	int nr_volumes, ret, i;
	__be32 *p;

	scratch = FUNC1(gfp_mask);
	if (!scratch)
		goto out;

	FUNC11(&xdr, &buf, pdev->pages, pdev->pglen);
	FUNC13(&xdr, FUNC10(scratch), PAGE_SIZE);

	p = FUNC12(&xdr, sizeof(__be32));
	if (!p)
		goto out_free_scratch;
	nr_volumes = FUNC2(p++);

	volumes = FUNC4(nr_volumes, sizeof(struct pnfs_block_volume),
			  gfp_mask);
	if (!volumes)
		goto out_free_scratch;

	for (i = 0; i < nr_volumes; i++) {
		ret = FUNC7(&xdr, &volumes[i]);
		if (ret < 0)
			goto out_free_volumes;
	}

	top = FUNC6(sizeof(*top), gfp_mask);
	if (!top)
		goto out_free_volumes;

	ret = FUNC3(server, top, volumes, nr_volumes - 1, gfp_mask);

	node = &top->node;
	FUNC8(node, server, &pdev->dev_id);
	if (ret)
		FUNC9(node);

out_free_volumes:
	FUNC5(volumes);
out_free_scratch:
	FUNC0(scratch);
out:
	return node;
}