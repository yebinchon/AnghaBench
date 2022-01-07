
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct squashfs_xz {int state; } ;


 int kfree (struct squashfs_xz*) ;
 int xz_dec_end (int ) ;

__attribute__((used)) static void squashfs_xz_free(void *strm)
{
 struct squashfs_xz *stream = strm;

 if (stream) {
  xz_dec_end(stream->state);
  kfree(stream);
 }
}
