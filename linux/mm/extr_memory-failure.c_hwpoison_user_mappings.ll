; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory-failure.c_hwpoison_user_mappings.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory-failure.c_hwpoison_user_mappings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { i32 }

@TTU_IGNORE_MLOCK = common dso_local global i32 0, align 4
@TTU_IGNORE_ACCESS = common dso_local global i32 0, align 4
@tokill = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Memory failure: %#lx: can't handle KSM pages.\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"Memory failure: %#lx: keeping poisoned page in swap cache\0A\00", align 1
@TTU_IGNORE_HWPOISON = common dso_local global i32 0, align 4
@MF_MUST_KILL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [78 x i8] c"Memory failure: %#lx: corrupted page was clean: dropped without side effects\0A\00", align 1
@MF_ACTION_REQUIRED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"Memory failure: %#lx: failed to unmap page (mapcount=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i64, i32, %struct.page**)* @hwpoison_user_mappings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwpoison_user_mappings(%struct.page* %0, i64 %1, i32 %2, %struct.page** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.page**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.address_space*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.page*, align 8
  %16 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.page** %3, %struct.page*** %9, align 8
  %17 = load i32, i32* @TTU_IGNORE_MLOCK, align 4
  %18 = load i32, i32* @TTU_IGNORE_ACCESS, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* @tokill, align 4
  %21 = call i32 @LIST_HEAD(i32 %20)
  store i32 1, i32* %13, align 4
  %22 = load %struct.page**, %struct.page*** %9, align 8
  %23 = load %struct.page*, %struct.page** %22, align 8
  store %struct.page* %23, %struct.page** %15, align 8
  %24 = load %struct.page*, %struct.page** %15, align 8
  %25 = call i32 @PageMlocked(%struct.page* %24)
  store i32 %25, i32* %16, align 4
  %26 = load %struct.page*, %struct.page** %6, align 8
  %27 = call i64 @PageReserved(%struct.page* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %4
  %30 = load %struct.page*, %struct.page** %6, align 8
  %31 = call i64 @PageSlab(%struct.page* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %4
  store i32 1, i32* %5, align 4
  br label %144

34:                                               ; preds = %29
  %35 = load %struct.page*, %struct.page** %15, align 8
  %36 = call i64 @PageLRU(%struct.page* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = load %struct.page*, %struct.page** %6, align 8
  %40 = call i64 @PageHuge(%struct.page* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  store i32 1, i32* %5, align 4
  br label %144

43:                                               ; preds = %38, %34
  %44 = load %struct.page*, %struct.page** %15, align 8
  %45 = call i32 @page_mapped(%struct.page* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  store i32 1, i32* %5, align 4
  br label %144

48:                                               ; preds = %43
  %49 = load %struct.page*, %struct.page** %6, align 8
  %50 = call i64 @PageKsm(%struct.page* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i64, i64* %7, align 8
  %54 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %53)
  store i32 0, i32* %5, align 4
  br label %144

55:                                               ; preds = %48
  %56 = load %struct.page*, %struct.page** %6, align 8
  %57 = call i64 @PageSwapCache(%struct.page* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load i64, i64* %7, align 8
  %61 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  %62 = load i32, i32* @TTU_IGNORE_HWPOISON, align 4
  %63 = load i32, i32* %10, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %59, %55
  %66 = load %struct.page*, %struct.page** %15, align 8
  %67 = call %struct.address_space* @page_mapping(%struct.page* %66)
  store %struct.address_space* %67, %struct.address_space** %11, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @MF_MUST_KILL, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %97, label %72

72:                                               ; preds = %65
  %73 = load %struct.page*, %struct.page** %15, align 8
  %74 = call i64 @PageDirty(%struct.page* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %97, label %76

76:                                               ; preds = %72
  %77 = load %struct.address_space*, %struct.address_space** %11, align 8
  %78 = icmp ne %struct.address_space* %77, null
  br i1 %78, label %79, label %97

79:                                               ; preds = %76
  %80 = load %struct.address_space*, %struct.address_space** %11, align 8
  %81 = call i64 @mapping_cap_writeback_dirty(%struct.address_space* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %79
  %84 = load %struct.page*, %struct.page** %15, align 8
  %85 = call i64 @page_mkclean(%struct.page* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load %struct.page*, %struct.page** %15, align 8
  %89 = call i32 @SetPageDirty(%struct.page* %88)
  br label %96

90:                                               ; preds = %83
  store i32 0, i32* %13, align 4
  %91 = load i32, i32* @TTU_IGNORE_HWPOISON, align 4
  %92 = load i32, i32* %10, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %10, align 4
  %94 = load i64, i64* %7, align 8
  %95 = call i32 @pr_info(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), i64 %94)
  br label %96

96:                                               ; preds = %90, %87
  br label %97

97:                                               ; preds = %96, %79, %76, %72, %65
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load %struct.page*, %struct.page** %15, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @MF_ACTION_REQUIRED, align 4
  %104 = and i32 %102, %103
  %105 = call i32 @collect_procs(%struct.page* %101, i32* @tokill, i32 %104)
  br label %106

106:                                              ; preds = %100, %97
  %107 = load %struct.page*, %struct.page** %15, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @try_to_unmap(%struct.page* %107, i32 %108)
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %106
  %113 = load i64, i64* %7, align 8
  %114 = load %struct.page*, %struct.page** %15, align 8
  %115 = call i32 @page_mapcount(%struct.page* %114)
  %116 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i64 %113, i32 %115)
  br label %117

117:                                              ; preds = %112, %106
  %118 = load i32, i32* %16, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load %struct.page*, %struct.page** %15, align 8
  %122 = call i32 @shake_page(%struct.page* %121, i32 0)
  br label %123

123:                                              ; preds = %120, %117
  %124 = load %struct.page*, %struct.page** %15, align 8
  %125 = call i64 @PageDirty(%struct.page* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @MF_MUST_KILL, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br label %132

132:                                              ; preds = %127, %123
  %133 = phi i1 [ true, %123 ], [ %131, %127 ]
  %134 = zext i1 %133 to i32
  store i32 %134, i32* %14, align 4
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = load i64, i64* %7, align 8
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @kill_procs(i32* @tokill, i32 %135, i32 %139, i64 %140, i32 %141)
  %143 = load i32, i32* %12, align 4
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %132, %52, %47, %42, %33
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @PageMlocked(%struct.page*) #1

declare dso_local i64 @PageReserved(%struct.page*) #1

declare dso_local i64 @PageSlab(%struct.page*) #1

declare dso_local i64 @PageLRU(%struct.page*) #1

declare dso_local i64 @PageHuge(%struct.page*) #1

declare dso_local i32 @page_mapped(%struct.page*) #1

declare dso_local i64 @PageKsm(%struct.page*) #1

declare dso_local i32 @pr_err(i8*, i64, ...) #1

declare dso_local i64 @PageSwapCache(%struct.page*) #1

declare dso_local %struct.address_space* @page_mapping(%struct.page*) #1

declare dso_local i64 @PageDirty(%struct.page*) #1

declare dso_local i64 @mapping_cap_writeback_dirty(%struct.address_space*) #1

declare dso_local i64 @page_mkclean(%struct.page*) #1

declare dso_local i32 @SetPageDirty(%struct.page*) #1

declare dso_local i32 @pr_info(i8*, i64) #1

declare dso_local i32 @collect_procs(%struct.page*, i32*, i32) #1

declare dso_local i32 @try_to_unmap(%struct.page*, i32) #1

declare dso_local i32 @page_mapcount(%struct.page*) #1

declare dso_local i32 @shake_page(%struct.page*, i32) #1

declare dso_local i32 @kill_procs(i32*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
