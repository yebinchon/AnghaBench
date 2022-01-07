; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c_expand_downwards.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c_expand_downwards.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, i64, i64, i64, i32, %struct.vm_area_struct*, %struct.mm_struct* }
%struct.mm_struct = type { i64, i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@mmap_min_addr = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@VM_GROWSDOWN = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@VM_READ = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@stack_guard_gap = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_LOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @expand_downwards(%struct.vm_area_struct* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 6
  %13 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  store %struct.mm_struct* %13, %struct.mm_struct** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load i64, i64* @PAGE_MASK, align 8
  %15 = load i64, i64* %5, align 8
  %16 = and i64 %15, %14
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @mmap_min_addr, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EPERM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %161

23:                                               ; preds = %2
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 5
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %25, align 8
  store %struct.vm_area_struct* %26, %struct.vm_area_struct** %7, align 8
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %28 = icmp ne %struct.vm_area_struct* %27, null
  br i1 %28, label %29, label %59

29:                                               ; preds = %23
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @VM_GROWSDOWN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %59, label %36

36:                                               ; preds = %29
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @VM_WRITE, align 4
  %41 = load i32, i32* @VM_READ, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @VM_EXEC, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %39, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %36
  %48 = load i64, i64* %5, align 8
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %50 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = sub i64 %48, %51
  %53 = load i64, i64* @stack_guard_gap, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %161

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %36, %29, %23
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %61 = call i32 @anon_vma_prepare(%struct.vm_area_struct* %60)
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %161

67:                                               ; preds = %59
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %69 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @anon_vma_lock_write(i32 %70)
  %72 = load i64, i64* %5, align 8
  %73 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %74 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ult i64 %72, %75
  br i1 %76, label %77, label %148

77:                                               ; preds = %67
  %78 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %79 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %5, align 8
  %82 = sub i64 %80, %81
  store i64 %82, i64* %9, align 8
  %83 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %84 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %5, align 8
  %87 = sub i64 %85, %86
  %88 = load i64, i64* @PAGE_SHIFT, align 8
  %89 = lshr i64 %87, %88
  store i64 %89, i64* %10, align 8
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %8, align 4
  %92 = load i64, i64* %10, align 8
  %93 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %94 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp ule i64 %92, %95
  br i1 %96, label %97, label %147

97:                                               ; preds = %77
  %98 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %99 = load i64, i64* %9, align 8
  %100 = load i64, i64* %10, align 8
  %101 = call i32 @acct_stack_growth(%struct.vm_area_struct* %98, i64 %99, i64 %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %146, label %104

104:                                              ; preds = %97
  %105 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %106 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %105, i32 0, i32 1
  %107 = call i32 @spin_lock(i32* %106)
  %108 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %109 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @VM_LOCKED, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %104
  %115 = load i64, i64* %10, align 8
  %116 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %117 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %118, %115
  store i64 %119, i64* %117, align 8
  br label %120

120:                                              ; preds = %114, %104
  %121 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %122 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %123 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i64, i64* %10, align 8
  %126 = call i32 @vm_stat_account(%struct.mm_struct* %121, i32 %124, i64 %125)
  %127 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %128 = call i32 @anon_vma_interval_tree_pre_update_vma(%struct.vm_area_struct* %127)
  %129 = load i64, i64* %5, align 8
  %130 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %131 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %130, i32 0, i32 2
  store i64 %129, i64* %131, align 8
  %132 = load i64, i64* %10, align 8
  %133 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %134 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = sub i64 %135, %132
  store i64 %136, i64* %134, align 8
  %137 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %138 = call i32 @anon_vma_interval_tree_post_update_vma(%struct.vm_area_struct* %137)
  %139 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %140 = call i32 @vma_gap_update(%struct.vm_area_struct* %139)
  %141 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %142 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %141, i32 0, i32 1
  %143 = call i32 @spin_unlock(i32* %142)
  %144 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %145 = call i32 @perf_event_mmap(%struct.vm_area_struct* %144)
  br label %146

146:                                              ; preds = %120, %97
  br label %147

147:                                              ; preds = %146, %77
  br label %148

148:                                              ; preds = %147, %67
  %149 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %150 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @anon_vma_unlock_write(i32 %151)
  %153 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %154 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %155 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @khugepaged_enter_vma_merge(%struct.vm_area_struct* %153, i32 %156)
  %158 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %159 = call i32 @validate_mm(%struct.mm_struct* %158)
  %160 = load i32, i32* %8, align 4
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %148, %64, %55, %20
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @anon_vma_prepare(%struct.vm_area_struct*) #1

declare dso_local i32 @anon_vma_lock_write(i32) #1

declare dso_local i32 @acct_stack_growth(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @vm_stat_account(%struct.mm_struct*, i32, i64) #1

declare dso_local i32 @anon_vma_interval_tree_pre_update_vma(%struct.vm_area_struct*) #1

declare dso_local i32 @anon_vma_interval_tree_post_update_vma(%struct.vm_area_struct*) #1

declare dso_local i32 @vma_gap_update(%struct.vm_area_struct*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @perf_event_mmap(%struct.vm_area_struct*) #1

declare dso_local i32 @anon_vma_unlock_write(i32) #1

declare dso_local i32 @khugepaged_enter_vma_merge(%struct.vm_area_struct*, i32) #1

declare dso_local i32 @validate_mm(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
