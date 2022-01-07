
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {scalar_t__ io_type; } ;


 scalar_t__ AIO ;
 scalar_t__ RayDAT ;

__attribute__((used)) static bool hdspm_is_raydat_or_aio(struct hdspm *hdspm)
{
 return ((AIO == hdspm->io_type) || (RayDAT == hdspm->io_type));
}
