
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct squashfs_lz4 {int output; int input; } ;


 int kfree (struct squashfs_lz4*) ;
 int vfree (int ) ;

__attribute__((used)) static void lz4_free(void *strm)
{
 struct squashfs_lz4 *stream = strm;

 if (stream) {
  vfree(stream->input);
  vfree(stream->output);
 }
 kfree(stream);
}
