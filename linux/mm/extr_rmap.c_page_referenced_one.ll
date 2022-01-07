; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_rmap.c_page_referenced_one.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_rmap.c_page_referenced_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.page_referenced_arg = type { i32, i32, i32 }
%struct.page_vma_mapped_walk = type { i64, i32, i64, %struct.vm_area_struct*, %struct.page* }

@VM_LOCKED = common dso_local global i32 0, align 4
@VM_SEQ_READ = common dso_local global i32 0, align 4
@CONFIG_TRANSPARENT_HUGEPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.vm_area_struct*, i64, i8*)* @page_referenced_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @page_referenced_one(%struct.page* %0, %struct.vm_area_struct* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.page_referenced_arg*, align 8
  %11 = alloca %struct.page_vma_mapped_walk, align 8
  %12 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %6, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to %struct.page_referenced_arg*
  store %struct.page_referenced_arg* %14, %struct.page_referenced_arg** %10, align 8
  %15 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 0
  %16 = load i64, i64* %8, align 8
  store i64 %16, i64* %15, align 8
  %17 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 1
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 3
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  store %struct.vm_area_struct* %20, %struct.vm_area_struct** %19, align 8
  %21 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 4
  %22 = load %struct.page*, %struct.page** %6, align 8
  store %struct.page* %22, %struct.page** %21, align 8
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %87, %4
  %24 = call i64 @page_vma_mapped_walk(%struct.page_vma_mapped_walk* %11)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %92

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %8, align 8
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @VM_LOCKED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = call i32 @page_vma_mapped_walk_done(%struct.page_vma_mapped_walk* %11)
  %37 = load i32, i32* @VM_LOCKED, align 4
  %38 = load %struct.page_referenced_arg*, %struct.page_referenced_arg** %10, align 8
  %39 = getelementptr inbounds %struct.page_referenced_arg, %struct.page_referenced_arg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  store i32 0, i32* %5, align 4
  br label %127

42:                                               ; preds = %26
  %43 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %42
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @ptep_clear_flush_young_notify(%struct.vm_area_struct* %47, i64 %48, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %46
  %54 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %55 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @VM_SEQ_READ, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i64 @likely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %64, %53
  br label %68

68:                                               ; preds = %67, %46
  br label %87

69:                                               ; preds = %42
  %70 = load i32, i32* @CONFIG_TRANSPARENT_HUGEPAGE, align 4
  %71 = call i64 @IS_ENABLED(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %69
  %74 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %75 = load i64, i64* %8, align 8
  %76 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @pmdp_clear_flush_young_notify(%struct.vm_area_struct* %74, i64 %75, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %80, %73
  br label %86

84:                                               ; preds = %69
  %85 = call i32 @WARN_ON_ONCE(i32 1)
  br label %86

86:                                               ; preds = %84, %83
  br label %87

87:                                               ; preds = %86, %68
  %88 = load %struct.page_referenced_arg*, %struct.page_referenced_arg** %10, align 8
  %89 = getelementptr inbounds %struct.page_referenced_arg, %struct.page_referenced_arg* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %89, align 4
  br label %23

92:                                               ; preds = %23
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load %struct.page*, %struct.page** %6, align 8
  %97 = call i32 @clear_page_idle(%struct.page* %96)
  br label %98

98:                                               ; preds = %95, %92
  %99 = load %struct.page*, %struct.page** %6, align 8
  %100 = call i64 @test_and_clear_page_young(%struct.page* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %102, %98
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %105
  %109 = load %struct.page_referenced_arg*, %struct.page_referenced_arg** %10, align 8
  %110 = getelementptr inbounds %struct.page_referenced_arg, %struct.page_referenced_arg* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  %113 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %114 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.page_referenced_arg*, %struct.page_referenced_arg** %10, align 8
  %117 = getelementptr inbounds %struct.page_referenced_arg, %struct.page_referenced_arg* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %108, %105
  %121 = load %struct.page_referenced_arg*, %struct.page_referenced_arg** %10, align 8
  %122 = getelementptr inbounds %struct.page_referenced_arg, %struct.page_referenced_arg* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %120
  store i32 0, i32* %5, align 4
  br label %127

126:                                              ; preds = %120
  store i32 1, i32* %5, align 4
  br label %127

127:                                              ; preds = %126, %125, %35
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i64 @page_vma_mapped_walk(%struct.page_vma_mapped_walk*) #1

declare dso_local i32 @page_vma_mapped_walk_done(%struct.page_vma_mapped_walk*) #1

declare dso_local i64 @ptep_clear_flush_young_notify(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @pmdp_clear_flush_young_notify(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @clear_page_idle(%struct.page*) #1

declare dso_local i64 @test_and_clear_page_young(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
