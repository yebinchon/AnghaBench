
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scp_msg {void* data; int hdr; } ;
struct hda_codec {int dummy; } ;
typedef int scp_send ;
typedef int scp_reply ;


 int EINVAL ;
 int EIO ;
 int SCP_GET ;
 unsigned int SCP_MAX_DATA_WORDS ;
 int codec_dbg (struct hda_codec*,char*) ;
 int dspio_send_scp_message (struct hda_codec*,unsigned char*,unsigned int,unsigned char*,int,unsigned int*) ;
 int extract_scp_header (int ,int *,int *,unsigned int*,int *,int *,unsigned int*,unsigned int*,unsigned int*) ;
 int make_scp_header (int,int,int,int,int ,int ,int ,unsigned int) ;
 int memcpy (void*,void const*,unsigned int) ;
 int memset (struct scp_msg*,int ,int) ;
 unsigned int min (unsigned int,unsigned int) ;

__attribute__((used)) static int dspio_scp(struct hda_codec *codec,
  int mod_id, int src_id, int req, int dir, const void *data,
  unsigned int len, void *reply, unsigned int *reply_len)
{
 int status = 0;
 struct scp_msg scp_send, scp_reply;
 unsigned int ret_bytes, send_size, ret_size;
 unsigned int send_get_flag, reply_resp_flag, reply_error_flag;
 unsigned int reply_data_size;

 memset(&scp_send, 0, sizeof(scp_send));
 memset(&scp_reply, 0, sizeof(scp_reply));

 if ((len != 0 && data == ((void*)0)) || (len > SCP_MAX_DATA_WORDS))
  return -EINVAL;

 if (dir == SCP_GET && reply == ((void*)0)) {
  codec_dbg(codec, "dspio_scp get but has no buffer\n");
  return -EINVAL;
 }

 if (reply != ((void*)0) && (reply_len == ((void*)0) || (*reply_len == 0))) {
  codec_dbg(codec, "dspio_scp bad resp buf len parms\n");
  return -EINVAL;
 }

 scp_send.hdr = make_scp_header(mod_id, src_id, (dir == SCP_GET), req,
           0, 0, 0, len/sizeof(unsigned int));
 if (data != ((void*)0) && len > 0) {
  len = min((unsigned int)(sizeof(scp_send.data)), len);
  memcpy(scp_send.data, data, len);
 }

 ret_bytes = 0;
 send_size = sizeof(unsigned int) + len;
 status = dspio_send_scp_message(codec, (unsigned char *)&scp_send,
     send_size, (unsigned char *)&scp_reply,
     sizeof(scp_reply), &ret_bytes);

 if (status < 0) {
  codec_dbg(codec, "dspio_scp: send scp msg failed\n");
  return status;
 }


 extract_scp_header(scp_send.hdr, ((void*)0), ((void*)0), &send_get_flag,
      ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0));
 extract_scp_header(scp_reply.hdr, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
      &reply_resp_flag, &reply_error_flag,
      &reply_data_size);

 if (!send_get_flag)
  return 0;

 if (reply_resp_flag && !reply_error_flag) {
  ret_size = (ret_bytes - sizeof(scp_reply.hdr))
     / sizeof(unsigned int);

  if (*reply_len < ret_size*sizeof(unsigned int)) {
   codec_dbg(codec, "reply too long for buf\n");
   return -EINVAL;
  } else if (ret_size != reply_data_size) {
   codec_dbg(codec, "RetLen and HdrLen .NE.\n");
   return -EINVAL;
  } else if (!reply) {
   codec_dbg(codec, "NULL reply\n");
   return -EINVAL;
  } else {
   *reply_len = ret_size*sizeof(unsigned int);
   memcpy(reply, scp_reply.data, *reply_len);
  }
 } else {
  codec_dbg(codec, "reply ill-formed or errflag set\n");
  return -EIO;
 }

 return status;
}
