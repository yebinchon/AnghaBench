; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_sbitmap.c_sbitmap_queue_clear.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_sbitmap.c_sbitmap_queue_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbitmap_queue = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sbitmap_queue_clear(%struct.sbitmap_queue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sbitmap_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sbitmap_queue* %0, %struct.sbitmap_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = call i32 (...) @smp_mb__before_atomic()
  %8 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %4, align 8
  %9 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %8, i32 0, i32 1
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @sbitmap_deferred_clear_bit(%struct.TYPE_2__* %9, i32 %10)
  %12 = call i32 (...) @smp_mb__after_atomic()
  %13 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %4, align 8
  %14 = call i32 @sbitmap_queue_wake_up(%struct.sbitmap_queue* %13)
  %15 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %4, align 8
  %16 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %4, align 8
  %22 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ult i32 %20, %24
  br label %26

26:                                               ; preds = %19, %3
  %27 = phi i1 [ false, %3 ], [ %25, %19 ]
  %28 = zext i1 %27 to i32
  %29 = call i64 @likely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %4, align 8
  %34 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32* @per_cpu_ptr(i32 %35, i32 %36)
  store i32 %32, i32* %37, align 4
  br label %38

38:                                               ; preds = %31, %26
  ret void
}

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i32 @sbitmap_deferred_clear_bit(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @sbitmap_queue_wake_up(%struct.sbitmap_queue*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32* @per_cpu_ptr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
