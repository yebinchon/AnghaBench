; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmu_context.c_unuse_mm.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmu_context.c_unuse_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32* }
%struct.mm_struct = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unuse_mm(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca %struct.task_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %4 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %4, %struct.task_struct** %3, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %6 = call i32 @task_lock(%struct.task_struct* %5)
  %7 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %8 = call i32 @sync_mm_rss(%struct.mm_struct* %7)
  %9 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 0
  store i32* null, i32** %10, align 8
  %11 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %13 = call i32 @enter_lazy_tlb(%struct.mm_struct* %11, %struct.task_struct* %12)
  %14 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %15 = call i32 @task_unlock(%struct.task_struct* %14)
  ret void
}

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local i32 @sync_mm_rss(%struct.mm_struct*) #1

declare dso_local i32 @enter_lazy_tlb(%struct.mm_struct*, %struct.task_struct*) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
