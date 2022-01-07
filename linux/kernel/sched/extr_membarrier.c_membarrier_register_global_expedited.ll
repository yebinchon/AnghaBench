; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_membarrier.c_membarrier_register_global_expedited.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_membarrier.c_membarrier_register_global_expedited.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@MEMBARRIER_STATE_GLOBAL_EXPEDITED_READY = common dso_local global i32 0, align 4
@MEMBARRIER_STATE_GLOBAL_EXPEDITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @membarrier_register_global_expedited to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @membarrier_register_global_expedited() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i32, align 4
  %5 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %5, %struct.task_struct** %2, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %7 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 0
  %8 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  store %struct.mm_struct* %8, %struct.mm_struct** %3, align 8
  %9 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %10 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %9, i32 0, i32 0
  %11 = call i32 @atomic_read(i32* %10)
  %12 = load i32, i32* @MEMBARRIER_STATE_GLOBAL_EXPEDITED_READY, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %32

16:                                               ; preds = %0
  %17 = load i32, i32* @MEMBARRIER_STATE_GLOBAL_EXPEDITED, align 4
  %18 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %19 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %18, i32 0, i32 0
  %20 = call i32 @atomic_or(i32 %17, i32* %19)
  %21 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %22 = call i32 @sync_runqueues_membarrier_state(%struct.mm_struct* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %1, align 4
  br label %32

27:                                               ; preds = %16
  %28 = load i32, i32* @MEMBARRIER_STATE_GLOBAL_EXPEDITED_READY, align 4
  %29 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %30 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %29, i32 0, i32 0
  %31 = call i32 @atomic_or(i32 %28, i32* %30)
  store i32 0, i32* %1, align 4
  br label %32

32:                                               ; preds = %27, %25, %15
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_or(i32, i32*) #1

declare dso_local i32 @sync_runqueues_membarrier_state(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
