
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct page {int index; } ;
struct merkle_tree_params {unsigned int digest_size; int num_levels; TYPE_3__* hash_alg; } ;
struct inode {TYPE_2__* i_sb; } ;
struct fsverity_info {int * root_hash; struct merkle_tree_params tree_params; } ;
struct ahash_request {int dummy; } ;
typedef int pgoff_t ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {TYPE_1__* s_vop; } ;
struct TYPE_4__ {struct page* (* read_merkle_tree_page ) (struct inode*,int ) ;} ;


 int FS_VERITY_MAX_DIGEST_SIZE ;
 int FS_VERITY_MAX_LEVELS ;
 scalar_t__ IS_ERR (struct page*) ;
 int PTR_ERR (struct page*) ;
 scalar_t__ PageChecked (struct page*) ;
 int PageLocked (struct page*) ;
 scalar_t__ PageUptodate (struct page*) ;
 int SetPageChecked (struct page*) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int cmp_hashes (struct fsverity_info const*,int const*,int *,int const,int) ;
 int extract_hash (struct page*,unsigned int,unsigned int const,int *) ;
 int fsverity_err (struct inode*,char*,int,int ) ;
 int fsverity_hash_page (struct merkle_tree_params const*,struct inode*,struct ahash_request*,struct page*,int *) ;
 int hash_at_level (struct merkle_tree_params const*,int const,int,int *,unsigned int*) ;
 int pr_debug (char*,int,unsigned int const,unsigned int const,...) ;
 int pr_debug_ratelimited (char*,...) ;
 int put_page (struct page*) ;
 struct page* stub1 (struct inode*,int ) ;

__attribute__((used)) static bool verify_page(struct inode *inode, const struct fsverity_info *vi,
   struct ahash_request *req, struct page *data_page)
{
 const struct merkle_tree_params *params = &vi->tree_params;
 const unsigned int hsize = params->digest_size;
 const pgoff_t index = data_page->index;
 int level;
 u8 _want_hash[FS_VERITY_MAX_DIGEST_SIZE];
 const u8 *want_hash;
 u8 real_hash[FS_VERITY_MAX_DIGEST_SIZE];
 struct page *hpages[FS_VERITY_MAX_LEVELS];
 unsigned int hoffsets[FS_VERITY_MAX_LEVELS];
 int err;

 if (WARN_ON_ONCE(!PageLocked(data_page) || PageUptodate(data_page)))
  return 0;

 pr_debug_ratelimited("Verifying data page %lu...\n", index);






 for (level = 0; level < params->num_levels; level++) {
  pgoff_t hindex;
  unsigned int hoffset;
  struct page *hpage;

  hash_at_level(params, index, level, &hindex, &hoffset);

  pr_debug_ratelimited("Level %d: hindex=%lu, hoffset=%u\n",
         level, hindex, hoffset);

  hpage = inode->i_sb->s_vop->read_merkle_tree_page(inode,
          hindex);
  if (IS_ERR(hpage)) {
   err = PTR_ERR(hpage);
   fsverity_err(inode,
         "Error %d reading Merkle tree page %lu",
         err, hindex);
   goto out;
  }

  if (PageChecked(hpage)) {
   extract_hash(hpage, hoffset, hsize, _want_hash);
   want_hash = _want_hash;
   put_page(hpage);
   pr_debug_ratelimited("Hash page already checked, want %s:%*phN\n",
          params->hash_alg->name,
          hsize, want_hash);
   goto descend;
  }
  pr_debug_ratelimited("Hash page not yet checked\n");
  hpages[level] = hpage;
  hoffsets[level] = hoffset;
 }

 want_hash = vi->root_hash;
 pr_debug("Want root hash: %s:%*phN\n",
   params->hash_alg->name, hsize, want_hash);
descend:

 for (; level > 0; level--) {
  struct page *hpage = hpages[level - 1];
  unsigned int hoffset = hoffsets[level - 1];

  err = fsverity_hash_page(params, inode, req, hpage, real_hash);
  if (err)
   goto out;
  err = cmp_hashes(vi, want_hash, real_hash, index, level - 1);
  if (err)
   goto out;
  SetPageChecked(hpage);
  extract_hash(hpage, hoffset, hsize, _want_hash);
  want_hash = _want_hash;
  put_page(hpage);
  pr_debug("Verified hash page at level %d, now want %s:%*phN\n",
    level - 1, params->hash_alg->name, hsize, want_hash);
 }


 err = fsverity_hash_page(params, inode, req, data_page, real_hash);
 if (err)
  goto out;
 err = cmp_hashes(vi, want_hash, real_hash, index, -1);
out:
 for (; level > 0; level--)
  put_page(hpages[level - 1]);

 return err == 0;
}
