; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_skbprio.c_skbprio_walk.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_skbprio.c_skbprio_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.qdisc_walker = type { i32, i64, i64, i64 (%struct.Qdisc.0*, i32, %struct.qdisc_walker*)* }
%struct.Qdisc.0 = type opaque

@SKBPRIO_MAX_PRIORITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*, %struct.qdisc_walker*)* @skbprio_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skbprio_walk(%struct.Qdisc* %0, %struct.qdisc_walker* %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.qdisc_walker*, align 8
  %5 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store %struct.qdisc_walker* %1, %struct.qdisc_walker** %4, align 8
  %6 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %7 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %51

11:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %48, %11
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @SKBPRIO_MAX_PRIORITY, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %51

16:                                               ; preds = %12
  %17 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %18 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %21 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %26 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  br label %48

29:                                               ; preds = %16
  %30 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %31 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %30, i32 0, i32 3
  %32 = load i64 (%struct.Qdisc.0*, i32, %struct.qdisc_walker*)*, i64 (%struct.Qdisc.0*, i32, %struct.qdisc_walker*)** %31, align 8
  %33 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %34 = bitcast %struct.Qdisc* %33 to %struct.Qdisc.0*
  %35 = load i32, i32* %5, align 4
  %36 = add i32 %35, 1
  %37 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %38 = call i64 %32(%struct.Qdisc.0* %34, i32 %36, %struct.qdisc_walker* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %42 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  br label %51

43:                                               ; preds = %29
  %44 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %45 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %45, align 8
  br label %48

48:                                               ; preds = %43, %24
  %49 = load i32, i32* %5, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %12

51:                                               ; preds = %10, %40, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
