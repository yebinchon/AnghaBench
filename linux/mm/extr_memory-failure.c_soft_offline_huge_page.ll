; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory-failure.c_soft_offline_huge_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory-failure.c_soft_offline_huge_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@pagelist = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"soft offline: %#lx hugepage already poisoned\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"soft offline: %#lx hugepage failed to isolate\0A\00", align 1
@new_page = common dso_local global i32 0, align 4
@MPOL_MF_MOVE_ALL = common dso_local global i32 0, align 4
@MIGRATE_SYNC = common dso_local global i32 0, align 4
@MR_MEMORY_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"soft offline: %#lx: hugepage migration failed %d, type %lx (%pGp)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i32)* @soft_offline_huge_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soft_offline_huge_page(%struct.page* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = call i64 @page_to_pfn(%struct.page* %9)
  store i64 %10, i64* %7, align 8
  %11 = load %struct.page*, %struct.page** %4, align 8
  %12 = call %struct.page* @compound_head(%struct.page* %11)
  store %struct.page* %12, %struct.page** %8, align 8
  %13 = load i32, i32* @pagelist, align 4
  %14 = call i32 @LIST_HEAD(i32 %13)
  %15 = load %struct.page*, %struct.page** %8, align 8
  %16 = call i32 @lock_page(%struct.page* %15)
  %17 = load %struct.page*, %struct.page** %8, align 8
  %18 = call i64 @PageHWPoison(%struct.page* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.page*, %struct.page** %8, align 8
  %22 = call i32 @unlock_page(%struct.page* %21)
  %23 = load %struct.page*, %struct.page** %8, align 8
  %24 = call i32 @put_hwpoison_page(%struct.page* %23)
  %25 = load i64, i64* %7, align 8
  %26 = call i32 (i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %89

29:                                               ; preds = %2
  %30 = load %struct.page*, %struct.page** %8, align 8
  %31 = call i32 @unlock_page(%struct.page* %30)
  %32 = load %struct.page*, %struct.page** %8, align 8
  %33 = call i32 @isolate_huge_page(%struct.page* %32, i32* @pagelist)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.page*, %struct.page** %8, align 8
  %35 = call i32 @put_hwpoison_page(%struct.page* %34)
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %29
  %39 = load i64, i64* %7, align 8
  %40 = call i32 (i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %89

43:                                               ; preds = %29
  %44 = load i32, i32* @new_page, align 4
  %45 = load i32, i32* @MPOL_MF_MOVE_ALL, align 4
  %46 = load i32, i32* @MIGRATE_SYNC, align 4
  %47 = load i32, i32* @MR_MEMORY_FAILURE, align 4
  %48 = call i32 @migrate_pages(i32* @pagelist, i32 %44, i32* null, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %43
  %52 = load i64, i64* %7, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.page*, %struct.page** %4, align 8
  %55 = getelementptr inbounds %struct.page, %struct.page* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.page*, %struct.page** %4, align 8
  %58 = getelementptr inbounds %struct.page, %struct.page* %57, i32 0, i32 0
  %59 = call i32 (i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i64 %52, i32 %53, i32 %56, i32* %58)
  %60 = call i32 @list_empty(i32* @pagelist)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %51
  %63 = call i32 @putback_movable_pages(i32* @pagelist)
  br label %64

64:                                               ; preds = %62, %51
  %65 = load i32, i32* %6, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %67, %64
  br label %87

71:                                               ; preds = %43
  %72 = load %struct.page*, %struct.page** %4, align 8
  %73 = call i32 @dissolve_free_huge_page(%struct.page* %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %71
  %77 = load %struct.page*, %struct.page** %4, align 8
  %78 = call i64 @set_hwpoison_free_buddy_page(%struct.page* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = call i32 (...) @num_poisoned_pages_inc()
  br label %85

82:                                               ; preds = %76
  %83 = load i32, i32* @EBUSY, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %82, %80
  br label %86

86:                                               ; preds = %85, %71
  br label %87

87:                                               ; preds = %86, %70
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %38, %20
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i64 @page_to_pfn(%struct.page*) #1

declare dso_local %struct.page* @compound_head(%struct.page*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i64 @PageHWPoison(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_hwpoison_page(%struct.page*) #1

declare dso_local i32 @pr_info(i8*, i64, ...) #1

declare dso_local i32 @isolate_huge_page(%struct.page*, i32*) #1

declare dso_local i32 @migrate_pages(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @putback_movable_pages(i32*) #1

declare dso_local i32 @dissolve_free_huge_page(%struct.page*) #1

declare dso_local i64 @set_hwpoison_free_buddy_page(%struct.page*) #1

declare dso_local i32 @num_poisoned_pages_inc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
