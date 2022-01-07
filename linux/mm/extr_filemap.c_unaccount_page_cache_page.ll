; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_filemap.c_unaccount_page_cache_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_filemap.c_unaccount_page_cache_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.address_space = type { i32 }
%struct.page = type { i32 }

@CONFIG_DEBUG_VM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"BUG: Bad page cache in process %s  pfn:%05lx\0A\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"still mapped when deleted\00", align 1
@TAINT_BAD_PAGE = common dso_local global i32 0, align 4
@LOCKDEP_NOW_UNRELIABLE = common dso_local global i32 0, align 4
@NR_FILE_PAGES = common dso_local global i32 0, align 4
@NR_SHMEM = common dso_local global i32 0, align 4
@NR_SHMEM_THPS = common dso_local global i32 0, align 4
@NR_FILE_THPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.address_space*, %struct.page*)* @unaccount_page_cache_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unaccount_page_cache_page(%struct.address_space* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %7 = load %struct.page*, %struct.page** %4, align 8
  %8 = call i64 @PageUptodate(%struct.page* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.page*, %struct.page** %4, align 8
  %12 = call i64 @PageMappedToDisk(%struct.page* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load %struct.page*, %struct.page** %4, align 8
  %16 = call i32 @cleancache_put_page(%struct.page* %15)
  br label %21

17:                                               ; preds = %10, %2
  %18 = load %struct.address_space*, %struct.address_space** %3, align 8
  %19 = load %struct.page*, %struct.page** %4, align 8
  %20 = call i32 @cleancache_invalidate_page(%struct.address_space* %18, %struct.page* %19)
  br label %21

21:                                               ; preds = %17, %14
  %22 = load %struct.page*, %struct.page** %4, align 8
  %23 = call i32 @PageTail(%struct.page* %22)
  %24 = load %struct.page*, %struct.page** %4, align 8
  %25 = call i32 @VM_BUG_ON_PAGE(i32 %23, %struct.page* %24)
  %26 = load %struct.page*, %struct.page** %4, align 8
  %27 = call i32 @page_mapped(%struct.page* %26)
  %28 = load %struct.page*, %struct.page** %4, align 8
  %29 = call i32 @VM_BUG_ON_PAGE(i32 %27, %struct.page* %28)
  %30 = load i32, i32* @CONFIG_DEBUG_VM, align 4
  %31 = call i32 @IS_ENABLED(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %69, label %33

33:                                               ; preds = %21
  %34 = load %struct.page*, %struct.page** %4, align 8
  %35 = call i32 @page_mapped(%struct.page* %34)
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %69

38:                                               ; preds = %33
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.page*, %struct.page** %4, align 8
  %43 = call i32 @page_to_pfn(%struct.page* %42)
  %44 = call i32 @pr_alert(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %43)
  %45 = load %struct.page*, %struct.page** %4, align 8
  %46 = call i32 @dump_page(%struct.page* %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %47 = call i32 (...) @dump_stack()
  %48 = load i32, i32* @TAINT_BAD_PAGE, align 4
  %49 = load i32, i32* @LOCKDEP_NOW_UNRELIABLE, align 4
  %50 = call i32 @add_taint(i32 %48, i32 %49)
  %51 = load %struct.page*, %struct.page** %4, align 8
  %52 = call i32 @page_mapcount(%struct.page* %51)
  store i32 %52, i32* %6, align 4
  %53 = load %struct.address_space*, %struct.address_space** %3, align 8
  %54 = call i64 @mapping_exiting(%struct.address_space* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %38
  %57 = load %struct.page*, %struct.page** %4, align 8
  %58 = call i32 @page_count(%struct.page* %57)
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 2
  %61 = icmp sge i32 %58, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.page*, %struct.page** %4, align 8
  %64 = call i32 @page_mapcount_reset(%struct.page* %63)
  %65 = load %struct.page*, %struct.page** %4, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @page_ref_sub(%struct.page* %65, i32 %66)
  br label %68

68:                                               ; preds = %62, %56, %38
  br label %69

69:                                               ; preds = %68, %33, %21
  %70 = load %struct.page*, %struct.page** %4, align 8
  %71 = call i64 @PageHuge(%struct.page* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %125

74:                                               ; preds = %69
  %75 = load %struct.page*, %struct.page** %4, align 8
  %76 = call i32 @hpage_nr_pages(%struct.page* %75)
  store i32 %76, i32* %5, align 4
  %77 = load %struct.page*, %struct.page** %4, align 8
  %78 = call i32 @page_pgdat(%struct.page* %77)
  %79 = load i32, i32* @NR_FILE_PAGES, align 4
  %80 = load i32, i32* %5, align 4
  %81 = sub nsw i32 0, %80
  %82 = call i32 @__mod_node_page_state(i32 %78, i32 %79, i32 %81)
  %83 = load %struct.page*, %struct.page** %4, align 8
  %84 = call i64 @PageSwapBacked(%struct.page* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %74
  %87 = load %struct.page*, %struct.page** %4, align 8
  %88 = call i32 @page_pgdat(%struct.page* %87)
  %89 = load i32, i32* @NR_SHMEM, align 4
  %90 = load i32, i32* %5, align 4
  %91 = sub nsw i32 0, %90
  %92 = call i32 @__mod_node_page_state(i32 %88, i32 %89, i32 %91)
  %93 = load %struct.page*, %struct.page** %4, align 8
  %94 = call i64 @PageTransHuge(%struct.page* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %86
  %97 = load %struct.page*, %struct.page** %4, align 8
  %98 = load i32, i32* @NR_SHMEM_THPS, align 4
  %99 = call i32 @__dec_node_page_state(%struct.page* %97, i32 %98)
  br label %100

100:                                              ; preds = %96, %86
  br label %112

101:                                              ; preds = %74
  %102 = load %struct.page*, %struct.page** %4, align 8
  %103 = call i64 @PageTransHuge(%struct.page* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = load %struct.page*, %struct.page** %4, align 8
  %107 = load i32, i32* @NR_FILE_THPS, align 4
  %108 = call i32 @__dec_node_page_state(%struct.page* %106, i32 %107)
  %109 = load %struct.address_space*, %struct.address_space** %3, align 8
  %110 = call i32 @filemap_nr_thps_dec(%struct.address_space* %109)
  br label %111

111:                                              ; preds = %105, %101
  br label %112

112:                                              ; preds = %111, %100
  %113 = load %struct.page*, %struct.page** %4, align 8
  %114 = call i32 @PageDirty(%struct.page* %113)
  %115 = call i64 @WARN_ON_ONCE(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %112
  %118 = load %struct.page*, %struct.page** %4, align 8
  %119 = load %struct.address_space*, %struct.address_space** %3, align 8
  %120 = load %struct.address_space*, %struct.address_space** %3, align 8
  %121 = getelementptr inbounds %struct.address_space, %struct.address_space* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @inode_to_wb(i32 %122)
  %124 = call i32 @account_page_cleaned(%struct.page* %118, %struct.address_space* %119, i32 %123)
  br label %125

125:                                              ; preds = %73, %117, %112
  ret void
}

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i64 @PageMappedToDisk(%struct.page*) #1

declare dso_local i32 @cleancache_put_page(%struct.page*) #1

declare dso_local i32 @cleancache_invalidate_page(%struct.address_space*, %struct.page*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageTail(%struct.page*) #1

declare dso_local i32 @page_mapped(%struct.page*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_alert(i8*, i32, i32) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @dump_page(%struct.page*, i8*) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @add_taint(i32, i32) #1

declare dso_local i32 @page_mapcount(%struct.page*) #1

declare dso_local i64 @mapping_exiting(%struct.address_space*) #1

declare dso_local i32 @page_count(%struct.page*) #1

declare dso_local i32 @page_mapcount_reset(%struct.page*) #1

declare dso_local i32 @page_ref_sub(%struct.page*, i32) #1

declare dso_local i64 @PageHuge(%struct.page*) #1

declare dso_local i32 @hpage_nr_pages(%struct.page*) #1

declare dso_local i32 @__mod_node_page_state(i32, i32, i32) #1

declare dso_local i32 @page_pgdat(%struct.page*) #1

declare dso_local i64 @PageSwapBacked(%struct.page*) #1

declare dso_local i64 @PageTransHuge(%struct.page*) #1

declare dso_local i32 @__dec_node_page_state(%struct.page*, i32) #1

declare dso_local i32 @filemap_nr_thps_dec(%struct.address_space*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i32 @account_page_cleaned(%struct.page*, %struct.address_space*, i32) #1

declare dso_local i32 @inode_to_wb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
