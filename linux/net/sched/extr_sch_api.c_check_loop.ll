; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_check_loop.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_check_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.Qdisc*, %struct.TYPE_6__*)* }
%struct.TYPE_6__ = type { i64, i32, i64, i64 }
%struct.check_loop_arg = type { i32, %struct.TYPE_6__, %struct.Qdisc* }

@check_loop_fn = common dso_local global i32 0, align 4
@ELOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.Qdisc*, i32)* @check_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_loop(%struct.Qdisc* %0, %struct.Qdisc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.check_loop_arg, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %10 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp eq %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %50

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.check_loop_arg, %struct.check_loop_arg* %8, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.check_loop_arg, %struct.check_loop_arg* %8, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.check_loop_arg, %struct.check_loop_arg* %8, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @check_loop_fn, align 4
  %24 = getelementptr inbounds %struct.check_loop_arg, %struct.check_loop_arg* %8, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = getelementptr inbounds %struct.check_loop_arg, %struct.check_loop_arg* %8, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %29 = getelementptr inbounds %struct.check_loop_arg, %struct.check_loop_arg* %8, i32 0, i32 2
  store %struct.Qdisc* %28, %struct.Qdisc** %29, align 8
  %30 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %31 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32 (%struct.Qdisc*, %struct.TYPE_6__*)*, i32 (%struct.Qdisc*, %struct.TYPE_6__*)** %35, align 8
  %37 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %38 = getelementptr inbounds %struct.check_loop_arg, %struct.check_loop_arg* %8, i32 0, i32 1
  %39 = call i32 %36(%struct.Qdisc* %37, %struct.TYPE_6__* %38)
  %40 = getelementptr inbounds %struct.check_loop_arg, %struct.check_loop_arg* %8, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %16
  %45 = load i32, i32* @ELOOP, align 4
  %46 = sub nsw i32 0, %45
  br label %48

47:                                               ; preds = %16
  br label %48

48:                                               ; preds = %47, %44
  %49 = phi i32 [ %46, %44 ], [ 0, %47 ]
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %15
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
