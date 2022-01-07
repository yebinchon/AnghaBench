; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_rmap.c_page_remove_file_rmap.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_rmap.c_page_remove_file_rmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@HPAGE_PMD_NR = common dso_local global i32 0, align 4
@NR_SHMEM_PMDMAPPED = common dso_local global i32 0, align 4
@NR_FILE_PMDMAPPED = common dso_local global i32 0, align 4
@NR_FILE_MAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i32)* @page_remove_file_rmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @page_remove_file_rmap(%struct.page* %0, i32 %1) #0 {
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
  %11 = call i32 @PageHead(%struct.page* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br label %14

14:                                               ; preds = %9, %2
  %15 = phi i1 [ false, %2 ], [ %13, %9 ]
  %16 = zext i1 %15 to i32
  %17 = load %struct.page*, %struct.page** %3, align 8
  %18 = call i32 @VM_BUG_ON_PAGE(i32 %16, %struct.page* %17)
  %19 = load %struct.page*, %struct.page** %3, align 8
  %20 = call i32 @lock_page_memcg(%struct.page* %19)
  %21 = load %struct.page*, %struct.page** %3, align 8
  %22 = call i32 @PageHuge(%struct.page* %21)
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %14
  %26 = load %struct.page*, %struct.page** %3, align 8
  %27 = call i32* @compound_mapcount_ptr(%struct.page* %26)
  %28 = call i32 @atomic_dec(i32* %27)
  br label %96

29:                                               ; preds = %14
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %75

32:                                               ; preds = %29
  %33 = load %struct.page*, %struct.page** %3, align 8
  %34 = call i64 @PageTransHuge(%struct.page* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %75

36:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %53, %36
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @HPAGE_PMD_NR, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  %42 = load %struct.page*, %struct.page** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.page, %struct.page* %42, i64 %44
  %46 = getelementptr inbounds %struct.page, %struct.page* %45, i32 0, i32 0
  %47 = call i64 @atomic_add_negative(i32 -1, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %49, %41
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %37

56:                                               ; preds = %37
  %57 = load %struct.page*, %struct.page** %3, align 8
  %58 = call i32* @compound_mapcount_ptr(%struct.page* %57)
  %59 = call i64 @atomic_add_negative(i32 -1, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  br label %96

62:                                               ; preds = %56
  %63 = load %struct.page*, %struct.page** %3, align 8
  %64 = call i64 @PageSwapBacked(%struct.page* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load %struct.page*, %struct.page** %3, align 8
  %68 = load i32, i32* @NR_SHMEM_PMDMAPPED, align 4
  %69 = call i32 @__dec_node_page_state(%struct.page* %67, i32 %68)
  br label %74

70:                                               ; preds = %62
  %71 = load %struct.page*, %struct.page** %3, align 8
  %72 = load i32, i32* @NR_FILE_PMDMAPPED, align 4
  %73 = call i32 @__dec_node_page_state(%struct.page* %71, i32 %72)
  br label %74

74:                                               ; preds = %70, %66
  br label %82

75:                                               ; preds = %32, %29
  %76 = load %struct.page*, %struct.page** %3, align 8
  %77 = getelementptr inbounds %struct.page, %struct.page* %76, i32 0, i32 0
  %78 = call i64 @atomic_add_negative(i32 -1, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  br label %96

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81, %74
  %83 = load %struct.page*, %struct.page** %3, align 8
  %84 = load i32, i32* @NR_FILE_MAPPED, align 4
  %85 = load i32, i32* %6, align 4
  %86 = sub nsw i32 0, %85
  %87 = call i32 @__mod_lruvec_page_state(%struct.page* %83, i32 %84, i32 %86)
  %88 = load %struct.page*, %struct.page** %3, align 8
  %89 = call i32 @PageMlocked(%struct.page* %88)
  %90 = call i64 @unlikely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %82
  %93 = load %struct.page*, %struct.page** %3, align 8
  %94 = call i32 @clear_page_mlock(%struct.page* %93)
  br label %95

95:                                               ; preds = %92, %82
  br label %96

96:                                               ; preds = %95, %80, %61, %25
  %97 = load %struct.page*, %struct.page** %3, align 8
  %98 = call i32 @unlock_page_memcg(%struct.page* %97)
  ret void
}

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageHead(%struct.page*) #1

declare dso_local i32 @lock_page_memcg(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageHuge(%struct.page*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32* @compound_mapcount_ptr(%struct.page*) #1

declare dso_local i64 @PageTransHuge(%struct.page*) #1

declare dso_local i64 @atomic_add_negative(i32, i32*) #1

declare dso_local i64 @PageSwapBacked(%struct.page*) #1

declare dso_local i32 @__dec_node_page_state(%struct.page*, i32) #1

declare dso_local i32 @__mod_lruvec_page_state(%struct.page*, i32, i32) #1

declare dso_local i32 @PageMlocked(%struct.page*) #1

declare dso_local i32 @clear_page_mlock(%struct.page*) #1

declare dso_local i32 @unlock_page_memcg(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
