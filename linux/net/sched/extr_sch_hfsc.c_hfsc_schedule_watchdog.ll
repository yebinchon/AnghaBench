; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_hfsc.c_hfsc_schedule_watchdog.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_hfsc.c_hfsc_schedule_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.hfsc_sched = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.hfsc_class = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*)* @hfsc_schedule_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfsc_schedule_watchdog(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.hfsc_sched*, align 8
  %4 = alloca %struct.hfsc_class*, align 8
  %5 = alloca i64, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %6 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %7 = call %struct.hfsc_sched* @qdisc_priv(%struct.Qdisc* %6)
  store %struct.hfsc_sched* %7, %struct.hfsc_sched** %3, align 8
  store i64 0, i64* %5, align 8
  %8 = load %struct.hfsc_sched*, %struct.hfsc_sched** %3, align 8
  %9 = call %struct.hfsc_class* @eltree_get_minel(%struct.hfsc_sched* %8)
  store %struct.hfsc_class* %9, %struct.hfsc_class** %4, align 8
  %10 = load %struct.hfsc_class*, %struct.hfsc_class** %4, align 8
  %11 = icmp ne %struct.hfsc_class* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.hfsc_class*, %struct.hfsc_class** %4, align 8
  %14 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.hfsc_sched*, %struct.hfsc_sched** %3, align 8
  %18 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = load i64, i64* %5, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.hfsc_sched*, %struct.hfsc_sched** %3, align 8
  %28 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %26, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %25, %22
  %33 = load %struct.hfsc_sched*, %struct.hfsc_sched** %3, align 8
  %34 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %5, align 8
  br label %37

37:                                               ; preds = %32, %25
  br label %38

38:                                               ; preds = %37, %16
  %39 = load i64, i64* %5, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.hfsc_sched*, %struct.hfsc_sched** %3, align 8
  %43 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %42, i32 0, i32 0
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @qdisc_watchdog_schedule(i32* %43, i64 %44)
  br label %46

46:                                               ; preds = %41, %38
  ret void
}

declare dso_local %struct.hfsc_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.hfsc_class* @eltree_get_minel(%struct.hfsc_sched*) #1

declare dso_local i32 @qdisc_watchdog_schedule(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
