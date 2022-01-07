; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_check_loop_fn.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_check_loop_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.Qdisc_class_ops* }
%struct.Qdisc_class_ops = type { %struct.Qdisc* (%struct.Qdisc*, i64)* }
%struct.qdisc_walker = type { i32 }
%struct.check_loop_arg = type { i32, %struct.Qdisc* }

@ELOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.qdisc_walker*)* @check_loop_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_loop_fn(%struct.Qdisc* %0, i64 %1, %struct.qdisc_walker* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.qdisc_walker*, align 8
  %8 = alloca %struct.Qdisc*, align 8
  %9 = alloca %struct.Qdisc_class_ops*, align 8
  %10 = alloca %struct.check_loop_arg*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.qdisc_walker* %2, %struct.qdisc_walker** %7, align 8
  %11 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %12 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %14, align 8
  store %struct.Qdisc_class_ops* %15, %struct.Qdisc_class_ops** %9, align 8
  %16 = load %struct.qdisc_walker*, %struct.qdisc_walker** %7, align 8
  %17 = bitcast %struct.qdisc_walker* %16 to %struct.check_loop_arg*
  store %struct.check_loop_arg* %17, %struct.check_loop_arg** %10, align 8
  %18 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %9, align 8
  %19 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %18, i32 0, i32 0
  %20 = load %struct.Qdisc* (%struct.Qdisc*, i64)*, %struct.Qdisc* (%struct.Qdisc*, i64)** %19, align 8
  %21 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call %struct.Qdisc* %20(%struct.Qdisc* %21, i64 %22)
  store %struct.Qdisc* %23, %struct.Qdisc** %8, align 8
  %24 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %25 = icmp ne %struct.Qdisc* %24, null
  br i1 %25, label %26, label %50

26:                                               ; preds = %3
  %27 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %28 = load %struct.check_loop_arg*, %struct.check_loop_arg** %10, align 8
  %29 = getelementptr inbounds %struct.check_loop_arg, %struct.check_loop_arg* %28, i32 0, i32 1
  %30 = load %struct.Qdisc*, %struct.Qdisc** %29, align 8
  %31 = icmp eq %struct.Qdisc* %27, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = load %struct.check_loop_arg*, %struct.check_loop_arg** %10, align 8
  %34 = getelementptr inbounds %struct.check_loop_arg, %struct.check_loop_arg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %35, 7
  br i1 %36, label %37, label %40

37:                                               ; preds = %32, %26
  %38 = load i32, i32* @ELOOP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %51

40:                                               ; preds = %32
  %41 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %42 = load %struct.check_loop_arg*, %struct.check_loop_arg** %10, align 8
  %43 = getelementptr inbounds %struct.check_loop_arg, %struct.check_loop_arg* %42, i32 0, i32 1
  %44 = load %struct.Qdisc*, %struct.Qdisc** %43, align 8
  %45 = load %struct.check_loop_arg*, %struct.check_loop_arg** %10, align 8
  %46 = getelementptr inbounds %struct.check_loop_arg, %struct.check_loop_arg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  %49 = call i32 @check_loop(%struct.Qdisc* %41, %struct.Qdisc* %44, i32 %48)
  store i32 %49, i32* %4, align 4
  br label %51

50:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %40, %37
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @check_loop(%struct.Qdisc*, %struct.Qdisc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
