
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int b_page; int b_state; int b_count; scalar_t__ b_blocknr; int b_size; int b_bdev; } ;


 int atomic_read (int *) ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 scalar_t__ buffer_locked (struct buffer_head*) ;
 scalar_t__ buffer_uptodate (struct buffer_head*) ;
 int scnprintf (char*,size_t,char*,int ,int ,unsigned long long,int ,int ,int ,char*,char*,char*) ;

__attribute__((used)) static int scnprintf_buffer_head(char *buf, size_t size, struct buffer_head *bh)
{
 return scnprintf(buf, size,
    "dev %pg, size %zd, blocknr %llu, count %d, state 0x%lx, page %p, (%s, %s, %s)",
    bh->b_bdev, bh->b_size,
    (unsigned long long)bh->b_blocknr,
    atomic_read(&(bh->b_count)),
    bh->b_state, bh->b_page,
    buffer_uptodate(bh) ? "UPTODATE" : "!UPTODATE",
    buffer_dirty(bh) ? "DIRTY" : "CLEAN",
    buffer_locked(bh) ? "LOCKED" : "UNLOCKED");
}
