; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_unmap_page_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_unmap_page_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_gather = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.zap_details = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unmap_page_range(%struct.mmu_gather* %0, %struct.vm_area_struct* %1, i64 %2, i64 %3, %struct.zap_details* %4) #0 {
  %6 = alloca %struct.mmu_gather*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.zap_details*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.mmu_gather* %0, %struct.mmu_gather** %6, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.zap_details* %4, %struct.zap_details** %10, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp uge i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.mmu_gather*, %struct.mmu_gather** %6, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %20 = call i32 @tlb_start_vma(%struct.mmu_gather* %18, %struct.vm_area_struct* %19)
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %8, align 8
  %25 = call i32* @pgd_offset(i32 %23, i64 %24)
  store i32* %25, i32** %11, align 8
  br label %26

26:                                               ; preds = %42, %5
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i64 @pgd_addr_end(i64 %27, i64 %28)
  store i64 %29, i64* %12, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call i64 @pgd_none_or_clear_bad(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %42

34:                                               ; preds = %26
  %35 = load %struct.mmu_gather*, %struct.mmu_gather** %6, align 8
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load %struct.zap_details*, %struct.zap_details** %10, align 8
  %41 = call i64 @zap_p4d_range(%struct.mmu_gather* %35, %struct.vm_area_struct* %36, i32* %37, i64 %38, i64 %39, %struct.zap_details* %40)
  store i64 %41, i64* %12, align 8
  br label %42

42:                                               ; preds = %34, %33
  %43 = load i32*, i32** %11, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %11, align 8
  %45 = load i64, i64* %12, align 8
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %26, label %49

49:                                               ; preds = %42
  %50 = load %struct.mmu_gather*, %struct.mmu_gather** %6, align 8
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %52 = call i32 @tlb_end_vma(%struct.mmu_gather* %50, %struct.vm_area_struct* %51)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @tlb_start_vma(%struct.mmu_gather*, %struct.vm_area_struct*) #1

declare dso_local i32* @pgd_offset(i32, i64) #1

declare dso_local i64 @pgd_addr_end(i64, i64) #1

declare dso_local i64 @pgd_none_or_clear_bad(i32*) #1

declare dso_local i64 @zap_p4d_range(%struct.mmu_gather*, %struct.vm_area_struct*, i32*, i64, i64, %struct.zap_details*) #1

declare dso_local i32 @tlb_end_vma(%struct.mmu_gather*, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
