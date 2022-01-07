; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cbs.c_cbs_walk.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cbs.c_cbs_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.qdisc_walker = type { i32, i64, i64, i64 (%struct.Qdisc.0*, i32, %struct.qdisc_walker*)* }
%struct.Qdisc.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*, %struct.qdisc_walker*)* @cbs_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbs_walk(%struct.Qdisc* %0, %struct.qdisc_walker* %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.qdisc_walker*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store %struct.qdisc_walker* %1, %struct.qdisc_walker** %4, align 8
  %5 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %6 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %35, label %9

9:                                                ; preds = %2
  %10 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %11 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %14 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %12, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %9
  %18 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %19 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %18, i32 0, i32 3
  %20 = load i64 (%struct.Qdisc.0*, i32, %struct.qdisc_walker*)*, i64 (%struct.Qdisc.0*, i32, %struct.qdisc_walker*)** %19, align 8
  %21 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %22 = bitcast %struct.Qdisc* %21 to %struct.Qdisc.0*
  %23 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %24 = call i64 %20(%struct.Qdisc.0* %22, i32 1, %struct.qdisc_walker* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %28 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  br label %35

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29, %9
  %31 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %32 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %32, align 8
  br label %35

35:                                               ; preds = %26, %30, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
