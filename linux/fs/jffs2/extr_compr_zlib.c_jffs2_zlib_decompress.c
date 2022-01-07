
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {unsigned char* next_in; int avail_in; unsigned char* next_out; int avail_out; scalar_t__ total_out; scalar_t__ total_in; } ;


 int MAX_WBITS ;
 unsigned char PRESET_DICT ;
 unsigned char Z_DEFLATED ;
 int Z_FINISH ;
 int Z_OK ;
 int Z_STREAM_END ;
 TYPE_1__ inf_strm ;
 int inflate_mutex ;
 int jffs2_dbg (int,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_notice (char*,int) ;
 int pr_warn (char*) ;
 int zlib_inflate (TYPE_1__*,int ) ;
 int zlib_inflateEnd (TYPE_1__*) ;
 int zlib_inflateInit2 (TYPE_1__*,int) ;

__attribute__((used)) static int jffs2_zlib_decompress(unsigned char *data_in,
     unsigned char *cpage_out,
     uint32_t srclen, uint32_t destlen)
{
 int ret;
 int wbits = MAX_WBITS;

 mutex_lock(&inflate_mutex);

 inf_strm.next_in = data_in;
 inf_strm.avail_in = srclen;
 inf_strm.total_in = 0;

 inf_strm.next_out = cpage_out;
 inf_strm.avail_out = destlen;
 inf_strm.total_out = 0;



 if (srclen > 2 && !(data_in[1] & PRESET_DICT) &&
     ((data_in[0] & 0x0f) == Z_DEFLATED) &&
     !(((data_in[0]<<8) + data_in[1]) % 31)) {

  jffs2_dbg(2, "inflate skipping adler32\n");
  wbits = -((data_in[0] >> 4) + 8);
  inf_strm.next_in += 2;
  inf_strm.avail_in -= 2;
 } else {

  jffs2_dbg(1, "inflate not skipping adler32\n");
 }


 if (Z_OK != zlib_inflateInit2(&inf_strm, wbits)) {
  pr_warn("inflateInit failed\n");
  mutex_unlock(&inflate_mutex);
  return 1;
 }

 while((ret = zlib_inflate(&inf_strm, Z_FINISH)) == Z_OK)
  ;
 if (ret != Z_STREAM_END) {
  pr_notice("inflate returned %d\n", ret);
 }
 zlib_inflateEnd(&inf_strm);
 mutex_unlock(&inflate_mutex);
 return 0;
}
