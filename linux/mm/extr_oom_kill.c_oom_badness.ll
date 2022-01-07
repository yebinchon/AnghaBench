; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_oom_kill.c_oom_badness.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_oom_kill.c_oom_badness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@OOM_SCORE_ADJ_MIN = common dso_local global i64 0, align 8
@MMF_OOM_SKIP = common dso_local global i32 0, align 4
@MM_SWAPENTS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @oom_badness(%struct.task_struct* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %9 = call i64 @oom_unkillable_task(%struct.task_struct* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %76

12:                                               ; preds = %2
  %13 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %14 = call %struct.task_struct* @find_lock_task_mm(%struct.task_struct* %13)
  store %struct.task_struct* %14, %struct.task_struct** %4, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %16 = icmp ne %struct.task_struct* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i64 0, i64* %3, align 8
  br label %76

18:                                               ; preds = %12
  %19 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @OOM_SCORE_ADJ_MIN, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %39, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* @MMF_OOM_SKIP, align 4
  %29 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %30 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = call i64 @test_bit(i32 %28, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %27
  %36 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %37 = call i64 @in_vfork(%struct.task_struct* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35, %27, %18
  %40 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %41 = call i32 @task_unlock(%struct.task_struct* %40)
  store i64 0, i64* %3, align 8
  br label %76

42:                                               ; preds = %35
  %43 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %44 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = call i64 @get_mm_rss(%struct.TYPE_6__* %45)
  %47 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %48 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load i32, i32* @MM_SWAPENTS, align 4
  %51 = call i64 @get_mm_counter(%struct.TYPE_6__* %49, i32 %50)
  %52 = add nsw i64 %46, %51
  %53 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %54 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = call i64 @mm_pgtables_bytes(%struct.TYPE_6__* %55)
  %57 = load i64, i64* @PAGE_SIZE, align 8
  %58 = sdiv i64 %56, %57
  %59 = add nsw i64 %52, %58
  store i64 %59, i64* %6, align 8
  %60 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %61 = call i32 @task_unlock(%struct.task_struct* %60)
  %62 = load i64, i64* %5, align 8
  %63 = udiv i64 %62, 1000
  %64 = load i64, i64* %7, align 8
  %65 = mul i64 %64, %63
  store i64 %65, i64* %7, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* %6, align 8
  %68 = add nsw i64 %67, %66
  store i64 %68, i64* %6, align 8
  %69 = load i64, i64* %6, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %42
  %72 = load i64, i64* %6, align 8
  br label %74

73:                                               ; preds = %42
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi i64 [ %72, %71 ], [ 1, %73 ]
  store i64 %75, i64* %3, align 8
  br label %76

76:                                               ; preds = %74, %39, %17, %11
  %77 = load i64, i64* %3, align 8
  ret i64 %77
}

declare dso_local i64 @oom_unkillable_task(%struct.task_struct*) #1

declare dso_local %struct.task_struct* @find_lock_task_mm(%struct.task_struct*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @in_vfork(%struct.task_struct*) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

declare dso_local i64 @get_mm_rss(%struct.TYPE_6__*) #1

declare dso_local i64 @get_mm_counter(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @mm_pgtables_bytes(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
