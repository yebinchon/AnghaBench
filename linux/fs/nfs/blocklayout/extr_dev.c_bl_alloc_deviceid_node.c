
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct xdr_buf {int dummy; } ;
struct pnfs_device {int dev_id; int pglen; int pages; } ;
struct pnfs_block_volume {int dummy; } ;
struct nfs4_deviceid_node {int dummy; } ;
struct pnfs_block_dev {struct nfs4_deviceid_node node; } ;
struct page {int dummy; } ;
struct nfs_server {int dummy; } ;
typedef int gfp_t ;
typedef int __be32 ;


 int PAGE_SIZE ;
 int __free_page (struct page*) ;
 struct page* alloc_page (int ) ;
 int be32_to_cpup (int ) ;
 int bl_parse_deviceid (struct nfs_server*,struct pnfs_block_dev*,struct pnfs_block_volume*,int,int ) ;
 struct pnfs_block_volume* kcalloc (int,int,int ) ;
 int kfree (struct pnfs_block_volume*) ;
 struct pnfs_block_dev* kzalloc (int,int ) ;
 int nfs4_block_decode_volume (struct xdr_stream*,struct pnfs_block_volume*) ;
 int nfs4_init_deviceid_node (struct nfs4_deviceid_node*,struct nfs_server*,int *) ;
 int nfs4_mark_deviceid_unavailable (struct nfs4_deviceid_node*) ;
 int page_address (struct page*) ;
 int xdr_init_decode_pages (struct xdr_stream*,struct xdr_buf*,int ,int ) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;
 int xdr_set_scratch_buffer (struct xdr_stream*,int ,int ) ;

struct nfs4_deviceid_node *
bl_alloc_deviceid_node(struct nfs_server *server, struct pnfs_device *pdev,
  gfp_t gfp_mask)
{
 struct nfs4_deviceid_node *node = ((void*)0);
 struct pnfs_block_volume *volumes;
 struct pnfs_block_dev *top;
 struct xdr_stream xdr;
 struct xdr_buf buf;
 struct page *scratch;
 int nr_volumes, ret, i;
 __be32 *p;

 scratch = alloc_page(gfp_mask);
 if (!scratch)
  goto out;

 xdr_init_decode_pages(&xdr, &buf, pdev->pages, pdev->pglen);
 xdr_set_scratch_buffer(&xdr, page_address(scratch), PAGE_SIZE);

 p = xdr_inline_decode(&xdr, sizeof(__be32));
 if (!p)
  goto out_free_scratch;
 nr_volumes = be32_to_cpup(p++);

 volumes = kcalloc(nr_volumes, sizeof(struct pnfs_block_volume),
     gfp_mask);
 if (!volumes)
  goto out_free_scratch;

 for (i = 0; i < nr_volumes; i++) {
  ret = nfs4_block_decode_volume(&xdr, &volumes[i]);
  if (ret < 0)
   goto out_free_volumes;
 }

 top = kzalloc(sizeof(*top), gfp_mask);
 if (!top)
  goto out_free_volumes;

 ret = bl_parse_deviceid(server, top, volumes, nr_volumes - 1, gfp_mask);

 node = &top->node;
 nfs4_init_deviceid_node(node, server, &pdev->dev_id);
 if (ret)
  nfs4_mark_deviceid_unavailable(node);

out_free_volumes:
 kfree(volumes);
out_free_scratch:
 __free_page(scratch);
out:
 return node;
}
