
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ uInt ;
struct TYPE_13__ {scalar_t__ lookahead; scalar_t__ strstart; int prev_length; int match_length; scalar_t__ prev_match; scalar_t__ match_start; scalar_t__ max_lazy_match; scalar_t__ strategy; int match_available; int* window; TYPE_1__* strm; } ;
typedef TYPE_2__ deflate_state ;
typedef int block_state ;
struct TYPE_12__ {scalar_t__ avail_out; } ;
typedef scalar_t__ IPos ;


 int Assert (int,char*) ;
 int FLUSH_BLOCK (TYPE_2__*,int) ;
 int FLUSH_BLOCK_ONLY (TYPE_2__*,int ) ;
 int INSERT_STRING (TYPE_2__*,scalar_t__,scalar_t__) ;
 scalar_t__ MAX_DIST (TYPE_2__*) ;
 scalar_t__ MIN_LOOKAHEAD ;
 int MIN_MATCH ;
 scalar_t__ NIL ;
 scalar_t__ TOO_FAR ;
 int Tracevv (int ) ;
 scalar_t__ Z_FILTERED ;
 int Z_FINISH ;
 scalar_t__ Z_HUFFMAN_ONLY ;
 int Z_NO_FLUSH ;
 int block_done ;
 int check_match (TYPE_2__*,scalar_t__,scalar_t__,int) ;
 int fill_window (TYPE_2__*) ;
 int finish_done ;
 int longest_match (TYPE_2__*,scalar_t__) ;
 int need_more ;
 int stderr ;
 int zlib_tr_tally (TYPE_2__*,scalar_t__,int) ;

__attribute__((used)) static block_state deflate_slow(
 deflate_state *s,
 int flush
)
{
    IPos hash_head = NIL;
    int bflush;


    for (;;) {





        if (s->lookahead < MIN_LOOKAHEAD) {
            fill_window(s);
            if (s->lookahead < MIN_LOOKAHEAD && flush == Z_NO_FLUSH) {
         return need_more;
     }
            if (s->lookahead == 0) break;
        }




        if (s->lookahead >= MIN_MATCH) {
            INSERT_STRING(s, s->strstart, hash_head);
        }



        s->prev_length = s->match_length, s->prev_match = s->match_start;
        s->match_length = MIN_MATCH-1;

        if (hash_head != NIL && s->prev_length < s->max_lazy_match &&
            s->strstart - hash_head <= MAX_DIST(s)) {




            if (s->strategy != Z_HUFFMAN_ONLY) {
                s->match_length = longest_match (s, hash_head);
            }


            if (s->match_length <= 5 && (s->strategy == Z_FILTERED ||
                 (s->match_length == MIN_MATCH &&
                  s->strstart - s->match_start > TOO_FAR))) {




                s->match_length = MIN_MATCH-1;
            }
        }



        if (s->prev_length >= MIN_MATCH && s->match_length <= s->prev_length) {
            uInt max_insert = s->strstart + s->lookahead - MIN_MATCH;


            check_match(s, s->strstart-1, s->prev_match, s->prev_length);

            bflush = zlib_tr_tally(s, s->strstart -1 - s->prev_match,
       s->prev_length - MIN_MATCH);






            s->lookahead -= s->prev_length-1;
            s->prev_length -= 2;
            do {
                if (++s->strstart <= max_insert) {
                    INSERT_STRING(s, s->strstart, hash_head);
                }
            } while (--s->prev_length != 0);
            s->match_available = 0;
            s->match_length = MIN_MATCH-1;
            s->strstart++;

            if (bflush) FLUSH_BLOCK(s, 0);

        } else if (s->match_available) {




            Tracevv((stderr,"%c", s->window[s->strstart-1]));
            if (zlib_tr_tally (s, 0, s->window[s->strstart-1])) {
                FLUSH_BLOCK_ONLY(s, 0);
            }
            s->strstart++;
            s->lookahead--;
            if (s->strm->avail_out == 0) return need_more;
        } else {



            s->match_available = 1;
            s->strstart++;
            s->lookahead--;
        }
    }
    Assert (flush != Z_NO_FLUSH, "no flush?");
    if (s->match_available) {
        Tracevv((stderr,"%c", s->window[s->strstart-1]));
        zlib_tr_tally (s, 0, s->window[s->strstart-1]);
        s->match_available = 0;
    }
    FLUSH_BLOCK(s, flush == Z_FINISH);
    return flush == Z_FINISH ? finish_done : block_done;
}
