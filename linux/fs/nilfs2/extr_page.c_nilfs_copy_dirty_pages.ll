; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_page.c_nilfs_copy_dirty_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_page.c_nilfs_copy_dirty_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.pagevec = type { %struct.page** }
%struct.page = type { i32 }

@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"inconsistent dirty state\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"found empty page in dat page cache\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_copy_dirty_pages(%struct.address_space* %0, %struct.address_space* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca %struct.pagevec, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca %struct.page*, align 8
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store %struct.address_space* %1, %struct.address_space** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = call i32 @pagevec_init(%struct.pagevec* %6)
  br label %13

13:                                               ; preds = %95, %2
  %14 = load %struct.address_space*, %struct.address_space** %5, align 8
  %15 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %16 = call i32 @pagevec_lookup_tag(%struct.pagevec* %6, %struct.address_space* %14, i32* %8, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %98

19:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %83, %19
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @pagevec_count(%struct.pagevec* %6)
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %86

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %6, i32 0, i32 0
  %26 = load %struct.page**, %struct.page*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.page*, %struct.page** %26, i64 %28
  %30 = load %struct.page*, %struct.page** %29, align 8
  store %struct.page* %30, %struct.page** %10, align 8
  %31 = load %struct.page*, %struct.page** %10, align 8
  %32 = call i32 @lock_page(%struct.page* %31)
  %33 = load %struct.page*, %struct.page** %10, align 8
  %34 = call i32 @PageDirty(%struct.page* %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %24
  %41 = load %struct.page*, %struct.page** %10, align 8
  %42 = call i32 @NILFS_PAGE_BUG(%struct.page* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %24
  %44 = load %struct.address_space*, %struct.address_space** %4, align 8
  %45 = load %struct.page*, %struct.page** %10, align 8
  %46 = getelementptr inbounds %struct.page, %struct.page* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.page* @grab_cache_page(%struct.address_space* %44, i32 %47)
  store %struct.page* %48, %struct.page** %11, align 8
  %49 = load %struct.page*, %struct.page** %11, align 8
  %50 = icmp ne %struct.page* %49, null
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %43
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %9, align 4
  %58 = load %struct.page*, %struct.page** %10, align 8
  %59 = call i32 @unlock_page(%struct.page* %58)
  br label %86

60:                                               ; preds = %43
  %61 = load %struct.page*, %struct.page** %10, align 8
  %62 = call i32 @page_has_buffers(%struct.page* %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load %struct.page*, %struct.page** %10, align 8
  %70 = call i32 @NILFS_PAGE_BUG(%struct.page* %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %60
  %72 = load %struct.page*, %struct.page** %11, align 8
  %73 = load %struct.page*, %struct.page** %10, align 8
  %74 = call i32 @nilfs_copy_page(%struct.page* %72, %struct.page* %73, i32 1)
  %75 = load %struct.page*, %struct.page** %11, align 8
  %76 = call i32 @__set_page_dirty_nobuffers(%struct.page* %75)
  %77 = load %struct.page*, %struct.page** %11, align 8
  %78 = call i32 @unlock_page(%struct.page* %77)
  %79 = load %struct.page*, %struct.page** %11, align 8
  %80 = call i32 @put_page(%struct.page* %79)
  %81 = load %struct.page*, %struct.page** %10, align 8
  %82 = call i32 @unlock_page(%struct.page* %81)
  br label %83

83:                                               ; preds = %71
  %84 = load i32, i32* %7, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %20

86:                                               ; preds = %55, %20
  %87 = call i32 @pagevec_release(%struct.pagevec* %6)
  %88 = call i32 (...) @cond_resched()
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i64 @likely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  br label %13

96:                                               ; preds = %86
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %18
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @pagevec_init(%struct.pagevec*) #1

declare dso_local i32 @pagevec_lookup_tag(%struct.pagevec*, %struct.address_space*, i32*, i32) #1

declare dso_local i32 @pagevec_count(%struct.pagevec*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i32 @NILFS_PAGE_BUG(%struct.page*, i8*) #1

declare dso_local %struct.page* @grab_cache_page(%struct.address_space*, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local i32 @nilfs_copy_page(%struct.page*, %struct.page*, i32) #1

declare dso_local i32 @__set_page_dirty_nobuffers(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @pagevec_release(%struct.pagevec*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
