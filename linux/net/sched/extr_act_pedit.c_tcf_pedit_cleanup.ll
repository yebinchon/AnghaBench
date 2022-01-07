; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_pedit.c_tcf_pedit_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_pedit.c_tcf_pedit_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_action = type { i32 }
%struct.tcf_pedit = type { %struct.tc_pedit_key*, %struct.tc_pedit_key* }
%struct.tc_pedit_key = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tc_action*)* @tcf_pedit_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcf_pedit_cleanup(%struct.tc_action* %0) #0 {
  %2 = alloca %struct.tc_action*, align 8
  %3 = alloca %struct.tcf_pedit*, align 8
  %4 = alloca %struct.tc_pedit_key*, align 8
  store %struct.tc_action* %0, %struct.tc_action** %2, align 8
  %5 = load %struct.tc_action*, %struct.tc_action** %2, align 8
  %6 = call %struct.tcf_pedit* @to_pedit(%struct.tc_action* %5)
  store %struct.tcf_pedit* %6, %struct.tcf_pedit** %3, align 8
  %7 = load %struct.tcf_pedit*, %struct.tcf_pedit** %3, align 8
  %8 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %7, i32 0, i32 1
  %9 = load %struct.tc_pedit_key*, %struct.tc_pedit_key** %8, align 8
  store %struct.tc_pedit_key* %9, %struct.tc_pedit_key** %4, align 8
  %10 = load %struct.tc_pedit_key*, %struct.tc_pedit_key** %4, align 8
  %11 = call i32 @kfree(%struct.tc_pedit_key* %10)
  %12 = load %struct.tcf_pedit*, %struct.tcf_pedit** %3, align 8
  %13 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %12, i32 0, i32 0
  %14 = load %struct.tc_pedit_key*, %struct.tc_pedit_key** %13, align 8
  %15 = call i32 @kfree(%struct.tc_pedit_key* %14)
  ret void
}

declare dso_local %struct.tcf_pedit* @to_pedit(%struct.tc_action*) #1

declare dso_local i32 @kfree(%struct.tc_pedit_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
