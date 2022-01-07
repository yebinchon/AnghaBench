
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_parse_error {int dummy; } ;


 int kfree (struct filter_parse_error*) ;

__attribute__((used)) static void create_filter_finish(struct filter_parse_error *pe)
{
 kfree(pe);
}
