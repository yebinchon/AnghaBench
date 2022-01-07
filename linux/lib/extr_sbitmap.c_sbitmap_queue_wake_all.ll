; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_sbitmap.c_sbitmap_queue_wake_all.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_sbitmap.c_sbitmap_queue_wake_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbitmap_queue = type { %struct.sbq_wait_state*, i32 }
%struct.sbq_wait_state = type { i32 }

@SBQ_WAIT_QUEUES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sbitmap_queue_wake_all(%struct.sbitmap_queue* %0) #0 {
  %2 = alloca %struct.sbitmap_queue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sbq_wait_state*, align 8
  store %struct.sbitmap_queue* %0, %struct.sbitmap_queue** %2, align 8
  %6 = call i32 (...) @smp_mb()
  %7 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %2, align 8
  %8 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %7, i32 0, i32 1
  %9 = call i32 @atomic_read(i32* %8)
  store i32 %9, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %32, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @SBQ_WAIT_QUEUES, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %10
  %15 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %2, align 8
  %16 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %15, i32 0, i32 0
  %17 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.sbq_wait_state, %struct.sbq_wait_state* %17, i64 %19
  store %struct.sbq_wait_state* %20, %struct.sbq_wait_state** %5, align 8
  %21 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %5, align 8
  %22 = getelementptr inbounds %struct.sbq_wait_state, %struct.sbq_wait_state* %21, i32 0, i32 0
  %23 = call i64 @waitqueue_active(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %14
  %26 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %5, align 8
  %27 = getelementptr inbounds %struct.sbq_wait_state, %struct.sbq_wait_state* %26, i32 0, i32 0
  %28 = call i32 @wake_up(i32* %27)
  br label %29

29:                                               ; preds = %25, %14
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @sbq_index_inc(i32 %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %10

35:                                               ; preds = %10
  ret void
}

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @sbq_index_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
