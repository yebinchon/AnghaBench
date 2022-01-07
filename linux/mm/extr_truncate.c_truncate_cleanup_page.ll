; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_truncate.c_truncate_cleanup_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_truncate.c_truncate_cleanup_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.page = type { i32 }

@HPAGE_PMD_NR = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.address_space*, %struct.page*)* @truncate_cleanup_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @truncate_cleanup_page(%struct.address_space* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %6 = load %struct.page*, %struct.page** %4, align 8
  %7 = call i64 @page_mapped(%struct.page* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load %struct.page*, %struct.page** %4, align 8
  %11 = call i64 @PageTransHuge(%struct.page* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @HPAGE_PMD_NR, align 4
  br label %16

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i32 [ %14, %13 ], [ 1, %15 ]
  store i32 %17, i32* %5, align 4
  %18 = load %struct.address_space*, %struct.address_space** %3, align 8
  %19 = load %struct.page*, %struct.page** %4, align 8
  %20 = getelementptr inbounds %struct.page, %struct.page* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @unmap_mapping_pages(%struct.address_space* %18, i32 %21, i32 %22, i32 0)
  br label %24

24:                                               ; preds = %16, %2
  %25 = load %struct.page*, %struct.page** %4, align 8
  %26 = call i64 @page_has_private(%struct.page* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load %struct.page*, %struct.page** %4, align 8
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = call i32 @do_invalidatepage(%struct.page* %29, i32 0, i32 %30)
  br label %32

32:                                               ; preds = %28, %24
  %33 = load %struct.page*, %struct.page** %4, align 8
  %34 = call i32 @cancel_dirty_page(%struct.page* %33)
  %35 = load %struct.page*, %struct.page** %4, align 8
  %36 = call i32 @ClearPageMappedToDisk(%struct.page* %35)
  ret void
}

declare dso_local i64 @page_mapped(%struct.page*) #1

declare dso_local i64 @PageTransHuge(%struct.page*) #1

declare dso_local i32 @unmap_mapping_pages(%struct.address_space*, i32, i32, i32) #1

declare dso_local i64 @page_has_private(%struct.page*) #1

declare dso_local i32 @do_invalidatepage(%struct.page*, i32, i32) #1

declare dso_local i32 @cancel_dirty_page(%struct.page*) #1

declare dso_local i32 @ClearPageMappedToDisk(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
