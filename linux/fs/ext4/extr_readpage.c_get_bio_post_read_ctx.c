
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;
struct bio_post_read_ctx {unsigned int enabled_steps; struct bio* bio; } ;
struct bio {struct bio_post_read_ctx* bi_private; } ;
typedef int pgoff_t ;


 int ENOMEM ;
 struct bio_post_read_ctx* ERR_PTR (int ) ;
 int GFP_NOFS ;
 scalar_t__ IS_ENCRYPTED (struct inode*) ;
 int STEP_DECRYPT ;
 int STEP_VERITY ;
 scalar_t__ S_ISREG (int ) ;
 int bio_post_read_ctx_pool ;
 scalar_t__ ext4_need_verity (struct inode*,int ) ;
 struct bio_post_read_ctx* mempool_alloc (int ,int ) ;

__attribute__((used)) static struct bio_post_read_ctx *get_bio_post_read_ctx(struct inode *inode,
             struct bio *bio,
             pgoff_t first_idx)
{
 unsigned int post_read_steps = 0;
 struct bio_post_read_ctx *ctx = ((void*)0);

 if (IS_ENCRYPTED(inode) && S_ISREG(inode->i_mode))
  post_read_steps |= 1 << STEP_DECRYPT;

 if (ext4_need_verity(inode, first_idx))
  post_read_steps |= 1 << STEP_VERITY;

 if (post_read_steps) {
  ctx = mempool_alloc(bio_post_read_ctx_pool, GFP_NOFS);
  if (!ctx)
   return ERR_PTR(-ENOMEM);
  ctx->bio = bio;
  ctx->enabled_steps = post_read_steps;
  bio->bi_private = ctx;
 }
 return ctx;
}
