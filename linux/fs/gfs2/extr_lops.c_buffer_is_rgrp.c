
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gfs2_bufdata {TYPE_2__* bd_gl; } ;
struct TYPE_3__ {scalar_t__ ln_type; } ;
struct TYPE_4__ {TYPE_1__ gl_name; } ;


 scalar_t__ LM_TYPE_RGRP ;

__attribute__((used)) static bool buffer_is_rgrp(const struct gfs2_bufdata *bd)
{
 return bd->bd_gl->gl_name.ln_type == LM_TYPE_RGRP;
}
