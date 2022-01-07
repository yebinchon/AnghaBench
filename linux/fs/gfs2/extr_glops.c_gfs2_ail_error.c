
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ln_sbd; int ln_number; int ln_type; } ;
struct gfs2_glock {TYPE_1__ gl_name; } ;
struct buffer_head {TYPE_2__* b_page; int b_state; scalar_t__ b_blocknr; } ;
struct TYPE_4__ {int flags; int mapping; } ;


 int fs_err (int ,char*,struct buffer_head const*,unsigned long long,int ,...) ;
 int gfs2_glock2aspace (struct gfs2_glock*) ;
 int gfs2_lm_withdraw (int ,char*) ;

__attribute__((used)) static void gfs2_ail_error(struct gfs2_glock *gl, const struct buffer_head *bh)
{
 fs_err(gl->gl_name.ln_sbd,
        "AIL buffer %p: blocknr %llu state 0x%08lx mapping %p page "
        "state 0x%lx\n",
        bh, (unsigned long long)bh->b_blocknr, bh->b_state,
        bh->b_page->mapping, bh->b_page->flags);
 fs_err(gl->gl_name.ln_sbd, "AIL glock %u:%llu mapping %p\n",
        gl->gl_name.ln_type, gl->gl_name.ln_number,
        gfs2_glock2aspace(gl));
 gfs2_lm_withdraw(gl->gl_name.ln_sbd, "AIL error\n");
}
