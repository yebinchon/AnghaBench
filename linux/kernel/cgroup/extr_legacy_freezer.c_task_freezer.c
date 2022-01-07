
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct freezer {int dummy; } ;


 struct freezer* css_freezer (int ) ;
 int freezer_cgrp_id ;
 int task_css (struct task_struct*,int ) ;

__attribute__((used)) static inline struct freezer *task_freezer(struct task_struct *task)
{
 return css_freezer(task_css(task, freezer_cgrp_id));
}
