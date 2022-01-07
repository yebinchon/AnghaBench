
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef enum ca0132_sample_rate { ____Placeholder_ca0132_sample_rate } ca0132_sample_rate ;


 int CONTROL_PARAM_CONN_POINT_ID ;
 int CONTROL_PARAM_CONN_POINT_SAMPLE_RATE ;
 int chipio_set_control_param_no_mutex (struct hda_codec*,int ,int) ;

__attribute__((used)) static void chipio_set_conn_rate_no_mutex(struct hda_codec *codec,
    int connid, enum ca0132_sample_rate rate)
{
 chipio_set_control_param_no_mutex(codec,
   CONTROL_PARAM_CONN_POINT_ID, connid);
 chipio_set_control_param_no_mutex(codec,
   CONTROL_PARAM_CONN_POINT_SAMPLE_RATE, rate);
}
