
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct squashfs_lzo {int output; int input; } ;


 int kfree (struct squashfs_lzo*) ;
 int vfree (int ) ;

__attribute__((used)) static void lzo_free(void *strm)
{
 struct squashfs_lzo *stream = strm;

 if (stream) {
  vfree(stream->input);
  vfree(stream->output);
 }
 kfree(stream);
}
