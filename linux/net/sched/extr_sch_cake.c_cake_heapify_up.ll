; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_heapify_up.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_heapify_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cake_sched_data = type { i32 }

@CAKE_MAX_TINS = common dso_local global i32 0, align 4
@CAKE_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cake_sched_data*, i32)* @cake_heapify_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cake_heapify_up(%struct.cake_sched_data* %0, i32 %1) #0 {
  %3 = alloca %struct.cake_sched_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.cake_sched_data* %0, %struct.cake_sched_data** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %8

8:                                                ; preds = %39, %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @CAKE_MAX_TINS, align 4
  %14 = load i32, i32* @CAKE_QUEUES, align 4
  %15 = mul nsw i32 %13, %14
  %16 = icmp slt i32 %12, %15
  br label %17

17:                                               ; preds = %11, %8
  %18 = phi i1 [ false, %8 ], [ %16, %11 ]
  br i1 %18, label %19, label %40

19:                                               ; preds = %17
  %20 = load i32, i32* %4, align 4
  %21 = sub nsw i32 %20, 1
  %22 = ashr i32 %21, 1
  store i32 %22, i32* %5, align 4
  %23 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @cake_heap_get_backlog(%struct.cake_sched_data* %23, i32 %24)
  store i64 %25, i64* %6, align 8
  %26 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @cake_heap_get_backlog(%struct.cake_sched_data* %26, i32 %27)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %19
  %33 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @cake_heap_swap(%struct.cake_sched_data* %33, i32 %34, i32 %35)
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %4, align 4
  br label %39

38:                                               ; preds = %19
  br label %40

39:                                               ; preds = %32
  br label %8

40:                                               ; preds = %38, %17
  ret void
}

declare dso_local i64 @cake_heap_get_backlog(%struct.cake_sched_data*, i32) #1

declare dso_local i32 @cake_heap_swap(%struct.cake_sched_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
