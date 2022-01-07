
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* z_streamp ;
struct TYPE_5__ {int status; } ;
typedef TYPE_2__ deflate_state ;
struct TYPE_4__ {int * state; } ;


 int BUSY_STATE ;
 int FINISH_STATE ;
 int INIT_STATE ;
 int Z_DATA_ERROR ;
 int Z_OK ;
 int Z_STREAM_ERROR ;

int zlib_deflateEnd(
 z_streamp strm
)
{
    int status;
    deflate_state *s;

    if (strm == ((void*)0) || strm->state == ((void*)0)) return Z_STREAM_ERROR;
    s = (deflate_state *) strm->state;

    status = s->status;
    if (status != INIT_STATE && status != BUSY_STATE &&
 status != FINISH_STATE) {
      return Z_STREAM_ERROR;
    }

    strm->state = ((void*)0);

    return status == BUSY_STATE ? Z_DATA_ERROR : Z_OK;
}
