
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_annotate {scalar_t__ use_stdio2; } ;


 scalar_t__ ui__has_annotation () ;

__attribute__((used)) static bool has_annotation(struct perf_annotate *ann)
{
 return ui__has_annotation() || ann->use_stdio2;
}
