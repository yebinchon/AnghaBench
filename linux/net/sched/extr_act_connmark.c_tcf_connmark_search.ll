; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_connmark.c_tcf_connmark_search.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_connmark.c_tcf_connmark_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tc_action = type { i32 }
%struct.tc_action_net = type { i32 }

@connmark_net_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.tc_action**, i32)* @tcf_connmark_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_connmark_search(%struct.net* %0, %struct.tc_action** %1, i32 %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.tc_action**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tc_action_net*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.tc_action** %1, %struct.tc_action*** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.net*, %struct.net** %4, align 8
  %9 = load i32, i32* @connmark_net_id, align 4
  %10 = call %struct.tc_action_net* @net_generic(%struct.net* %8, i32 %9)
  store %struct.tc_action_net* %10, %struct.tc_action_net** %7, align 8
  %11 = load %struct.tc_action_net*, %struct.tc_action_net** %7, align 8
  %12 = load %struct.tc_action**, %struct.tc_action*** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @tcf_idr_search(%struct.tc_action_net* %11, %struct.tc_action** %12, i32 %13)
  ret i32 %14
}

declare dso_local %struct.tc_action_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @tcf_idr_search(%struct.tc_action_net*, %struct.tc_action**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
