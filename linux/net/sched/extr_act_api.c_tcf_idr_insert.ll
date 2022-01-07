; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_idr_insert.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_idr_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_action_net = type { %struct.tcf_idrinfo* }
%struct.tcf_idrinfo = type { i32, i32 }
%struct.tc_action = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcf_idr_insert(%struct.tc_action_net* %0, %struct.tc_action* %1) #0 {
  %3 = alloca %struct.tc_action_net*, align 8
  %4 = alloca %struct.tc_action*, align 8
  %5 = alloca %struct.tcf_idrinfo*, align 8
  store %struct.tc_action_net* %0, %struct.tc_action_net** %3, align 8
  store %struct.tc_action* %1, %struct.tc_action** %4, align 8
  %6 = load %struct.tc_action_net*, %struct.tc_action_net** %3, align 8
  %7 = getelementptr inbounds %struct.tc_action_net, %struct.tc_action_net* %6, i32 0, i32 0
  %8 = load %struct.tcf_idrinfo*, %struct.tcf_idrinfo** %7, align 8
  store %struct.tcf_idrinfo* %8, %struct.tcf_idrinfo** %5, align 8
  %9 = load %struct.tcf_idrinfo*, %struct.tcf_idrinfo** %5, align 8
  %10 = getelementptr inbounds %struct.tcf_idrinfo, %struct.tcf_idrinfo* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.tcf_idrinfo*, %struct.tcf_idrinfo** %5, align 8
  %13 = getelementptr inbounds %struct.tcf_idrinfo, %struct.tcf_idrinfo* %12, i32 0, i32 1
  %14 = load %struct.tc_action*, %struct.tc_action** %4, align 8
  %15 = load %struct.tc_action*, %struct.tc_action** %4, align 8
  %16 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @idr_replace(i32* %13, %struct.tc_action* %14, i32 %17)
  %19 = call i32 @IS_ERR(i32 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = load %struct.tcf_idrinfo*, %struct.tcf_idrinfo** %5, align 8
  %25 = getelementptr inbounds %struct.tcf_idrinfo, %struct.tcf_idrinfo* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @idr_replace(i32*, %struct.tc_action*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
