
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ulg ;
typedef scalar_t__ uInt ;
struct TYPE_6__ {int pending_buf_size; int lookahead; scalar_t__ strstart; scalar_t__ w_size; long block_start; } ;
typedef TYPE_1__ deflate_state ;
typedef int block_state ;


 int Assert (int,char*) ;
 int FLUSH_BLOCK (TYPE_1__*,int) ;
 scalar_t__ MAX_DIST (TYPE_1__*) ;
 int Z_FINISH ;
 int Z_NO_FLUSH ;
 int block_done ;
 int fill_window (TYPE_1__*) ;
 int finish_done ;
 int need_more ;

__attribute__((used)) static block_state deflate_stored(
 deflate_state *s,
 int flush
)
{



    ulg max_block_size = 0xffff;
    ulg max_start;

    if (max_block_size > s->pending_buf_size - 5) {
        max_block_size = s->pending_buf_size - 5;
    }


    for (;;) {

        if (s->lookahead <= 1) {

            Assert(s->strstart < s->w_size+MAX_DIST(s) ||
     s->block_start >= (long)s->w_size, "slide too late");

            fill_window(s);
            if (s->lookahead == 0 && flush == Z_NO_FLUSH) return need_more;

            if (s->lookahead == 0) break;
        }
 Assert(s->block_start >= 0L, "block gone");

 s->strstart += s->lookahead;
 s->lookahead = 0;


  max_start = s->block_start + max_block_size;
        if (s->strstart == 0 || (ulg)s->strstart >= max_start) {

     s->lookahead = (uInt)(s->strstart - max_start);
     s->strstart = (uInt)max_start;
            FLUSH_BLOCK(s, 0);
 }



        if (s->strstart - (uInt)s->block_start >= MAX_DIST(s)) {
            FLUSH_BLOCK(s, 0);
 }
    }
    FLUSH_BLOCK(s, flush == Z_FINISH);
    return flush == Z_FINISH ? finish_done : block_done;
}
