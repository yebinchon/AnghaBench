; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_sbitmap.c___sbq_wake_up.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_sbitmap.c___sbq_wake_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbitmap_queue = type { i32, i32 }
%struct.sbq_wait_state = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbitmap_queue*)* @__sbq_wake_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sbq_wake_up(%struct.sbitmap_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sbitmap_queue*, align 8
  %4 = alloca %struct.sbq_wait_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sbitmap_queue* %0, %struct.sbitmap_queue** %3, align 8
  %8 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %3, align 8
  %9 = call %struct.sbq_wait_state* @sbq_wake_ptr(%struct.sbitmap_queue* %8)
  store %struct.sbq_wait_state* %9, %struct.sbq_wait_state** %4, align 8
  %10 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %4, align 8
  %11 = icmp ne %struct.sbq_wait_state* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

13:                                               ; preds = %1
  %14 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %4, align 8
  %15 = getelementptr inbounds %struct.sbq_wait_state, %struct.sbq_wait_state* %14, i32 0, i32 1
  %16 = call i32 @atomic_dec_return(i32* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %13
  %20 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %3, align 8
  %21 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @READ_ONCE(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = call i32 (...) @smp_mb__before_atomic()
  %25 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %4, align 8
  %26 = getelementptr inbounds %struct.sbq_wait_state, %struct.sbq_wait_state* %25, i32 0, i32 1
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @atomic_cmpxchg(i32* %26, i32 %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %19
  %34 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %3, align 8
  %35 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %34, i32 0, i32 0
  %36 = call i32 @sbq_index_atomic_inc(i32* %35)
  %37 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %4, align 8
  %38 = getelementptr inbounds %struct.sbq_wait_state, %struct.sbq_wait_state* %37, i32 0, i32 0
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @wake_up_nr(i32* %38, i32 %39)
  store i32 0, i32* %2, align 4
  br label %43

41:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %43

42:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %41, %33, %12
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.sbq_wait_state* @sbq_wake_ptr(%struct.sbitmap_queue*) #1

declare dso_local i32 @atomic_dec_return(i32*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i32 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @sbq_index_atomic_inc(i32*) #1

declare dso_local i32 @wake_up_nr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
