; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory-failure.c___soft_offline_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory-failure.c___soft_offline_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"soft offline: %#lx page already poisoned\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"soft_offline: %#lx: invalidated\0A\00", align 1
@ISOLATE_UNEVICTABLE = common dso_local global i32 0, align 4
@pagelist = common dso_local global i32 0, align 4
@NR_ISOLATED_ANON = common dso_local global i64 0, align 8
@new_page = common dso_local global i32 0, align 4
@MPOL_MF_MOVE_ALL = common dso_local global i32 0, align 4
@MIGRATE_SYNC = common dso_local global i32 0, align 4
@MR_MEMORY_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"soft offline: %#lx: migration failed %d, type %lx (%pGp)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [74 x i8] c"soft offline: %#lx: isolation failed: %d, page count %d, type %lx (%pGp)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i32)* @__soft_offline_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__soft_offline_page(%struct.page* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.page*, %struct.page** %4, align 8
  %9 = call i64 @page_to_pfn(%struct.page* %8)
  store i64 %9, i64* %7, align 8
  %10 = load %struct.page*, %struct.page** %4, align 8
  %11 = call i32 @lock_page(%struct.page* %10)
  %12 = load %struct.page*, %struct.page** %4, align 8
  %13 = call i32 @wait_on_page_writeback(%struct.page* %12)
  %14 = load %struct.page*, %struct.page** %4, align 8
  %15 = call i64 @PageHWPoison(%struct.page* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.page*, %struct.page** %4, align 8
  %19 = call i32 @unlock_page(%struct.page* %18)
  %20 = load %struct.page*, %struct.page** %4, align 8
  %21 = call i32 @put_hwpoison_page(%struct.page* %20)
  %22 = load i64, i64* %7, align 8
  %23 = call i32 (i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %115

26:                                               ; preds = %2
  %27 = load %struct.page*, %struct.page** %4, align 8
  %28 = call i32 @invalidate_inode_page(%struct.page* %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.page*, %struct.page** %4, align 8
  %30 = call i32 @unlock_page(%struct.page* %29)
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load %struct.page*, %struct.page** %4, align 8
  %35 = call i32 @put_hwpoison_page(%struct.page* %34)
  %36 = load i64, i64* %7, align 8
  %37 = call i32 (i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  %38 = load %struct.page*, %struct.page** %4, align 8
  %39 = call i32 @SetPageHWPoison(%struct.page* %38)
  %40 = call i32 (...) @num_poisoned_pages_inc()
  store i32 0, i32* %3, align 4
  br label %115

41:                                               ; preds = %26
  %42 = load %struct.page*, %struct.page** %4, align 8
  %43 = call i64 @PageLRU(%struct.page* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.page*, %struct.page** %4, align 8
  %47 = call i32 @isolate_lru_page(%struct.page* %46)
  store i32 %47, i32* %6, align 4
  br label %52

48:                                               ; preds = %41
  %49 = load %struct.page*, %struct.page** %4, align 8
  %50 = load i32, i32* @ISOLATE_UNEVICTABLE, align 4
  %51 = call i32 @isolate_movable_page(%struct.page* %49, i32 %50)
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %48, %45
  %53 = load %struct.page*, %struct.page** %4, align 8
  %54 = call i32 @put_hwpoison_page(%struct.page* %53)
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %102, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @pagelist, align 4
  %59 = call i32 @LIST_HEAD(i32 %58)
  %60 = load %struct.page*, %struct.page** %4, align 8
  %61 = call i32 @__PageMovable(%struct.page* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %57
  %64 = load %struct.page*, %struct.page** %4, align 8
  %65 = load i64, i64* @NR_ISOLATED_ANON, align 8
  %66 = load %struct.page*, %struct.page** %4, align 8
  %67 = call i64 @page_is_file_cache(%struct.page* %66)
  %68 = add nsw i64 %65, %67
  %69 = call i32 @inc_node_page_state(%struct.page* %64, i64 %68)
  br label %70

70:                                               ; preds = %63, %57
  %71 = load %struct.page*, %struct.page** %4, align 8
  %72 = getelementptr inbounds %struct.page, %struct.page* %71, i32 0, i32 1
  %73 = call i32 @list_add(i32* %72, i32* @pagelist)
  %74 = load i32, i32* @new_page, align 4
  %75 = load i32, i32* @MPOL_MF_MOVE_ALL, align 4
  %76 = load i32, i32* @MIGRATE_SYNC, align 4
  %77 = load i32, i32* @MR_MEMORY_FAILURE, align 4
  %78 = call i32 @migrate_pages(i32* @pagelist, i32 %74, i32* null, i32 %75, i32 %76, i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %101

81:                                               ; preds = %70
  %82 = call i32 @list_empty(i32* @pagelist)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = call i32 @putback_movable_pages(i32* @pagelist)
  br label %86

86:                                               ; preds = %84, %81
  %87 = load i64, i64* %7, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.page*, %struct.page** %4, align 8
  %90 = getelementptr inbounds %struct.page, %struct.page* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.page*, %struct.page** %4, align 8
  %93 = getelementptr inbounds %struct.page, %struct.page* %92, i32 0, i32 0
  %94 = call i32 (i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i64 %87, i32 %88, i32 %91, i32* %93)
  %95 = load i32, i32* %6, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %86
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %97, %86
  br label %101

101:                                              ; preds = %100, %70
  br label %113

102:                                              ; preds = %52
  %103 = load i64, i64* %7, align 8
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.page*, %struct.page** %4, align 8
  %106 = call i32 @page_count(%struct.page* %105)
  %107 = load %struct.page*, %struct.page** %4, align 8
  %108 = getelementptr inbounds %struct.page, %struct.page* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.page*, %struct.page** %4, align 8
  %111 = getelementptr inbounds %struct.page, %struct.page* %110, i32 0, i32 0
  %112 = call i32 (i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0), i64 %103, i32 %104, i32 %106, i32 %109, i32* %111)
  br label %113

113:                                              ; preds = %102, %101
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %113, %33, %17
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i64 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local i64 @PageHWPoison(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_hwpoison_page(%struct.page*) #1

declare dso_local i32 @pr_info(i8*, i64, ...) #1

declare dso_local i32 @invalidate_inode_page(%struct.page*) #1

declare dso_local i32 @SetPageHWPoison(%struct.page*) #1

declare dso_local i32 @num_poisoned_pages_inc(...) #1

declare dso_local i64 @PageLRU(%struct.page*) #1

declare dso_local i32 @isolate_lru_page(%struct.page*) #1

declare dso_local i32 @isolate_movable_page(%struct.page*, i32) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @__PageMovable(%struct.page*) #1

declare dso_local i32 @inc_node_page_state(%struct.page*, i64) #1

declare dso_local i64 @page_is_file_cache(%struct.page*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @migrate_pages(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @putback_movable_pages(i32*) #1

declare dso_local i32 @page_count(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
