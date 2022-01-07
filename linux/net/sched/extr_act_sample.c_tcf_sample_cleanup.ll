; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_sample.c_tcf_sample_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_sample.c_tcf_sample_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_action = type { i32 }
%struct.tcf_sample = type { i32 }
%struct.psample_group = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tc_action*)* @tcf_sample_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcf_sample_cleanup(%struct.tc_action* %0) #0 {
  %2 = alloca %struct.tc_action*, align 8
  %3 = alloca %struct.tcf_sample*, align 8
  %4 = alloca %struct.psample_group*, align 8
  store %struct.tc_action* %0, %struct.tc_action** %2, align 8
  %5 = load %struct.tc_action*, %struct.tc_action** %2, align 8
  %6 = call %struct.tcf_sample* @to_sample(%struct.tc_action* %5)
  store %struct.tcf_sample* %6, %struct.tcf_sample** %3, align 8
  %7 = load %struct.tcf_sample*, %struct.tcf_sample** %3, align 8
  %8 = getelementptr inbounds %struct.tcf_sample, %struct.tcf_sample* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.psample_group* @rcu_dereference_protected(i32 %9, i32 1)
  store %struct.psample_group* %10, %struct.psample_group** %4, align 8
  %11 = load %struct.tcf_sample*, %struct.tcf_sample** %3, align 8
  %12 = getelementptr inbounds %struct.tcf_sample, %struct.tcf_sample* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @RCU_INIT_POINTER(i32 %13, i32* null)
  %15 = load %struct.psample_group*, %struct.psample_group** %4, align 8
  %16 = icmp ne %struct.psample_group* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.psample_group*, %struct.psample_group** %4, align 8
  %19 = call i32 @psample_group_put(%struct.psample_group* %18)
  br label %20

20:                                               ; preds = %17, %1
  ret void
}

declare dso_local %struct.tcf_sample* @to_sample(%struct.tc_action*) #1

declare dso_local %struct.psample_group* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @psample_group_put(%struct.psample_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
