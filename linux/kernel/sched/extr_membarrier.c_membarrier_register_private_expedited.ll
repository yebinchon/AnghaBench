; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_membarrier.c_membarrier_register_private_expedited.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_membarrier.c_membarrier_register_private_expedited.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@MEMBARRIER_STATE_PRIVATE_EXPEDITED_READY = common dso_local global i32 0, align 4
@MEMBARRIER_STATE_PRIVATE_EXPEDITED = common dso_local global i32 0, align 4
@MEMBARRIER_FLAG_SYNC_CORE = common dso_local global i32 0, align 4
@CONFIG_ARCH_HAS_MEMBARRIER_SYNC_CORE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MEMBARRIER_STATE_PRIVATE_EXPEDITED_SYNC_CORE_READY = common dso_local global i32 0, align 4
@MEMBARRIER_STATE_PRIVATE_EXPEDITED_SYNC_CORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @membarrier_register_private_expedited to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @membarrier_register_private_expedited(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %9, %struct.task_struct** %4, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %11 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i32 0, i32 0
  %12 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  store %struct.mm_struct* %12, %struct.mm_struct** %5, align 8
  %13 = load i32, i32* @MEMBARRIER_STATE_PRIVATE_EXPEDITED_READY, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @MEMBARRIER_STATE_PRIVATE_EXPEDITED, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @MEMBARRIER_FLAG_SYNC_CORE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load i32, i32* @CONFIG_ARCH_HAS_MEMBARRIER_SYNC_CORE, align 4
  %21 = call i32 @IS_ENABLED(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %62

26:                                               ; preds = %19
  %27 = load i32, i32* @MEMBARRIER_STATE_PRIVATE_EXPEDITED_SYNC_CORE_READY, align 4
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %26, %1
  %29 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %30 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %29, i32 0, i32 0
  %31 = call i32 @atomic_read(i32* %30)
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %62

37:                                               ; preds = %28
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @MEMBARRIER_FLAG_SYNC_CORE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @MEMBARRIER_STATE_PRIVATE_EXPEDITED_SYNC_CORE, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %49 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %48, i32 0, i32 0
  %50 = call i32 @atomic_or(i32 %47, i32* %49)
  %51 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %52 = call i32 @sync_runqueues_membarrier_state(%struct.mm_struct* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %2, align 4
  br label %62

57:                                               ; preds = %46
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %60 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %59, i32 0, i32 0
  %61 = call i32 @atomic_or(i32 %58, i32* %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %57, %55, %36, %23
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_or(i32, i32*) #1

declare dso_local i32 @sync_runqueues_membarrier_state(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
