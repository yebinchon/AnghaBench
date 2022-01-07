
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct ocfs2_write_ctxt {unsigned int w_cpos; unsigned int w_clen; int w_large_pages; int w_unwritten_list; int w_dealloc; int w_type; struct buffer_head* w_di_bh; int w_first_new_cpos; } ;
struct ocfs2_super {unsigned int s_clustersize_bits; } ;
struct buffer_head {int dummy; } ;
typedef int ocfs2_write_type_t ;
typedef unsigned int loff_t ;


 int ENOMEM ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 unsigned int PAGE_SHIFT ;
 int UINT_MAX ;
 int get_bh (struct buffer_head*) ;
 struct ocfs2_write_ctxt* kzalloc (int,int ) ;
 int ocfs2_init_dealloc_ctxt (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ocfs2_alloc_write_ctxt(struct ocfs2_write_ctxt **wcp,
      struct ocfs2_super *osb, loff_t pos,
      unsigned len, ocfs2_write_type_t type,
      struct buffer_head *di_bh)
{
 u32 cend;
 struct ocfs2_write_ctxt *wc;

 wc = kzalloc(sizeof(struct ocfs2_write_ctxt), GFP_NOFS);
 if (!wc)
  return -ENOMEM;

 wc->w_cpos = pos >> osb->s_clustersize_bits;
 wc->w_first_new_cpos = UINT_MAX;
 cend = (pos + len - 1) >> osb->s_clustersize_bits;
 wc->w_clen = cend - wc->w_cpos + 1;
 get_bh(di_bh);
 wc->w_di_bh = di_bh;
 wc->w_type = type;

 if (unlikely(PAGE_SHIFT > osb->s_clustersize_bits))
  wc->w_large_pages = 1;
 else
  wc->w_large_pages = 0;

 ocfs2_init_dealloc_ctxt(&wc->w_dealloc);
 INIT_LIST_HEAD(&wc->w_unwritten_list);

 *wcp = wc;

 return 0;
}
