
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct annotation_line {int offset; } ;
struct annotation {TYPE_1__* options; } ;
struct TYPE_2__ {scalar_t__ hide_src_code; } ;



__attribute__((used)) static inline bool annotation_line__filter(struct annotation_line *al, struct annotation *notes)
{
 return notes->options->hide_src_code && al->offset == -1;
}
