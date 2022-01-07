; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_alloc_pages_vma.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_alloc_pages_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.mempolicy = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MPOL_INTERLEAVE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@CONFIG_TRANSPARENT_HUGEPAGE = common dso_local global i32 0, align 4
@MPOL_PREFERRED = common dso_local global i64 0, align 8
@MPOL_F_LOCAL = common dso_local global i32 0, align 4
@__GFP_THISNODE = common dso_local global i32 0, align 4
@__GFP_DIRECT_RECLAIM = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @alloc_pages_vma(i32 %0, i32 %1, %struct.vm_area_struct* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mempolicy*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call %struct.mempolicy* @get_vma_policy(%struct.vm_area_struct* %19, i64 %20)
  store %struct.mempolicy* %21, %struct.mempolicy** %13, align 8
  %22 = load %struct.mempolicy*, %struct.mempolicy** %13, align 8
  %23 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MPOL_INTERLEAVE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %6
  %28 = load %struct.mempolicy*, %struct.mempolicy** %13, align 8
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* @PAGE_SHIFT, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = call i32 @interleave_nid(%struct.mempolicy* %28, %struct.vm_area_struct* %29, i64 %30, i64 %34)
  store i32 %35, i32* %17, align 4
  %36 = load %struct.mempolicy*, %struct.mempolicy** %13, align 8
  %37 = call i32 @mpol_cond_put(%struct.mempolicy* %36)
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %17, align 4
  %41 = call %struct.page* @alloc_page_interleave(i32 %38, i32 %39, i32 %40)
  store %struct.page* %41, %struct.page** %14, align 8
  br label %125

42:                                               ; preds = %6
  %43 = load i32, i32* @CONFIG_TRANSPARENT_HUGEPAGE, align 4
  %44 = call i64 @IS_ENABLED(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br label %49

49:                                               ; preds = %46, %42
  %50 = phi i1 [ false, %42 ], [ %48, %46 ]
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %110

54:                                               ; preds = %49
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %18, align 4
  %56 = load %struct.mempolicy*, %struct.mempolicy** %13, align 8
  %57 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MPOL_PREFERRED, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %54
  %62 = load %struct.mempolicy*, %struct.mempolicy** %13, align 8
  %63 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @MPOL_F_LOCAL, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %61
  %69 = load %struct.mempolicy*, %struct.mempolicy** %13, align 8
  %70 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %18, align 4
  br label %73

73:                                               ; preds = %68, %61, %54
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.mempolicy*, %struct.mempolicy** %13, align 8
  %76 = call i32* @policy_nodemask(i32 %74, %struct.mempolicy* %75)
  store i32* %76, i32** %16, align 8
  %77 = load i32*, i32** %16, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load i32, i32* %18, align 4
  %81 = load i32*, i32** %16, align 8
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @node_isset(i32 %80, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %109

85:                                               ; preds = %79, %73
  %86 = load %struct.mempolicy*, %struct.mempolicy** %13, align 8
  %87 = call i32 @mpol_cond_put(%struct.mempolicy* %86)
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @__GFP_THISNODE, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* %8, align 4
  %93 = call %struct.page* @__alloc_pages_node(i32 %88, i32 %91, i32 %92)
  store %struct.page* %93, %struct.page** %14, align 8
  %94 = load %struct.page*, %struct.page** %14, align 8
  %95 = icmp ne %struct.page* %94, null
  br i1 %95, label %108, label %96

96:                                               ; preds = %85
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @__GFP_DIRECT_RECLAIM, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load i32, i32* %18, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @__GFP_NORETRY, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* %8, align 4
  %107 = call %struct.page* @__alloc_pages_node(i32 %102, i32 %105, i32 %106)
  store %struct.page* %107, %struct.page** %14, align 8
  br label %108

108:                                              ; preds = %101, %96, %85
  br label %125

109:                                              ; preds = %79
  br label %110

110:                                              ; preds = %109, %49
  %111 = load i32, i32* %7, align 4
  %112 = load %struct.mempolicy*, %struct.mempolicy** %13, align 8
  %113 = call i32* @policy_nodemask(i32 %111, %struct.mempolicy* %112)
  store i32* %113, i32** %16, align 8
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.mempolicy*, %struct.mempolicy** %13, align 8
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @policy_node(i32 %114, %struct.mempolicy* %115, i32 %116)
  store i32 %117, i32* %15, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %15, align 4
  %121 = load i32*, i32** %16, align 8
  %122 = call %struct.page* @__alloc_pages_nodemask(i32 %118, i32 %119, i32 %120, i32* %121)
  store %struct.page* %122, %struct.page** %14, align 8
  %123 = load %struct.mempolicy*, %struct.mempolicy** %13, align 8
  %124 = call i32 @mpol_cond_put(%struct.mempolicy* %123)
  br label %125

125:                                              ; preds = %110, %108, %27
  %126 = load %struct.page*, %struct.page** %14, align 8
  ret %struct.page* %126
}

declare dso_local %struct.mempolicy* @get_vma_policy(%struct.vm_area_struct*, i64) #1

declare dso_local i32 @interleave_nid(%struct.mempolicy*, %struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @mpol_cond_put(%struct.mempolicy*) #1

declare dso_local %struct.page* @alloc_page_interleave(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32* @policy_nodemask(i32, %struct.mempolicy*) #1

declare dso_local i64 @node_isset(i32, i32) #1

declare dso_local %struct.page* @__alloc_pages_node(i32, i32, i32) #1

declare dso_local i32 @policy_node(i32, %struct.mempolicy*, i32) #1

declare dso_local %struct.page* @__alloc_pages_nodemask(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
