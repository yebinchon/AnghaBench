; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_userfaultfd.c_mfill_zeropage_pte.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_userfaultfd.c_mfill_zeropage_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, i32*, %struct.vm_area_struct*, i64)* @mfill_zeropage_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mfill_zeropage_pte(%struct.mm_struct* %0, i32* %1, %struct.vm_area_struct* %2, i64 %3) #0 {
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.inode*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @my_zero_pfn(i64 %16)
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @pfn_pte(i32 %17, i32 %20)
  %22 = call i32 @pte_mkspecial(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32* @pte_offset_map_lock(%struct.mm_struct* %23, i32* %24, i64 %25, i32** %11)
  store i32* %26, i32** %10, align 8
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp ne %struct.TYPE_2__* %29, null
  br i1 %30, label %31, label %54

31:                                               ; preds = %4
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %33 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.inode*, %struct.inode** %35, align 8
  store %struct.inode* %36, %struct.inode** %15, align 8
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i64 @linear_page_index(%struct.vm_area_struct* %37, i64 %38)
  store i64 %39, i64* %13, align 8
  %40 = load %struct.inode*, %struct.inode** %15, align 8
  %41 = call i32 @i_size_read(%struct.inode* %40)
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = call i64 @DIV_ROUND_UP(i32 %41, i32 %42)
  store i64 %43, i64* %14, align 8
  %44 = load i32, i32* @EFAULT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %12, align 4
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* %14, align 8
  %48 = icmp sge i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %31
  br label %72

53:                                               ; preds = %31
  br label %54

54:                                               ; preds = %53, %4
  %55 = load i32, i32* @EEXIST, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %12, align 4
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @pte_none(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  br label %72

62:                                               ; preds = %54
  %63 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @set_pte_at(%struct.mm_struct* %63, i64 %64, i32* %65, i32 %66)
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @update_mmu_cache(%struct.vm_area_struct* %68, i64 %69, i32* %70)
  store i32 0, i32* %12, align 4
  br label %72

72:                                               ; preds = %62, %61, %52
  %73 = load i32*, i32** %10, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = call i32 @pte_unmap_unlock(i32* %73, i32* %74)
  %76 = load i32, i32* %12, align 4
  ret i32 %76
}

declare dso_local i32 @pte_mkspecial(i32) #1

declare dso_local i32 @pfn_pte(i32, i32) #1

declare dso_local i32 @my_zero_pfn(i64) #1

declare dso_local i32* @pte_offset_map_lock(%struct.mm_struct*, i32*, i64, i32**) #1

declare dso_local i64 @linear_page_index(%struct.vm_area_struct*, i64) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pte_none(i32) #1

declare dso_local i32 @set_pte_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @update_mmu_cache(%struct.vm_area_struct*, i64, i32*) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
