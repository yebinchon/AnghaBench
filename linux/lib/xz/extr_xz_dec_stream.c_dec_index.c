
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {scalar_t__ unpadded; scalar_t__ uncompressed; int crc32; } ;
struct TYPE_6__ {scalar_t__ count; int sequence; TYPE_2__ hash; } ;
struct TYPE_4__ {scalar_t__ count; } ;
struct xz_dec {scalar_t__ vli; TYPE_3__ index; TYPE_1__ block; } ;
struct xz_buf {int in_size; int in_pos; int in; } ;
typedef enum xz_ret { ____Placeholder_xz_ret } xz_ret ;





 int XZ_DATA_ERROR ;
 int XZ_STREAM_END ;
 int dec_vli (struct xz_dec*,int ,int *,int ) ;
 int index_update (struct xz_dec*,struct xz_buf*) ;
 int xz_crc32 (int const*,int,int ) ;

__attribute__((used)) static enum xz_ret dec_index(struct xz_dec *s, struct xz_buf *b)
{
 enum xz_ret ret;

 do {
  ret = dec_vli(s, b->in, &b->in_pos, b->in_size);
  if (ret != XZ_STREAM_END) {
   index_update(s, b);
   return ret;
  }

  switch (s->index.sequence) {
  case 130:
   s->index.count = s->vli;






   if (s->index.count != s->block.count)
    return XZ_DATA_ERROR;

   s->index.sequence = 128;
   break;

  case 128:
   s->index.hash.unpadded += s->vli;
   s->index.sequence = 129;
   break;

  case 129:
   s->index.hash.uncompressed += s->vli;
   s->index.hash.crc32 = xz_crc32(
     (const uint8_t *)&s->index.hash,
     sizeof(s->index.hash),
     s->index.hash.crc32);
   --s->index.count;
   s->index.sequence = 128;
   break;
  }
 } while (s->index.count > 0);

 return XZ_STREAM_END;
}
