; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c_exit_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c_exit_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.vm_area_struct*, i64, i32, i32 }
%struct.vm_area_struct = type { i32, %struct.vm_area_struct* }
%struct.mmu_gather = type { i32 }

@MMF_OOM_SKIP = common dso_local global i32 0, align 4
@VM_LOCKED = common dso_local global i32 0, align 4
@FIRST_USER_ADDRESS = common dso_local global i32 0, align 4
@USER_PGTABLES_CEILING = common dso_local global i32 0, align 4
@VM_ACCOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exit_mmap(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca %struct.mmu_gather, align 4
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %7 = call i32 @mmu_notifier_release(%struct.mm_struct* %6)
  %8 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %9 = call i32 @mm_is_oom_victim(%struct.mm_struct* %8)
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %14 = call i32 @__oom_reap_task_mm(%struct.mm_struct* %13)
  %15 = load i32, i32* @MMF_OOM_SKIP, align 4
  %16 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %17 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %16, i32 0, i32 3
  %18 = call i32 @set_bit(i32 %15, i32* %17)
  %19 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %20 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %19, i32 0, i32 2
  %21 = call i32 @down_write(i32* %20)
  %22 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %23 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %22, i32 0, i32 2
  %24 = call i32 @up_write(i32* %23)
  br label %25

25:                                               ; preds = %12, %1
  %26 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %27 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %25
  %31 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %32 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %31, i32 0, i32 0
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %32, align 8
  store %struct.vm_area_struct* %33, %struct.vm_area_struct** %4, align 8
  br label %34

34:                                               ; preds = %47, %30
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %36 = icmp ne %struct.vm_area_struct* %35, null
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @VM_LOCKED, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %46 = call i32 @munlock_vma_pages_all(%struct.vm_area_struct* %45)
  br label %47

47:                                               ; preds = %44, %37
  %48 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %49 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %48, i32 0, i32 1
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %49, align 8
  store %struct.vm_area_struct* %50, %struct.vm_area_struct** %4, align 8
  br label %34

51:                                               ; preds = %34
  br label %52

52:                                               ; preds = %51, %25
  %53 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %54 = call i32 @arch_exit_mmap(%struct.mm_struct* %53)
  %55 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %56 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %55, i32 0, i32 0
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %56, align 8
  store %struct.vm_area_struct* %57, %struct.vm_area_struct** %4, align 8
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %59 = icmp ne %struct.vm_area_struct* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %52
  br label %95

61:                                               ; preds = %52
  %62 = call i32 (...) @lru_add_drain()
  %63 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %64 = call i32 @flush_cache_mm(%struct.mm_struct* %63)
  %65 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %66 = call i32 @tlb_gather_mmu(%struct.mmu_gather* %3, %struct.mm_struct* %65, i32 0, i32 -1)
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %68 = call i32 @unmap_vmas(%struct.mmu_gather* %3, %struct.vm_area_struct* %67, i32 0, i32 -1)
  %69 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %70 = load i32, i32* @FIRST_USER_ADDRESS, align 4
  %71 = load i32, i32* @USER_PGTABLES_CEILING, align 4
  %72 = call i32 @free_pgtables(%struct.mmu_gather* %3, %struct.vm_area_struct* %69, i32 %70, i32 %71)
  %73 = call i32 @tlb_finish_mmu(%struct.mmu_gather* %3, i32 0, i32 -1)
  br label %74

74:                                               ; preds = %89, %61
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %76 = icmp ne %struct.vm_area_struct* %75, null
  br i1 %76, label %77, label %92

77:                                               ; preds = %74
  %78 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %79 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @VM_ACCOUNT, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %77
  %85 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %86 = call i64 @vma_pages(%struct.vm_area_struct* %85)
  %87 = load i64, i64* %5, align 8
  %88 = add i64 %87, %86
  store i64 %88, i64* %5, align 8
  br label %89

89:                                               ; preds = %84, %77
  %90 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %91 = call %struct.vm_area_struct* @remove_vma(%struct.vm_area_struct* %90)
  store %struct.vm_area_struct* %91, %struct.vm_area_struct** %4, align 8
  br label %74

92:                                               ; preds = %74
  %93 = load i64, i64* %5, align 8
  %94 = call i32 @vm_unacct_memory(i64 %93)
  br label %95

95:                                               ; preds = %92, %60
  ret void
}

declare dso_local i32 @mmu_notifier_release(%struct.mm_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mm_is_oom_victim(%struct.mm_struct*) #1

declare dso_local i32 @__oom_reap_task_mm(%struct.mm_struct*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @munlock_vma_pages_all(%struct.vm_area_struct*) #1

declare dso_local i32 @arch_exit_mmap(%struct.mm_struct*) #1

declare dso_local i32 @lru_add_drain(...) #1

declare dso_local i32 @flush_cache_mm(%struct.mm_struct*) #1

declare dso_local i32 @tlb_gather_mmu(%struct.mmu_gather*, %struct.mm_struct*, i32, i32) #1

declare dso_local i32 @unmap_vmas(%struct.mmu_gather*, %struct.vm_area_struct*, i32, i32) #1

declare dso_local i32 @free_pgtables(%struct.mmu_gather*, %struct.vm_area_struct*, i32, i32) #1

declare dso_local i32 @tlb_finish_mmu(%struct.mmu_gather*, i32, i32) #1

declare dso_local i64 @vma_pages(%struct.vm_area_struct*) #1

declare dso_local %struct.vm_area_struct* @remove_vma(%struct.vm_area_struct*) #1

declare dso_local i32 @vm_unacct_memory(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
