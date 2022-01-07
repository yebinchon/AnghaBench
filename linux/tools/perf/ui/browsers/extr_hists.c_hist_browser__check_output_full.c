
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned short rows; } ;
struct hist_browser {TYPE_1__ b; } ;



__attribute__((used)) static bool hist_browser__check_output_full(struct hist_browser *browser,
         unsigned short row)
{
 return browser->b.rows == row;
}
