
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_record {int data; } ;
struct tep_handle {int dummy; } ;


 int parse_common_pid (struct tep_handle*,int ) ;

int tep_data_pid(struct tep_handle *tep, struct tep_record *rec)
{
 return parse_common_pid(tep, rec->data);
}
