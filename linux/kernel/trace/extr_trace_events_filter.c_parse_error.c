
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_parse_error {int lasterr; int lasterr_pos; } ;



__attribute__((used)) static void parse_error(struct filter_parse_error *pe, int err, int pos)
{
 pe->lasterr = err;
 pe->lasterr_pos = pos;
}
