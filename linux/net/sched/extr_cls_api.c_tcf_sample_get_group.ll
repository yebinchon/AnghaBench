; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_sample_get_group.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_sample_get_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_action_entry = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.tc_action = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.tc_action*, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.flow_action_entry*, %struct.tc_action*)* @tcf_sample_get_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcf_sample_get_group(%struct.flow_action_entry* %0, %struct.tc_action* %1) #0 {
  %3 = alloca %struct.flow_action_entry*, align 8
  %4 = alloca %struct.tc_action*, align 8
  store %struct.flow_action_entry* %0, %struct.flow_action_entry** %3, align 8
  store %struct.tc_action* %1, %struct.tc_action** %4, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
