; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_action_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_action_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_action = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.tc_action*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tc_action*)* @tcf_action_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcf_action_cleanup(%struct.tc_action* %0) #0 {
  %2 = alloca %struct.tc_action*, align 8
  store %struct.tc_action* %0, %struct.tc_action** %2, align 8
  %3 = load %struct.tc_action*, %struct.tc_action** %2, align 8
  %4 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32 (%struct.tc_action*)*, i32 (%struct.tc_action*)** %6, align 8
  %8 = icmp ne i32 (%struct.tc_action*)* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.tc_action*, %struct.tc_action** %2, align 8
  %11 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.tc_action*)*, i32 (%struct.tc_action*)** %13, align 8
  %15 = load %struct.tc_action*, %struct.tc_action** %2, align 8
  %16 = call i32 %14(%struct.tc_action* %15)
  br label %17

17:                                               ; preds = %9, %1
  %18 = load %struct.tc_action*, %struct.tc_action** %2, align 8
  %19 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %18, i32 0, i32 0
  %20 = call i32 @gen_kill_estimator(i32* %19)
  %21 = load %struct.tc_action*, %struct.tc_action** %2, align 8
  %22 = call i32 @free_tcf(%struct.tc_action* %21)
  ret void
}

declare dso_local i32 @gen_kill_estimator(i32*) #1

declare dso_local i32 @free_tcf(%struct.tc_action*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
