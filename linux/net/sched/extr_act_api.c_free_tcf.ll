; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_free_tcf.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_free_tcf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_action = type { i32, i32, i32, i32, i32 }
%struct.tcf_chain = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tc_action*)* @free_tcf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_tcf(%struct.tc_action* %0) #0 {
  %2 = alloca %struct.tc_action*, align 8
  %3 = alloca %struct.tcf_chain*, align 8
  store %struct.tc_action* %0, %struct.tc_action** %2, align 8
  %4 = load %struct.tc_action*, %struct.tc_action** %2, align 8
  %5 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.tcf_chain* @rcu_dereference_protected(i32 %6, i32 1)
  store %struct.tcf_chain* %7, %struct.tcf_chain** %3, align 8
  %8 = load %struct.tc_action*, %struct.tc_action** %2, align 8
  %9 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @free_percpu(i32 %10)
  %12 = load %struct.tc_action*, %struct.tc_action** %2, align 8
  %13 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @free_percpu(i32 %14)
  %16 = load %struct.tc_action*, %struct.tc_action** %2, align 8
  %17 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @free_percpu(i32 %18)
  %20 = load %struct.tc_action*, %struct.tc_action** %2, align 8
  %21 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %20, i32 0, i32 0
  %22 = call i32 @tcf_set_action_cookie(i32* %21, i32* null)
  %23 = load %struct.tcf_chain*, %struct.tcf_chain** %3, align 8
  %24 = icmp ne %struct.tcf_chain* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.tcf_chain*, %struct.tcf_chain** %3, align 8
  %27 = call i32 @tcf_chain_put_by_act(%struct.tcf_chain* %26)
  br label %28

28:                                               ; preds = %25, %1
  %29 = load %struct.tc_action*, %struct.tc_action** %2, align 8
  %30 = call i32 @kfree(%struct.tc_action* %29)
  ret void
}

declare dso_local %struct.tcf_chain* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @free_percpu(i32) #1

declare dso_local i32 @tcf_set_action_cookie(i32*, i32*) #1

declare dso_local i32 @tcf_chain_put_by_act(%struct.tcf_chain*) #1

declare dso_local i32 @kfree(%struct.tc_action*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
