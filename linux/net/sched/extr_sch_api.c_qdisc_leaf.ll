; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_qdisc_leaf.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_qdisc_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.Qdisc_class_ops* }
%struct.Qdisc_class_ops = type { i64 (%struct.Qdisc.0*, i32)*, %struct.Qdisc* (%struct.Qdisc*, i64)* }
%struct.Qdisc.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Qdisc* (%struct.Qdisc*, i32)* @qdisc_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Qdisc* @qdisc_leaf(%struct.Qdisc* %0, i32 %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.Qdisc_class_ops*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %9 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %11, align 8
  store %struct.Qdisc_class_ops* %12, %struct.Qdisc_class_ops** %7, align 8
  %13 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %7, align 8
  %14 = icmp eq %struct.Qdisc_class_ops* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.Qdisc* null, %struct.Qdisc** %3, align 8
  br label %34

16:                                               ; preds = %2
  %17 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %7, align 8
  %18 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %17, i32 0, i32 0
  %19 = load i64 (%struct.Qdisc.0*, i32)*, i64 (%struct.Qdisc.0*, i32)** %18, align 8
  %20 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %21 = bitcast %struct.Qdisc* %20 to %struct.Qdisc.0*
  %22 = load i32, i32* %5, align 4
  %23 = call i64 %19(%struct.Qdisc.0* %21, i32 %22)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store %struct.Qdisc* null, %struct.Qdisc** %3, align 8
  br label %34

27:                                               ; preds = %16
  %28 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %7, align 8
  %29 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %28, i32 0, i32 1
  %30 = load %struct.Qdisc* (%struct.Qdisc*, i64)*, %struct.Qdisc* (%struct.Qdisc*, i64)** %29, align 8
  %31 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call %struct.Qdisc* %30(%struct.Qdisc* %31, i64 %32)
  store %struct.Qdisc* %33, %struct.Qdisc** %3, align 8
  br label %34

34:                                               ; preds = %27, %26, %15
  %35 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  ret %struct.Qdisc* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
