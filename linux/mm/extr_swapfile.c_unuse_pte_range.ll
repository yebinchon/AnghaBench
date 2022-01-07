; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_unuse_pte_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_unuse_pte_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i8* }
%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }
%struct.vm_fault = type { i64, i32*, %struct.vm_area_struct* }

@swap_info = common dso_local global %struct.swap_info_struct** null, align 8
@GFP_HIGHUSER_MOVABLE = common dso_local global i32 0, align 4
@SWAP_MAP_BAD = common dso_local global i8 0, align 1
@ENOMEM = common dso_local global i32 0, align 4
@FRONTSWAP_PAGES_UNUSED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i32*, i64, i64, i32, i32, i64*)* @unuse_pte_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unuse_pte_range(%struct.vm_area_struct* %0, i32* %1, i64 %2, i64 %3, i32 %4, i32 %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca %struct.page*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.swap_info_struct*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca %struct.vm_fault, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64* %6, i64** %15, align 8
  store i32 0, i32* %21, align 4
  %24 = load %struct.swap_info_struct**, %struct.swap_info_struct*** @swap_info, align 8
  %25 = load i32, i32* %13, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.swap_info_struct*, %struct.swap_info_struct** %24, i64 %26
  %28 = load %struct.swap_info_struct*, %struct.swap_info_struct** %27, align 8
  store %struct.swap_info_struct* %28, %struct.swap_info_struct** %19, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i64, i64* %11, align 8
  %31 = call i32* @pte_offset_map(i32* %29, i64 %30)
  store i32* %31, i32** %18, align 8
  br label %32

32:                                               ; preds = %133, %7
  %33 = load i32*, i32** %18, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @is_swap_pte(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %133

38:                                               ; preds = %32
  %39 = load i32*, i32** %18, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pte_to_swp_entry(i32 %40)
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %17, align 4
  %43 = call i32 @swp_type(i32 %42)
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %133

47:                                               ; preds = %38
  %48 = load i32, i32* %17, align 4
  %49 = call i64 @swp_offset(i32 %48)
  store i64 %49, i64* %20, align 8
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.swap_info_struct*, %struct.swap_info_struct** %19, align 8
  %54 = load i64, i64* %20, align 8
  %55 = call i32 @frontswap_test(%struct.swap_info_struct* %53, i64 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %133

58:                                               ; preds = %52, %47
  %59 = load i32*, i32** %18, align 8
  %60 = call i32 @pte_unmap(i32* %59)
  %61 = load %struct.swap_info_struct*, %struct.swap_info_struct** %19, align 8
  %62 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i64, i64* %20, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8* %65, i8** %22, align 8
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %67 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %23, i32 0, i32 2
  store %struct.vm_area_struct* %66, %struct.vm_area_struct** %67, align 8
  %68 = load i64, i64* %11, align 8
  %69 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %23, i32 0, i32 0
  store i64 %68, i64* %69, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %23, i32 0, i32 1
  store i32* %70, i32** %71, align 8
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* @GFP_HIGHUSER_MOVABLE, align 4
  %74 = call %struct.page* @swapin_readahead(i32 %72, i32 %73, %struct.vm_fault* %23)
  store %struct.page* %74, %struct.page** %16, align 8
  %75 = load %struct.page*, %struct.page** %16, align 8
  %76 = icmp ne %struct.page* %75, null
  br i1 %76, label %93, label %77

77:                                               ; preds = %58
  %78 = load i8*, i8** %22, align 8
  %79 = load volatile i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %77
  %83 = load i8*, i8** %22, align 8
  %84 = load volatile i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = load volatile i8, i8* @SWAP_MAP_BAD, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %82, %77
  br label %129

90:                                               ; preds = %82
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %8, align 4
  br label %148

93:                                               ; preds = %58
  %94 = load %struct.page*, %struct.page** %16, align 8
  %95 = call i32 @lock_page(%struct.page* %94)
  %96 = load %struct.page*, %struct.page** %16, align 8
  %97 = call i32 @wait_on_page_writeback(%struct.page* %96)
  %98 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %99 = load i32*, i32** %10, align 8
  %100 = load i64, i64* %11, align 8
  %101 = load i32, i32* %17, align 4
  %102 = load %struct.page*, %struct.page** %16, align 8
  %103 = call i32 @unuse_pte(%struct.vm_area_struct* %98, i32* %99, i64 %100, i32 %101, %struct.page* %102)
  store i32 %103, i32* %21, align 4
  %104 = load i32, i32* %21, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %93
  %107 = load %struct.page*, %struct.page** %16, align 8
  %108 = call i32 @unlock_page(%struct.page* %107)
  %109 = load %struct.page*, %struct.page** %16, align 8
  %110 = call i32 @put_page(%struct.page* %109)
  br label %146

111:                                              ; preds = %93
  %112 = load %struct.page*, %struct.page** %16, align 8
  %113 = call i32 @try_to_free_swap(%struct.page* %112)
  %114 = load %struct.page*, %struct.page** %16, align 8
  %115 = call i32 @unlock_page(%struct.page* %114)
  %116 = load %struct.page*, %struct.page** %16, align 8
  %117 = call i32 @put_page(%struct.page* %116)
  %118 = load i64*, i64** %15, align 8
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %111
  %122 = load i64*, i64** %15, align 8
  %123 = load i64, i64* %122, align 8
  %124 = add i64 %123, -1
  store i64 %124, i64* %122, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %121
  %127 = load i32, i32* @FRONTSWAP_PAGES_UNUSED, align 4
  store i32 %127, i32* %21, align 4
  br label %146

128:                                              ; preds = %121, %111
  br label %129

129:                                              ; preds = %128, %89
  %130 = load i32*, i32** %10, align 8
  %131 = load i64, i64* %11, align 8
  %132 = call i32* @pte_offset_map(i32* %130, i64 %131)
  store i32* %132, i32** %18, align 8
  br label %133

133:                                              ; preds = %129, %57, %46, %37
  %134 = load i32*, i32** %18, align 8
  %135 = getelementptr inbounds i32, i32* %134, i32 1
  store i32* %135, i32** %18, align 8
  %136 = load i64, i64* @PAGE_SIZE, align 8
  %137 = load i64, i64* %11, align 8
  %138 = add i64 %137, %136
  store i64 %138, i64* %11, align 8
  %139 = load i64, i64* %11, align 8
  %140 = load i64, i64* %12, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %32, label %142

142:                                              ; preds = %133
  %143 = load i32*, i32** %18, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 -1
  %145 = call i32 @pte_unmap(i32* %144)
  store i32 0, i32* %21, align 4
  br label %146

146:                                              ; preds = %142, %126, %106
  %147 = load i32, i32* %21, align 4
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %146, %90
  %149 = load i32, i32* %8, align 4
  ret i32 %149
}

declare dso_local i32* @pte_offset_map(i32*, i64) #1

declare dso_local i32 @is_swap_pte(i32) #1

declare dso_local i32 @pte_to_swp_entry(i32) #1

declare dso_local i32 @swp_type(i32) #1

declare dso_local i64 @swp_offset(i32) #1

declare dso_local i32 @frontswap_test(%struct.swap_info_struct*, i64) #1

declare dso_local i32 @pte_unmap(i32*) #1

declare dso_local %struct.page* @swapin_readahead(i32, i32, %struct.vm_fault*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local i32 @unuse_pte(%struct.vm_area_struct*, i32*, i64, i32, %struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @try_to_free_swap(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
