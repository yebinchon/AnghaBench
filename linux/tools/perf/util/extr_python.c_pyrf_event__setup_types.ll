; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_python.c_pyrf_event__setup_types.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_python.c_pyrf_event__setup_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@PyType_GenericNew = common dso_local global i32 0, align 4
@pyrf_throttle_event__type = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@pyrf_context_switch_event__type = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@pyrf_sample_event__type = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@pyrf_read_event__type = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@pyrf_lost_event__type = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@pyrf_comm_event__type = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@pyrf_task_event__type = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@pyrf_mmap_event__type = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pyrf_event__setup_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pyrf_event__setup_types() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @PyType_GenericNew, align 4
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pyrf_throttle_event__type, i32 0, i32 0), align 4
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pyrf_context_switch_event__type, i32 0, i32 0), align 4
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pyrf_sample_event__type, i32 0, i32 0), align 4
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pyrf_read_event__type, i32 0, i32 0), align 4
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pyrf_lost_event__type, i32 0, i32 0), align 4
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pyrf_comm_event__type, i32 0, i32 0), align 4
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pyrf_task_event__type, i32 0, i32 0), align 4
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pyrf_mmap_event__type, i32 0, i32 0), align 4
  %3 = call i32 @PyType_Ready(%struct.TYPE_10__* @pyrf_mmap_event__type)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %43

7:                                                ; preds = %0
  %8 = call i32 @PyType_Ready(%struct.TYPE_10__* @pyrf_lost_event__type)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %43

12:                                               ; preds = %7
  %13 = call i32 @PyType_Ready(%struct.TYPE_10__* @pyrf_task_event__type)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %43

17:                                               ; preds = %12
  %18 = call i32 @PyType_Ready(%struct.TYPE_10__* @pyrf_comm_event__type)
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %43

22:                                               ; preds = %17
  %23 = call i32 @PyType_Ready(%struct.TYPE_10__* @pyrf_throttle_event__type)
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* %1, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %43

27:                                               ; preds = %22
  %28 = call i32 @PyType_Ready(%struct.TYPE_10__* @pyrf_read_event__type)
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* %1, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %43

32:                                               ; preds = %27
  %33 = call i32 @PyType_Ready(%struct.TYPE_10__* @pyrf_sample_event__type)
  store i32 %33, i32* %1, align 4
  %34 = load i32, i32* %1, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %43

37:                                               ; preds = %32
  %38 = call i32 @PyType_Ready(%struct.TYPE_10__* @pyrf_context_switch_event__type)
  store i32 %38, i32* %1, align 4
  %39 = load i32, i32* %1, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %43

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %41, %36, %31, %26, %21, %16, %11, %6
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

declare dso_local i32 @PyType_Ready(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
