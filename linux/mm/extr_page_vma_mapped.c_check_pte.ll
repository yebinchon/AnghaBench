; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_vma_mapped.c_check_pte.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_vma_mapped.c_check_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page_vma_mapped_walk = type { i32, i32, i32* }

@PVMW_MIGRATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page_vma_mapped_walk*)* @check_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_pte(%struct.page_vma_mapped_walk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page_vma_mapped_walk*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.page_vma_mapped_walk* %0, %struct.page_vma_mapped_walk** %3, align 8
  %7 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %8 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @PVMW_MIGRATION, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %1
  %14 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %15 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @is_swap_pte(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %75

21:                                               ; preds = %13
  %22 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %23 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pte_to_swp_entry(i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @is_migration_entry(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %75

31:                                               ; preds = %21
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @migration_entry_to_pfn(i32 %32)
  store i64 %33, i64* %4, align 8
  br label %69

34:                                               ; preds = %1
  %35 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %36 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @is_swap_pte(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %34
  %42 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %43 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pte_to_swp_entry(i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @is_device_private_entry(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %75

51:                                               ; preds = %41
  %52 = load i32, i32* %6, align 4
  %53 = call i64 @device_private_entry_to_pfn(i32 %52)
  store i64 %53, i64* %4, align 8
  br label %68

54:                                               ; preds = %34
  %55 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %56 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @pte_present(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %75

62:                                               ; preds = %54
  %63 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %64 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @pte_pfn(i32 %66)
  store i64 %67, i64* %4, align 8
  br label %68

68:                                               ; preds = %62, %51
  br label %69

69:                                               ; preds = %68, %31
  %70 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %71 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* %4, align 8
  %74 = call i32 @pfn_in_hpage(i32 %72, i64 %73)
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %69, %61, %50, %30, %20
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i64 @is_swap_pte(i32) #1

declare dso_local i32 @pte_to_swp_entry(i32) #1

declare dso_local i32 @is_migration_entry(i32) #1

declare dso_local i64 @migration_entry_to_pfn(i32) #1

declare dso_local i32 @is_device_private_entry(i32) #1

declare dso_local i64 @device_private_entry_to_pfn(i32) #1

declare dso_local i32 @pte_present(i32) #1

declare dso_local i64 @pte_pfn(i32) #1

declare dso_local i32 @pfn_in_hpage(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
