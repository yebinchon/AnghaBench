
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* z_streamp ;
struct TYPE_5__ {unsigned int pending; unsigned int pending_out; unsigned int pending_buf; } ;
typedef TYPE_2__ deflate_state ;
struct TYPE_4__ {unsigned int avail_out; unsigned int total_out; int * next_out; scalar_t__ state; } ;


 int memcpy (int *,unsigned int,unsigned int) ;

__attribute__((used)) static void flush_pending(
 z_streamp strm
)
{
    deflate_state *s = (deflate_state *) strm->state;
    unsigned len = s->pending;

    if (len > strm->avail_out) len = strm->avail_out;
    if (len == 0) return;

    if (strm->next_out != ((void*)0)) {
 memcpy(strm->next_out, s->pending_out, len);
 strm->next_out += len;
    }
    s->pending_out += len;
    strm->total_out += len;
    strm->avail_out -= len;
    s->pending -= len;
    if (s->pending == 0) {
        s->pending_out = s->pending_buf;
    }
}
