; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_action_goto_chain_exec.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_action_goto_chain_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_action = type { i32 }
%struct.tcf_result = type { i8* }
%struct.tcf_chain = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tc_action*, %struct.tcf_result*)* @tcf_action_goto_chain_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcf_action_goto_chain_exec(%struct.tc_action* %0, %struct.tcf_result* %1) #0 {
  %3 = alloca %struct.tc_action*, align 8
  %4 = alloca %struct.tcf_result*, align 8
  %5 = alloca %struct.tcf_chain*, align 8
  store %struct.tc_action* %0, %struct.tc_action** %3, align 8
  store %struct.tcf_result* %1, %struct.tcf_result** %4, align 8
  %6 = load %struct.tc_action*, %struct.tc_action** %3, align 8
  %7 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i8* @rcu_dereference_bh(i32 %8)
  %10 = bitcast i8* %9 to %struct.tcf_chain*
  store %struct.tcf_chain* %10, %struct.tcf_chain** %5, align 8
  %11 = load %struct.tcf_chain*, %struct.tcf_chain** %5, align 8
  %12 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @rcu_dereference_bh(i32 %13)
  %15 = load %struct.tcf_result*, %struct.tcf_result** %4, align 8
  %16 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  ret void
}

declare dso_local i8* @rcu_dereference_bh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
