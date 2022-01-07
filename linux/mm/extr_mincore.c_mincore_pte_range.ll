; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mincore.c_mincore_pte_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mincore.c_mincore_pte_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_walk = type { i8*, i32, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, %struct.mm_walk*)* @mincore_pte_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mincore_pte_range(i32* %0, i64 %1, i64 %2, %struct.mm_walk* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mm_walk*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.vm_area_struct*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.mm_walk* %3, %struct.mm_walk** %8, align 8
  %16 = load %struct.mm_walk*, %struct.mm_walk** %8, align 8
  %17 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %16, i32 0, i32 2
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %17, align 8
  store %struct.vm_area_struct* %18, %struct.vm_area_struct** %10, align 8
  %19 = load %struct.mm_walk*, %struct.mm_walk** %8, align 8
  %20 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %12, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %6, align 8
  %24 = sub i64 %22, %23
  %25 = load i64, i64* @PAGE_SHIFT, align 8
  %26 = lshr i64 %24, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %13, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %30 = call i32* @pmd_trans_huge_lock(i32* %28, %struct.vm_area_struct* %29)
  store i32* %30, i32** %9, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %4
  %34 = load i8*, i8** %12, align 8
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @memset(i8* %34, i32 1, i32 %35)
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @spin_unlock(i32* %37)
  br label %107

39:                                               ; preds = %4
  %40 = load i32*, i32** %5, align 8
  %41 = call i64 @pmd_trans_unstable(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 @__mincore_unmapped_range(i64 %44, i64 %45, %struct.vm_area_struct* %46, i8* %47)
  br label %107

49:                                               ; preds = %39
  %50 = load %struct.mm_walk*, %struct.mm_walk** %8, align 8
  %51 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i32* @pte_offset_map_lock(i32 %52, i32* %53, i64 %54, i32** %9)
  store i32* %55, i32** %11, align 8
  br label %56

56:                                               ; preds = %96, %49
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %102

60:                                               ; preds = %56
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = call i64 @pte_none(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @PAGE_SIZE, align 8
  %70 = add i64 %68, %69
  %71 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = call i32 @__mincore_unmapped_range(i64 %67, i64 %70, %struct.vm_area_struct* %71, i8* %72)
  br label %93

74:                                               ; preds = %60
  %75 = load i32, i32* %14, align 4
  %76 = call i64 @pte_present(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i8*, i8** %12, align 8
  store i8 1, i8* %79, align 1
  br label %92

80:                                               ; preds = %74
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @pte_to_swp_entry(i32 %81)
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = call i64 @non_swap_entry(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i8*, i8** %12, align 8
  store i8 1, i8* %87, align 1
  br label %91

88:                                               ; preds = %80
  %89 = call i32 @WARN_ON(i32 1)
  %90 = load i8*, i8** %12, align 8
  store i8 1, i8* %90, align 1
  br label %91

91:                                               ; preds = %88, %86
  br label %92

92:                                               ; preds = %91, %78
  br label %93

93:                                               ; preds = %92, %66
  %94 = load i8*, i8** %12, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %12, align 8
  br label %96

96:                                               ; preds = %93
  %97 = load i32*, i32** %11, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %11, align 8
  %99 = load i64, i64* @PAGE_SIZE, align 8
  %100 = load i64, i64* %6, align 8
  %101 = add i64 %100, %99
  store i64 %101, i64* %6, align 8
  br label %56

102:                                              ; preds = %56
  %103 = load i32*, i32** %11, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 -1
  %105 = load i32*, i32** %9, align 8
  %106 = call i32 @pte_unmap_unlock(i32* %104, i32* %105)
  br label %107

107:                                              ; preds = %102, %43, %33
  %108 = load i32, i32* %13, align 4
  %109 = load %struct.mm_walk*, %struct.mm_walk** %8, align 8
  %110 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = sext i32 %108 to i64
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  store i8* %113, i8** %110, align 8
  %114 = call i32 (...) @cond_resched()
  ret i32 0
}

declare dso_local i32* @pmd_trans_huge_lock(i32*, %struct.vm_area_struct*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @pmd_trans_unstable(i32*) #1

declare dso_local i32 @__mincore_unmapped_range(i64, i64, %struct.vm_area_struct*, i8*) #1

declare dso_local i32* @pte_offset_map_lock(i32, i32*, i64, i32**) #1

declare dso_local i64 @pte_none(i32) #1

declare dso_local i64 @pte_present(i32) #1

declare dso_local i32 @pte_to_swp_entry(i32) #1

declare dso_local i64 @non_swap_entry(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
