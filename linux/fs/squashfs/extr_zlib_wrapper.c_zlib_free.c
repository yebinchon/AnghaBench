
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int workspace; } ;
typedef TYPE_1__ z_stream ;


 int kfree (TYPE_1__*) ;
 int vfree (int ) ;

__attribute__((used)) static void zlib_free(void *strm)
{
 z_stream *stream = strm;

 if (stream)
  vfree(stream->workspace);
 kfree(stream);
}
