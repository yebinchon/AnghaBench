
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int CONTROL_PARAM_STREAM_DEST_CONN_POINT ;
 int CONTROL_PARAM_STREAM_ID ;
 int CONTROL_PARAM_STREAM_SOURCE_CONN_POINT ;
 int chipio_set_control_param_no_mutex (struct hda_codec*,int ,int) ;

__attribute__((used)) static void chipio_set_stream_source_dest(struct hda_codec *codec,
    int streamid, int source_point, int dest_point)
{
 chipio_set_control_param_no_mutex(codec,
   CONTROL_PARAM_STREAM_ID, streamid);
 chipio_set_control_param_no_mutex(codec,
   CONTROL_PARAM_STREAM_SOURCE_CONN_POINT, source_point);
 chipio_set_control_param_no_mutex(codec,
   CONTROL_PARAM_STREAM_DEST_CONN_POINT, dest_point);
}
