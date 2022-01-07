; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_futex.c_mark_wake_futex.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_futex.c_mark_wake_futex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wake_q_head = type { i32 }
%struct.futex_q = type { i32, i64, i64, %struct.task_struct* }
%struct.task_struct = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"refusing to wake PI futex\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wake_q_head*, %struct.futex_q*)* @mark_wake_futex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_wake_futex(%struct.wake_q_head* %0, %struct.futex_q* %1) #0 {
  %3 = alloca %struct.wake_q_head*, align 8
  %4 = alloca %struct.futex_q*, align 8
  %5 = alloca %struct.task_struct*, align 8
  store %struct.wake_q_head* %0, %struct.wake_q_head** %3, align 8
  store %struct.futex_q* %1, %struct.futex_q** %4, align 8
  %6 = load %struct.futex_q*, %struct.futex_q** %4, align 8
  %7 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %6, i32 0, i32 3
  %8 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  store %struct.task_struct* %8, %struct.task_struct** %5, align 8
  %9 = load %struct.futex_q*, %struct.futex_q** %4, align 8
  %10 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.futex_q*, %struct.futex_q** %4, align 8
  %15 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %13, %2
  %19 = phi i1 [ true, %2 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN(i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %35

24:                                               ; preds = %18
  %25 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %26 = call i32 @get_task_struct(%struct.task_struct* %25)
  %27 = load %struct.futex_q*, %struct.futex_q** %4, align 8
  %28 = call i32 @__unqueue_futex(%struct.futex_q* %27)
  %29 = load %struct.futex_q*, %struct.futex_q** %4, align 8
  %30 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %29, i32 0, i32 0
  %31 = call i32 @smp_store_release(i32* %30, i32* null)
  %32 = load %struct.wake_q_head*, %struct.wake_q_head** %3, align 8
  %33 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %34 = call i32 @wake_q_add_safe(%struct.wake_q_head* %32, %struct.task_struct* %33)
  br label %35

35:                                               ; preds = %24, %23
  ret void
}

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @__unqueue_futex(%struct.futex_q*) #1

declare dso_local i32 @smp_store_release(i32*, i32*) #1

declare dso_local i32 @wake_q_add_safe(%struct.wake_q_head*, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
