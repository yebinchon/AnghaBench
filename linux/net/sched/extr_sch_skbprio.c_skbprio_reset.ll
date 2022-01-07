; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_skbprio.c_skbprio_reset.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_skbprio.c_skbprio_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.skbprio_sched_data = type { i32, i64, i32, i32* }

@SKBPRIO_MAX_PRIORITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*)* @skbprio_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skbprio_reset(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.skbprio_sched_data*, align 8
  %4 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %5 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %6 = call %struct.skbprio_sched_data* @qdisc_priv(%struct.Qdisc* %5)
  store %struct.skbprio_sched_data* %6, %struct.skbprio_sched_data** %3, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %8 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %11 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %25, %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @SKBPRIO_MAX_PRIORITY, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %3, align 8
  %19 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @__skb_queue_purge(i32* %23)
  br label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %13

28:                                               ; preds = %13
  %29 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %3, align 8
  %30 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %29, i32 0, i32 2
  %31 = call i32 @memset(i32* %30, i32 0, i32 4)
  %32 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %3, align 8
  %33 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @SKBPRIO_MAX_PRIORITY, align 4
  %35 = sub nsw i32 %34, 1
  %36 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %3, align 8
  %37 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  ret void
}

declare dso_local %struct.skbprio_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @__skb_queue_purge(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
