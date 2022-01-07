
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {int size; int pos; } ;
struct TYPE_7__ {int size; int hash; } ;
struct TYPE_6__ {int compressed; int hash; } ;
struct TYPE_5__ {int size; } ;
struct xz_dec {size_t in_start; int sequence; TYPE_4__ temp; TYPE_3__ index; TYPE_2__ block; int check_type; TYPE_1__ block_header; } ;
struct xz_buf {size_t in_pos; size_t in_size; int * in; } ;
typedef enum xz_ret { ____Placeholder_xz_ret } xz_ret ;
 int STREAM_HEADER_SIZE ;
 int XZ_CHECK_CRC32 ;
 int XZ_DATA_ERROR ;
 int XZ_OK ;
 int XZ_STREAM_END ;
 int check_skip (struct xz_dec*,struct xz_buf*) ;
 int crc32_validate (struct xz_dec*,struct xz_buf*) ;
 int dec_block (struct xz_dec*,struct xz_buf*) ;
 int dec_block_header (struct xz_dec*) ;
 int dec_index (struct xz_dec*,struct xz_buf*) ;
 int dec_stream_footer (struct xz_dec*) ;
 int dec_stream_header (struct xz_dec*) ;
 int fill_temp (struct xz_dec*,struct xz_buf*) ;
 int index_update (struct xz_dec*,struct xz_buf*) ;
 int memeq (int *,int *,int) ;

__attribute__((used)) static enum xz_ret dec_main(struct xz_dec *s, struct xz_buf *b)
{
 enum xz_ret ret;





 s->in_start = b->in_pos;

 while (1) {
  switch (s->sequence) {
  case 128:
   if (!fill_temp(s, b))
    return XZ_OK;
   s->sequence = 134;

   ret = dec_stream_header(s);
   if (ret != XZ_OK)
    return ret;



  case 134:

   if (b->in_pos == b->in_size)
    return XZ_OK;


   if (b->in[b->in_pos] == 0) {
    s->in_start = b->in_pos++;
    s->sequence = 132;
    break;
   }





   s->block_header.size
    = ((uint32_t)b->in[b->in_pos] + 1) * 4;

   s->temp.size = s->block_header.size;
   s->temp.pos = 0;
   s->sequence = 136;



  case 136:
   if (!fill_temp(s, b))
    return XZ_OK;

   ret = dec_block_header(s);
   if (ret != XZ_OK)
    return ret;

   s->sequence = 133;



  case 133:
   ret = dec_block(s, b);
   if (ret != XZ_STREAM_END)
    return ret;

   s->sequence = 135;



  case 135:







   while (s->block.compressed & 3) {
    if (b->in_pos == b->in_size)
     return XZ_OK;

    if (b->in[b->in_pos++] != 0)
     return XZ_DATA_ERROR;

    ++s->block.compressed;
   }

   s->sequence = 137;



  case 137:
   if (s->check_type == XZ_CHECK_CRC32) {
    ret = crc32_validate(s, b);
    if (ret != XZ_STREAM_END)
     return ret;
   }






   s->sequence = 134;
   break;

  case 132:
   ret = dec_index(s, b);
   if (ret != XZ_STREAM_END)
    return ret;

   s->sequence = 130;



  case 130:
   while ((s->index.size + (b->in_pos - s->in_start))
     & 3) {
    if (b->in_pos == b->in_size) {
     index_update(s, b);
     return XZ_OK;
    }

    if (b->in[b->in_pos++] != 0)
     return XZ_DATA_ERROR;
   }


   index_update(s, b);


   if (!memeq(&s->block.hash, &s->index.hash,
     sizeof(s->block.hash)))
    return XZ_DATA_ERROR;

   s->sequence = 131;



  case 131:
   ret = crc32_validate(s, b);
   if (ret != XZ_STREAM_END)
    return ret;

   s->temp.size = STREAM_HEADER_SIZE;
   s->sequence = 129;



  case 129:
   if (!fill_temp(s, b))
    return XZ_OK;

   return dec_stream_footer(s);
  }
 }


}
