
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdtp_stream {int flags; } ;
struct cmp_connection {int dummy; } ;
struct snd_bebob {int version; struct amdtp_stream tx_stream; scalar_t__ maudio_special_quirk; int unit; struct cmp_connection in_conn; struct cmp_connection out_conn; } ;
typedef enum cmp_direction { ____Placeholder_cmp_direction } cmp_direction ;
typedef enum amdtp_stream_direction { ____Placeholder_amdtp_stream_direction } amdtp_stream_direction ;


 int AMDTP_IN_STREAM ;
 int AMDTP_OUT_STREAM ;
 int CIP_BLOCKING ;
 int CIP_EMPTY_HAS_WRONG_DBC ;
 int CIP_SKIP_DBC_ZERO_CHECK ;
 int CMP_INPUT ;
 int CMP_OUTPUT ;
 int amdtp_am824_init (struct amdtp_stream*,int ,int,int ) ;
 int cmp_connection_destroy (struct cmp_connection*) ;
 int cmp_connection_init (struct cmp_connection*,int ,int,int ) ;

__attribute__((used)) static int init_stream(struct snd_bebob *bebob, struct amdtp_stream *stream)
{
 enum amdtp_stream_direction dir_stream;
 struct cmp_connection *conn;
 enum cmp_direction dir_conn;
 int err;

 if (stream == &bebob->tx_stream) {
  dir_stream = AMDTP_IN_STREAM;
  conn = &bebob->out_conn;
  dir_conn = CMP_OUTPUT;
 } else {
  dir_stream = AMDTP_OUT_STREAM;
  conn = &bebob->in_conn;
  dir_conn = CMP_INPUT;
 }

 err = cmp_connection_init(conn, bebob->unit, dir_conn, 0);
 if (err < 0)
  return err;

 err = amdtp_am824_init(stream, bebob->unit, dir_stream, CIP_BLOCKING);
 if (err < 0) {
  cmp_connection_destroy(conn);
  return err;
 }

 if (stream == &bebob->tx_stream) {




  if (bebob->version > 2)
   bebob->tx_stream.flags |= CIP_EMPTY_HAS_WRONG_DBC |
        CIP_SKIP_DBC_ZERO_CHECK;




  if (bebob->maudio_special_quirk)
   bebob->tx_stream.flags |= CIP_EMPTY_HAS_WRONG_DBC;
 }

 return 0;
}
