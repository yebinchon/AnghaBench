; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_rt.c_sched_rt_runtime_exceeded.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_rt.c_sched_rt_runtime_exceeded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_rq = type { i32, i64 }
%struct.rt_bandwidth = type { i32 }

@RUNTIME_INF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"sched: RT throttling activated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt_rq*)* @sched_rt_runtime_exceeded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sched_rt_runtime_exceeded(%struct.rt_rq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt_rq*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rt_bandwidth*, align 8
  store %struct.rt_rq* %0, %struct.rt_rq** %3, align 8
  %6 = load %struct.rt_rq*, %struct.rt_rq** %3, align 8
  %7 = call i64 @sched_rt_runtime(%struct.rt_rq* %6)
  store i64 %7, i64* %4, align 8
  %8 = load %struct.rt_rq*, %struct.rt_rq** %3, align 8
  %9 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.rt_rq*, %struct.rt_rq** %3, align 8
  %14 = call i32 @rt_rq_throttled(%struct.rt_rq* %13)
  store i32 %14, i32* %2, align 4
  br label %60

15:                                               ; preds = %1
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.rt_rq*, %struct.rt_rq** %3, align 8
  %18 = call i64 @sched_rt_period(%struct.rt_rq* %17)
  %19 = icmp sge i64 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %60

21:                                               ; preds = %15
  %22 = load %struct.rt_rq*, %struct.rt_rq** %3, align 8
  %23 = call i32 @balance_runtime(%struct.rt_rq* %22)
  %24 = load %struct.rt_rq*, %struct.rt_rq** %3, align 8
  %25 = call i64 @sched_rt_runtime(%struct.rt_rq* %24)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @RUNTIME_INF, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %60

30:                                               ; preds = %21
  %31 = load %struct.rt_rq*, %struct.rt_rq** %3, align 8
  %32 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %30
  %37 = load %struct.rt_rq*, %struct.rt_rq** %3, align 8
  %38 = call %struct.rt_bandwidth* @sched_rt_bandwidth(%struct.rt_rq* %37)
  store %struct.rt_bandwidth* %38, %struct.rt_bandwidth** %5, align 8
  %39 = load %struct.rt_bandwidth*, %struct.rt_bandwidth** %5, align 8
  %40 = getelementptr inbounds %struct.rt_bandwidth, %struct.rt_bandwidth* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @likely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load %struct.rt_rq*, %struct.rt_rq** %3, align 8
  %46 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = call i32 @printk_deferred_once(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %51

48:                                               ; preds = %36
  %49 = load %struct.rt_rq*, %struct.rt_rq** %3, align 8
  %50 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %48, %44
  %52 = load %struct.rt_rq*, %struct.rt_rq** %3, align 8
  %53 = call i32 @rt_rq_throttled(%struct.rt_rq* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load %struct.rt_rq*, %struct.rt_rq** %3, align 8
  %57 = call i32 @sched_rt_rq_dequeue(%struct.rt_rq* %56)
  store i32 1, i32* %2, align 4
  br label %60

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %30
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %55, %29, %20, %12
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @sched_rt_runtime(%struct.rt_rq*) #1

declare dso_local i32 @rt_rq_throttled(%struct.rt_rq*) #1

declare dso_local i64 @sched_rt_period(%struct.rt_rq*) #1

declare dso_local i32 @balance_runtime(%struct.rt_rq*) #1

declare dso_local %struct.rt_bandwidth* @sched_rt_bandwidth(%struct.rt_rq*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @printk_deferred_once(i8*) #1

declare dso_local i32 @sched_rt_rq_dequeue(%struct.rt_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
