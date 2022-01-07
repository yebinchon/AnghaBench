
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_hist {int dummy; } ;
struct annotation {int src; } ;


 struct sym_hist* annotated_source__histogram (int ,int) ;

__attribute__((used)) static inline struct sym_hist *annotation__histogram(struct annotation *notes, int idx)
{
 return annotated_source__histogram(notes->src, idx);
}
