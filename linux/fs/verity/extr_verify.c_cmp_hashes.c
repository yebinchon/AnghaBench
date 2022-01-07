
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {unsigned int digest_size; TYPE_1__* hash_alg; } ;
struct fsverity_info {TYPE_2__ tree_params; int inode; } ;
typedef int pgoff_t ;
struct TYPE_3__ {int name; } ;


 int EBADMSG ;
 int fsverity_err (int ,char*,int ,int,int ,unsigned int const,int const*,int ,unsigned int const,int const*) ;
 scalar_t__ memcmp (int const*,int const*,unsigned int const) ;

__attribute__((used)) static inline int cmp_hashes(const struct fsverity_info *vi,
        const u8 *want_hash, const u8 *real_hash,
        pgoff_t index, int level)
{
 const unsigned int hsize = vi->tree_params.digest_size;

 if (memcmp(want_hash, real_hash, hsize) == 0)
  return 0;

 fsverity_err(vi->inode,
       "FILE CORRUPTED! index=%lu, level=%d, want_hash=%s:%*phN, real_hash=%s:%*phN",
       index, level,
       vi->tree_params.hash_alg->name, hsize, want_hash,
       vi->tree_params.hash_alg->name, hsize, real_hash);
 return -EBADMSG;
}
