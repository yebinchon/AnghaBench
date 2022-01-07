
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* buf; } ;
struct xz_dec {scalar_t__ check_type; TYPE_1__ temp; } ;
typedef enum xz_ret { ____Placeholder_xz_ret } xz_ret ;


 int HEADER_MAGIC ;
 int HEADER_MAGIC_SIZE ;
 scalar_t__ XZ_CHECK_CRC32 ;
 scalar_t__ XZ_CHECK_MAX ;
 int XZ_DATA_ERROR ;
 int XZ_FORMAT_ERROR ;
 int XZ_OK ;
 int XZ_OPTIONS_ERROR ;
 int XZ_UNSUPPORTED_CHECK ;
 scalar_t__ get_le32 (scalar_t__*) ;
 int memeq (scalar_t__*,int ,int) ;
 scalar_t__ xz_crc32 (scalar_t__*,int,int ) ;

__attribute__((used)) static enum xz_ret dec_stream_header(struct xz_dec *s)
{
 if (!memeq(s->temp.buf, HEADER_MAGIC, HEADER_MAGIC_SIZE))
  return XZ_FORMAT_ERROR;

 if (xz_crc32(s->temp.buf + HEADER_MAGIC_SIZE, 2, 0)
   != get_le32(s->temp.buf + HEADER_MAGIC_SIZE + 2))
  return XZ_DATA_ERROR;

 if (s->temp.buf[HEADER_MAGIC_SIZE] != 0)
  return XZ_OPTIONS_ERROR;







 s->check_type = s->temp.buf[HEADER_MAGIC_SIZE + 1];
 if (s->check_type > XZ_CHECK_CRC32)
  return XZ_OPTIONS_ERROR;


 return XZ_OK;
}
