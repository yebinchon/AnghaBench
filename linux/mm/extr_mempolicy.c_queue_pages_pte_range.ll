; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_queue_pages_pte_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_queue_pages_pte_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_walk = type { i32, %struct.queue_pages*, %struct.vm_area_struct* }
%struct.queue_pages = type { i64, i32 }
%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }

@MPOL_MF_MOVE = common dso_local global i64 0, align 8
@MPOL_MF_MOVE_ALL = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, %struct.mm_walk*)* @queue_pages_pte_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_pages_pte_range(i32* %0, i64 %1, i64 %2, %struct.mm_walk* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mm_walk*, align 8
  %10 = alloca %struct.vm_area_struct*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca %struct.queue_pages*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.mm_walk* %3, %struct.mm_walk** %9, align 8
  %18 = load %struct.mm_walk*, %struct.mm_walk** %9, align 8
  %19 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %18, i32 0, i32 2
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %19, align 8
  store %struct.vm_area_struct* %20, %struct.vm_area_struct** %10, align 8
  %21 = load %struct.mm_walk*, %struct.mm_walk** %9, align 8
  %22 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %21, i32 0, i32 1
  %23 = load %struct.queue_pages*, %struct.queue_pages** %22, align 8
  store %struct.queue_pages* %23, %struct.queue_pages** %12, align 8
  %24 = load %struct.queue_pages*, %struct.queue_pages** %12, align 8
  %25 = getelementptr inbounds %struct.queue_pages, %struct.queue_pages* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %13, align 8
  store i32 0, i32* %15, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %29 = call i32* @pmd_trans_huge_lock(i32* %27, %struct.vm_area_struct* %28)
  store i32* %29, i32** %17, align 8
  %30 = load i32*, i32** %17, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %4
  %33 = load i32*, i32** %6, align 8
  %34 = load i32*, i32** %17, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.mm_walk*, %struct.mm_walk** %9, align 8
  %38 = call i32 @queue_pages_pmd(i32* %33, i32* %34, i64 %35, i64 %36, %struct.mm_walk* %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 2
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %14, align 4
  store i32 %42, i32* %5, align 4
  br label %135

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %4
  %45 = load i32*, i32** %6, align 8
  %46 = call i64 @pmd_trans_unstable(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %135

49:                                               ; preds = %44
  %50 = load %struct.mm_walk*, %struct.mm_walk** %9, align 8
  %51 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32* @pte_offset_map_lock(i32 %52, i32* %53, i64 %54, i32** %17)
  store i32* %55, i32** %16, align 8
  br label %56

56:                                               ; preds = %110, %49
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %116

60:                                               ; preds = %56
  %61 = load i32*, i32** %16, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pte_present(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  br label %110

66:                                               ; preds = %60
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i32*, i32** %16, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call %struct.page* @vm_normal_page(%struct.vm_area_struct* %67, i64 %68, i32 %70)
  store %struct.page* %71, %struct.page** %11, align 8
  %72 = load %struct.page*, %struct.page** %11, align 8
  %73 = icmp ne %struct.page* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %66
  br label %110

75:                                               ; preds = %66
  %76 = load %struct.page*, %struct.page** %11, align 8
  %77 = call i64 @PageReserved(%struct.page* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %110

80:                                               ; preds = %75
  %81 = load %struct.page*, %struct.page** %11, align 8
  %82 = load %struct.queue_pages*, %struct.queue_pages** %12, align 8
  %83 = call i32 @queue_pages_required(%struct.page* %81, %struct.queue_pages* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %80
  br label %110

86:                                               ; preds = %80
  %87 = load i64, i64* %13, align 8
  %88 = load i64, i64* @MPOL_MF_MOVE, align 8
  %89 = load i64, i64* @MPOL_MF_MOVE_ALL, align 8
  %90 = or i64 %88, %89
  %91 = and i64 %87, %90
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %86
  %94 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %95 = call i32 @vma_migratable(%struct.vm_area_struct* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  store i32 1, i32* %15, align 4
  br label %116

98:                                               ; preds = %93
  %99 = load %struct.page*, %struct.page** %11, align 8
  %100 = load %struct.queue_pages*, %struct.queue_pages** %12, align 8
  %101 = getelementptr inbounds %struct.queue_pages, %struct.queue_pages* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i64, i64* %13, align 8
  %104 = call i64 @migrate_page_add(%struct.page* %99, i32 %102, i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  store i32 1, i32* %15, align 4
  br label %107

107:                                              ; preds = %106, %98
  br label %109

108:                                              ; preds = %86
  br label %116

109:                                              ; preds = %107
  br label %110

110:                                              ; preds = %109, %85, %79, %74, %65
  %111 = load i32*, i32** %16, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %16, align 8
  %113 = load i64, i64* @PAGE_SIZE, align 8
  %114 = load i64, i64* %7, align 8
  %115 = add i64 %114, %113
  store i64 %115, i64* %7, align 8
  br label %56

116:                                              ; preds = %108, %97, %56
  %117 = load i32*, i32** %16, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 -1
  %119 = load i32*, i32** %17, align 8
  %120 = call i32 @pte_unmap_unlock(i32* %118, i32* %119)
  %121 = call i32 (...) @cond_resched()
  %122 = load i32, i32* %15, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  store i32 1, i32* %5, align 4
  br label %135

125:                                              ; preds = %116
  %126 = load i64, i64* %7, align 8
  %127 = load i64, i64* %8, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load i32, i32* @EIO, align 4
  %131 = sub nsw i32 0, %130
  br label %133

132:                                              ; preds = %125
  br label %133

133:                                              ; preds = %132, %129
  %134 = phi i32 [ %131, %129 ], [ 0, %132 ]
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %133, %124, %48, %41
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i32* @pmd_trans_huge_lock(i32*, %struct.vm_area_struct*) #1

declare dso_local i32 @queue_pages_pmd(i32*, i32*, i64, i64, %struct.mm_walk*) #1

declare dso_local i64 @pmd_trans_unstable(i32*) #1

declare dso_local i32* @pte_offset_map_lock(i32, i32*, i64, i32**) #1

declare dso_local i32 @pte_present(i32) #1

declare dso_local %struct.page* @vm_normal_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i64 @PageReserved(%struct.page*) #1

declare dso_local i32 @queue_pages_required(%struct.page*, %struct.queue_pages*) #1

declare dso_local i32 @vma_migratable(%struct.vm_area_struct*) #1

declare dso_local i64 @migrate_page_add(%struct.page*, i32, i64) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
