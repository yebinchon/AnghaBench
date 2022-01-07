
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct version_info {int dummy; } ;
struct reserve_info {int size; int address; struct reserve_info* next; } ;
struct data {int dummy; } ;


 struct data data_append_re (struct data,int ,int ) ;
 struct data empty_data ;
 int reservenum ;

__attribute__((used)) static struct data flatten_reserve_list(struct reserve_info *reservelist,
     struct version_info *vi)
{
 struct reserve_info *re;
 struct data d = empty_data;
 int j;

 for (re = reservelist; re; re = re->next) {
  d = data_append_re(d, re->address, re->size);
 }



 for (j = 0; j < reservenum; j++) {
  d = data_append_re(d, 0, 0);
 }

 return d;
}
