
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int outside; scalar_t__ offset_avail; } ;
struct TYPE_4__ {TYPE_1__ target; } ;
struct disasm_line {TYPE_2__ ops; } ;



__attribute__((used)) static inline bool disasm_line__has_local_offset(const struct disasm_line *dl)
{
 return dl->ops.target.offset_avail && !dl->ops.target.outside;
}
