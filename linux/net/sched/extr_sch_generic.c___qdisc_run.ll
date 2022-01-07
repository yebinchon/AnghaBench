; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c___qdisc_run.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c___qdisc_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }

@dev_tx_weight = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__qdisc_run(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %5 = load i32, i32* @dev_tx_weight, align 4
  store i32 %5, i32* %3, align 4
  br label %6

6:                                                ; preds = %22, %1
  %7 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %8 = call i64 @qdisc_restart(%struct.Qdisc* %7, i32* %4)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = sub nsw i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = call i64 (...) @need_resched()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16, %10
  %20 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %21 = call i32 @__netif_schedule(%struct.Qdisc* %20)
  br label %23

22:                                               ; preds = %16
  br label %6

23:                                               ; preds = %19, %6
  ret void
}

declare dso_local i64 @qdisc_restart(%struct.Qdisc*, i32*) #1

declare dso_local i64 @need_resched(...) #1

declare dso_local i32 @__netif_schedule(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
