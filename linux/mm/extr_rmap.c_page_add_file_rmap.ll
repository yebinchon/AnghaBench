; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_rmap.c_page_add_file_rmap.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_rmap.c_page_add_file_rmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@HPAGE_PMD_NR = common dso_local global i32 0, align 4
@NR_SHMEM_PMDMAPPED = common dso_local global i32 0, align 4
@NR_FILE_PMDMAPPED = common dso_local global i32 0, align 4
@NR_FILE_MAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @page_add_file_rmap(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.page*, %struct.page** %3, align 8
  %11 = call i64 @PageTransHuge(%struct.page* %10)
  %12 = icmp ne i64 %11, 0
  %13 = xor i1 %12, true
  br label %14

14:                                               ; preds = %9, %2
  %15 = phi i1 [ false, %2 ], [ %13, %9 ]
  %16 = zext i1 %15 to i32
  %17 = load %struct.page*, %struct.page** %3, align 8
  %18 = call i32 @VM_BUG_ON_PAGE(i32 %16, %struct.page* %17)
  %19 = load %struct.page*, %struct.page** %3, align 8
  %20 = call i32 @lock_page_memcg(%struct.page* %19)
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %66

23:                                               ; preds = %14
  %24 = load %struct.page*, %struct.page** %3, align 8
  %25 = call i64 @PageTransHuge(%struct.page* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %66

27:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %44, %27
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @HPAGE_PMD_NR, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load %struct.page*, %struct.page** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.page, %struct.page* %33, i64 %35
  %37 = getelementptr inbounds %struct.page, %struct.page* %36, i32 0, i32 0
  %38 = call i64 @atomic_inc_and_test(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %40, %32
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %28

47:                                               ; preds = %28
  %48 = load %struct.page*, %struct.page** %3, align 8
  %49 = call i32* @compound_mapcount_ptr(%struct.page* %48)
  %50 = call i64 @atomic_inc_and_test(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %104

53:                                               ; preds = %47
  %54 = load %struct.page*, %struct.page** %3, align 8
  %55 = call i64 @PageSwapBacked(%struct.page* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load %struct.page*, %struct.page** %3, align 8
  %59 = load i32, i32* @NR_SHMEM_PMDMAPPED, align 4
  %60 = call i32 @__inc_node_page_state(%struct.page* %58, i32 %59)
  br label %65

61:                                               ; preds = %53
  %62 = load %struct.page*, %struct.page** %3, align 8
  %63 = load i32, i32* @NR_FILE_PMDMAPPED, align 4
  %64 = call i32 @__inc_node_page_state(%struct.page* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %57
  br label %99

66:                                               ; preds = %23, %14
  %67 = load %struct.page*, %struct.page** %3, align 8
  %68 = call i64 @PageTransCompound(%struct.page* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %92

70:                                               ; preds = %66
  %71 = load %struct.page*, %struct.page** %3, align 8
  %72 = call i64 @page_mapping(%struct.page* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %70
  %75 = load %struct.page*, %struct.page** %3, align 8
  %76 = call i32 @PageLocked(%struct.page* %75)
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i32 @VM_WARN_ON_ONCE(i32 %79)
  %81 = load %struct.page*, %struct.page** %3, align 8
  %82 = call i32 @compound_head(%struct.page* %81)
  %83 = call i32 @SetPageDoubleMap(i32 %82)
  %84 = load %struct.page*, %struct.page** %3, align 8
  %85 = call i64 @PageMlocked(%struct.page* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %74
  %88 = load %struct.page*, %struct.page** %3, align 8
  %89 = call i32 @compound_head(%struct.page* %88)
  %90 = call i32 @clear_page_mlock(i32 %89)
  br label %91

91:                                               ; preds = %87, %74
  br label %92

92:                                               ; preds = %91, %70, %66
  %93 = load %struct.page*, %struct.page** %3, align 8
  %94 = getelementptr inbounds %struct.page, %struct.page* %93, i32 0, i32 0
  %95 = call i64 @atomic_inc_and_test(i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %92
  br label %104

98:                                               ; preds = %92
  br label %99

99:                                               ; preds = %98, %65
  %100 = load %struct.page*, %struct.page** %3, align 8
  %101 = load i32, i32* @NR_FILE_MAPPED, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @__mod_lruvec_page_state(%struct.page* %100, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %99, %97, %52
  %105 = load %struct.page*, %struct.page** %3, align 8
  %106 = call i32 @unlock_page_memcg(%struct.page* %105)
  ret void
}

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i64 @PageTransHuge(%struct.page*) #1

declare dso_local i32 @lock_page_memcg(%struct.page*) #1

declare dso_local i64 @atomic_inc_and_test(i32*) #1

declare dso_local i32* @compound_mapcount_ptr(%struct.page*) #1

declare dso_local i64 @PageSwapBacked(%struct.page*) #1

declare dso_local i32 @__inc_node_page_state(%struct.page*, i32) #1

declare dso_local i64 @PageTransCompound(%struct.page*) #1

declare dso_local i64 @page_mapping(%struct.page*) #1

declare dso_local i32 @VM_WARN_ON_ONCE(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @SetPageDoubleMap(i32) #1

declare dso_local i32 @compound_head(%struct.page*) #1

declare dso_local i64 @PageMlocked(%struct.page*) #1

declare dso_local i32 @clear_page_mlock(i32) #1

declare dso_local i32 @__mod_lruvec_page_state(%struct.page*, i32, i32) #1

declare dso_local i32 @unlock_page_memcg(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
