; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_sbitmap.c_sbq_wake_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_sbitmap.c_sbq_wake_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbq_wait_state = type { i32 }
%struct.sbitmap_queue = type { i32, %struct.sbq_wait_state*, i32 }

@SBQ_WAIT_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sbq_wait_state* (%struct.sbitmap_queue*)* @sbq_wake_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sbq_wait_state* @sbq_wake_ptr(%struct.sbitmap_queue* %0) #0 {
  %2 = alloca %struct.sbq_wait_state*, align 8
  %3 = alloca %struct.sbitmap_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sbq_wait_state*, align 8
  store %struct.sbitmap_queue* %0, %struct.sbitmap_queue** %3, align 8
  %7 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %3, align 8
  %8 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %7, i32 0, i32 2
  %9 = call i32 @atomic_read(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.sbq_wait_state* null, %struct.sbq_wait_state** %2, align 8
  br label %51

12:                                               ; preds = %1
  %13 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %3, align 8
  %14 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %13, i32 0, i32 0
  %15 = call i32 @atomic_read(i32* %14)
  store i32 %15, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %47, %12
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @SBQ_WAIT_QUEUES, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %50

20:                                               ; preds = %16
  %21 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %3, align 8
  %22 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %21, i32 0, i32 1
  %23 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.sbq_wait_state, %struct.sbq_wait_state* %23, i64 %25
  store %struct.sbq_wait_state* %26, %struct.sbq_wait_state** %6, align 8
  %27 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %6, align 8
  %28 = getelementptr inbounds %struct.sbq_wait_state, %struct.sbq_wait_state* %27, i32 0, i32 0
  %29 = call i64 @waitqueue_active(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %20
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %3, align 8
  %34 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %33, i32 0, i32 0
  %35 = call i32 @atomic_read(i32* %34)
  %36 = icmp ne i32 %32, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %3, align 8
  %39 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %38, i32 0, i32 0
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @atomic_set(i32* %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %31
  %43 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %6, align 8
  store %struct.sbq_wait_state* %43, %struct.sbq_wait_state** %2, align 8
  br label %51

44:                                               ; preds = %20
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @sbq_index_inc(i32 %45)
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %16

50:                                               ; preds = %16
  store %struct.sbq_wait_state* null, %struct.sbq_wait_state** %2, align 8
  br label %51

51:                                               ; preds = %50, %42, %11
  %52 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %2, align 8
  ret %struct.sbq_wait_state* %52
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @sbq_index_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
