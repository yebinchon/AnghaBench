; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_page_trans_huge_map_swapcount.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_page_trans_huge_map_swapcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.swap_info_struct = type { i8* }
%struct.swap_cluster_info = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CONFIG_THP_SWAP = common dso_local global i32 0, align 4
@HPAGE_PMD_NR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i32*, i32*)* @page_trans_huge_map_swapcount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @page_trans_huge_map_swapcount(%struct.page* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.swap_info_struct*, align 8
  %14 = alloca %struct.swap_cluster_info*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_4__, align 4
  store %struct.page* %0, %struct.page** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %12, align 8
  store %struct.swap_cluster_info* null, %struct.swap_cluster_info** %14, align 8
  store i8* null, i8** %15, align 8
  store i32 0, i32* %17, align 4
  %19 = load %struct.page*, %struct.page** %5, align 8
  %20 = call i32 @PageHuge(%struct.page* %19)
  %21 = load %struct.page*, %struct.page** %5, align 8
  %22 = call i32 @VM_BUG_ON_PAGE(i32 %20, %struct.page* %21)
  %23 = load i32, i32* @CONFIG_THP_SWAP, align 4
  %24 = call i32 @IS_ENABLED(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %3
  %27 = load %struct.page*, %struct.page** %5, align 8
  %28 = call i32 @PageTransCompound(%struct.page* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @likely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %26, %3
  %35 = load %struct.page*, %struct.page** %5, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @page_trans_huge_mapcount(%struct.page* %35, i32* %36)
  store i32 %37, i32* %16, align 4
  %38 = load %struct.page*, %struct.page** %5, align 8
  %39 = call i64 @PageSwapCache(%struct.page* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.page*, %struct.page** %5, align 8
  %43 = call i32 @page_swapcount(%struct.page* %42)
  store i32 %43, i32* %17, align 4
  br label %44

44:                                               ; preds = %41, %34
  %45 = load i32*, i32** %7, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %17, align 4
  %49 = load i32*, i32** %7, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %17, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %4, align 4
  br label %157

54:                                               ; preds = %26
  %55 = load %struct.page*, %struct.page** %5, align 8
  %56 = call %struct.page* @compound_head(%struct.page* %55)
  store %struct.page* %56, %struct.page** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %57 = load %struct.page*, %struct.page** %5, align 8
  %58 = call i64 @PageSwapCache(%struct.page* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %54
  %61 = load %struct.page*, %struct.page** %5, align 8
  %62 = call i32 @page_private(%struct.page* %61)
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.swap_info_struct* @_swap_info_get(i32 %65)
  store %struct.swap_info_struct* %66, %struct.swap_info_struct** %13, align 8
  %67 = load %struct.swap_info_struct*, %struct.swap_info_struct** %13, align 8
  %68 = icmp ne %struct.swap_info_struct* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %60
  %70 = load %struct.swap_info_struct*, %struct.swap_info_struct** %13, align 8
  %71 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @swp_offset(i32 %74)
  store i64 %75, i64* %12, align 8
  br label %76

76:                                               ; preds = %69, %60
  br label %77

77:                                               ; preds = %76, %54
  %78 = load i8*, i8** %15, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load %struct.swap_info_struct*, %struct.swap_info_struct** %13, align 8
  %82 = load i64, i64* %12, align 8
  %83 = call %struct.swap_cluster_info* @lock_cluster(%struct.swap_info_struct* %81, i64 %82)
  store %struct.swap_cluster_info* %83, %struct.swap_cluster_info** %14, align 8
  br label %84

84:                                               ; preds = %80, %77
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %120, %84
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @HPAGE_PMD_NR, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %123

89:                                               ; preds = %85
  %90 = load %struct.page*, %struct.page** %5, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.page, %struct.page* %90, i64 %92
  %94 = getelementptr inbounds %struct.page, %struct.page* %93, i32 0, i32 0
  %95 = call i32 @atomic_read(i32* %94)
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %16, align 4
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %10, align 4
  %100 = load i8*, i8** %15, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %114

102:                                              ; preds = %89
  %103 = load i8*, i8** %15, align 8
  %104 = load i64, i64* %12, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = add i64 %104, %106
  %108 = getelementptr inbounds i8, i8* %103, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = call i32 @swap_count(i8 zeroext %109)
  store i32 %110, i32* %17, align 4
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %11, align 4
  br label %114

114:                                              ; preds = %102, %89
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* %17, align 4
  %118 = add nsw i32 %116, %117
  %119 = call i32 @max(i32 %115, i32 %118)
  store i32 %119, i32* %9, align 4
  br label %120

120:                                              ; preds = %114
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %85

123:                                              ; preds = %85
  %124 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %14, align 8
  %125 = call i32 @unlock_cluster(%struct.swap_cluster_info* %124)
  %126 = load %struct.page*, %struct.page** %5, align 8
  %127 = call i64 @PageDoubleMap(%struct.page* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %123
  %130 = load i32, i32* %9, align 4
  %131 = sub nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* @HPAGE_PMD_NR, align 4
  %133 = load i32, i32* %10, align 4
  %134 = sub nsw i32 %133, %132
  store i32 %134, i32* %10, align 4
  br label %135

135:                                              ; preds = %129, %123
  %136 = load %struct.page*, %struct.page** %5, align 8
  %137 = call i32 @compound_mapcount(%struct.page* %136)
  store i32 %137, i32* %16, align 4
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %16, align 4
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %10, align 4
  %144 = load i32*, i32** %6, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %135
  %147 = load i32, i32* %10, align 4
  %148 = load i32*, i32** %6, align 8
  store i32 %147, i32* %148, align 4
  br label %149

149:                                              ; preds = %146, %135
  %150 = load i32*, i32** %7, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i32, i32* %11, align 4
  %154 = load i32*, i32** %7, align 8
  store i32 %153, i32* %154, align 4
  br label %155

155:                                              ; preds = %152, %149
  %156 = load i32, i32* %9, align 4
  store i32 %156, i32* %4, align 4
  br label %157

157:                                              ; preds = %155, %50
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageHuge(%struct.page*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @PageTransCompound(%struct.page*) #1

declare dso_local i32 @page_trans_huge_mapcount(%struct.page*, i32*) #1

declare dso_local i64 @PageSwapCache(%struct.page*) #1

declare dso_local i32 @page_swapcount(%struct.page*) #1

declare dso_local %struct.page* @compound_head(%struct.page*) #1

declare dso_local i32 @page_private(%struct.page*) #1

declare dso_local %struct.swap_info_struct* @_swap_info_get(i32) #1

declare dso_local i64 @swp_offset(i32) #1

declare dso_local %struct.swap_cluster_info* @lock_cluster(%struct.swap_info_struct*, i64) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @swap_count(i8 zeroext) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @unlock_cluster(%struct.swap_cluster_info*) #1

declare dso_local i64 @PageDoubleMap(%struct.page*) #1

declare dso_local i32 @compound_mapcount(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
