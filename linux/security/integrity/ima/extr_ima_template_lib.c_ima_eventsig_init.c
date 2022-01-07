
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ima_field_data {int dummy; } ;
struct ima_event_data {int xattr_len; struct evm_ima_xattr_data* xattr_value; } ;
struct evm_ima_xattr_data {scalar_t__ type; } ;


 int DATA_FMT_HEX ;
 scalar_t__ EVM_IMA_XATTR_DIGSIG ;
 int ima_write_template_field_data (struct evm_ima_xattr_data*,int ,int ,struct ima_field_data*) ;

int ima_eventsig_init(struct ima_event_data *event_data,
        struct ima_field_data *field_data)
{
 struct evm_ima_xattr_data *xattr_value = event_data->xattr_value;

 if ((!xattr_value) || (xattr_value->type != EVM_IMA_XATTR_DIGSIG))
  return 0;

 return ima_write_template_field_data(xattr_value, event_data->xattr_len,
          DATA_FMT_HEX, field_data);
}
