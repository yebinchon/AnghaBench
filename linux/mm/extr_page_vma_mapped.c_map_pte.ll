; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_vma_mapped.c_map_pte.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_vma_mapped.c_map_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page_vma_mapped_walk = type { i32, i32, i32, %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@PVMW_SYNC = common dso_local global i32 0, align 4
@PVMW_MIGRATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page_vma_mapped_walk*)* @map_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_pte(%struct.page_vma_mapped_walk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page_vma_mapped_walk*, align 8
  %4 = alloca i32, align 4
  store %struct.page_vma_mapped_walk* %0, %struct.page_vma_mapped_walk** %3, align 8
  %5 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %6 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %9 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = call i32* @pte_offset_map(i32 %7, i32 %10)
  %12 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %13 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %12, i32 0, i32 4
  store i32* %11, i32** %13, align 8
  %14 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %15 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PVMW_SYNC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %65, label %20

20:                                               ; preds = %1
  %21 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %22 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PVMW_MIGRATION, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %29 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @is_swap_pte(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %81

35:                                               ; preds = %27
  br label %64

36:                                               ; preds = %20
  %37 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %38 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %37, i32 0, i32 4
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @is_swap_pte(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %36
  %44 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %45 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pte_to_swp_entry(i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @is_device_private_entry(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %81

53:                                               ; preds = %43
  br label %63

54:                                               ; preds = %36
  %55 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %56 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @pte_present(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %81

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %53
  br label %64

64:                                               ; preds = %63, %35
  br label %65

65:                                               ; preds = %64, %1
  %66 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %67 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %66, i32 0, i32 3
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %72 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @pte_lockptr(i32 %70, i32 %73)
  %75 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %76 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.page_vma_mapped_walk*, %struct.page_vma_mapped_walk** %3, align 8
  %78 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @spin_lock(i32 %79)
  store i32 1, i32* %2, align 4
  br label %81

81:                                               ; preds = %65, %61, %52, %34
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32* @pte_offset_map(i32, i32) #1

declare dso_local i64 @is_swap_pte(i32) #1

declare dso_local i32 @pte_to_swp_entry(i32) #1

declare dso_local i32 @is_device_private_entry(i32) #1

declare dso_local i32 @pte_present(i32) #1

declare dso_local i32 @pte_lockptr(i32, i32) #1

declare dso_local i32 @spin_lock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
