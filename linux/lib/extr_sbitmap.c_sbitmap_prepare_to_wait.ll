; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_sbitmap.c_sbitmap_prepare_to_wait.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_sbitmap.c_sbitmap_prepare_to_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbitmap_queue = type { i32 }
%struct.sbq_wait_state = type { i32 }
%struct.sbq_wait = type { i32, %struct.sbitmap_queue* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sbitmap_prepare_to_wait(%struct.sbitmap_queue* %0, %struct.sbq_wait_state* %1, %struct.sbq_wait* %2, i32 %3) #0 {
  %5 = alloca %struct.sbitmap_queue*, align 8
  %6 = alloca %struct.sbq_wait_state*, align 8
  %7 = alloca %struct.sbq_wait*, align 8
  %8 = alloca i32, align 4
  store %struct.sbitmap_queue* %0, %struct.sbitmap_queue** %5, align 8
  store %struct.sbq_wait_state* %1, %struct.sbq_wait_state** %6, align 8
  store %struct.sbq_wait* %2, %struct.sbq_wait** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.sbq_wait*, %struct.sbq_wait** %7, align 8
  %10 = getelementptr inbounds %struct.sbq_wait, %struct.sbq_wait* %9, i32 0, i32 1
  %11 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %10, align 8
  %12 = icmp ne %struct.sbitmap_queue* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %4
  %14 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %5, align 8
  %15 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %14, i32 0, i32 0
  %16 = call i32 @atomic_inc(i32* %15)
  %17 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %5, align 8
  %18 = load %struct.sbq_wait*, %struct.sbq_wait** %7, align 8
  %19 = getelementptr inbounds %struct.sbq_wait, %struct.sbq_wait* %18, i32 0, i32 1
  store %struct.sbitmap_queue* %17, %struct.sbitmap_queue** %19, align 8
  br label %20

20:                                               ; preds = %13, %4
  %21 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %6, align 8
  %22 = getelementptr inbounds %struct.sbq_wait_state, %struct.sbq_wait_state* %21, i32 0, i32 0
  %23 = load %struct.sbq_wait*, %struct.sbq_wait** %7, align 8
  %24 = getelementptr inbounds %struct.sbq_wait, %struct.sbq_wait* %23, i32 0, i32 0
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @prepare_to_wait_exclusive(i32* %22, i32* %24, i32 %25)
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @prepare_to_wait_exclusive(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
