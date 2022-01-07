
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_bus {scalar_t__ ppcap; } ;
typedef enum hdac_ext_stream_type { ____Placeholder_hdac_ext_stream_type } hdac_ext_stream_type ;


 int HDAC_EXT_STREAM_TYPE_COUPLED ;
 int HDAC_EXT_STREAM_TYPE_HOST ;

__attribute__((used)) static enum hdac_ext_stream_type skl_get_host_stream_type(struct hdac_bus *bus)
{
 if (bus->ppcap)
  return HDAC_EXT_STREAM_TYPE_HOST;
 else
  return HDAC_EXT_STREAM_TYPE_COUPLED;
}
