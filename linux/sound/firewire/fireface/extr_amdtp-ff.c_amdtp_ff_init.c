
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_unit {int dummy; } ;
struct amdtp_stream {int dummy; } ;
struct amdtp_ff {int dummy; } ;
typedef enum amdtp_stream_direction { ____Placeholder_amdtp_stream_direction } amdtp_stream_direction ;
typedef int amdtp_stream_process_ctx_payloads_t ;


 int AMDTP_IN_STREAM ;
 int CIP_NO_HEADER ;
 int amdtp_stream_init (struct amdtp_stream*,struct fw_unit*,int,int ,int ,int ,int) ;
 int process_ir_ctx_payloads ;
 int process_it_ctx_payloads ;

int amdtp_ff_init(struct amdtp_stream *s, struct fw_unit *unit,
    enum amdtp_stream_direction dir)
{
 amdtp_stream_process_ctx_payloads_t process_ctx_payloads;

 if (dir == AMDTP_IN_STREAM)
  process_ctx_payloads = process_ir_ctx_payloads;
 else
  process_ctx_payloads = process_it_ctx_payloads;

 return amdtp_stream_init(s, unit, dir, CIP_NO_HEADER, 0,
     process_ctx_payloads, sizeof(struct amdtp_ff));
}
