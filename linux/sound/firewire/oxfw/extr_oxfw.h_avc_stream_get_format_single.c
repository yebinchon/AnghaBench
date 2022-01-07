
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fw_unit {int dummy; } ;
typedef enum avc_general_plug_dir { ____Placeholder_avc_general_plug_dir } avc_general_plug_dir ;


 int avc_stream_get_format (struct fw_unit*,int,unsigned int,int *,unsigned int*,int) ;

__attribute__((used)) static inline int
avc_stream_get_format_single(struct fw_unit *unit,
        enum avc_general_plug_dir dir, unsigned int pid,
        u8 *buf, unsigned int *len)
{
 return avc_stream_get_format(unit, dir, pid, buf, len, 0xff);
}
