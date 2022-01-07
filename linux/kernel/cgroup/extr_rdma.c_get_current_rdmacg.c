
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_cgroup {int dummy; } ;


 struct rdma_cgroup* css_rdmacg (int ) ;
 int current ;
 int rdma_cgrp_id ;
 int task_get_css (int ,int ) ;

__attribute__((used)) static inline struct rdma_cgroup *get_current_rdmacg(void)
{
 return css_rdmacg(task_get_css(current, rdma_cgrp_id));
}
