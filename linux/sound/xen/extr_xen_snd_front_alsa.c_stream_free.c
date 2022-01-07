
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_snd_front_pcm_stream_info {int pages; int buffer_sz; scalar_t__ buffer; int shbuf; } ;


 int free_pages_exact (scalar_t__,int ) ;
 int kfree (int ) ;
 int stream_clear (struct xen_snd_front_pcm_stream_info*) ;
 int xen_front_pgdir_shbuf_free (int *) ;
 int xen_front_pgdir_shbuf_unmap (int *) ;

__attribute__((used)) static void stream_free(struct xen_snd_front_pcm_stream_info *stream)
{
 xen_front_pgdir_shbuf_unmap(&stream->shbuf);
 xen_front_pgdir_shbuf_free(&stream->shbuf);
 if (stream->buffer)
  free_pages_exact(stream->buffer, stream->buffer_sz);
 kfree(stream->pages);
 stream_clear(stream);
}
