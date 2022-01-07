; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_page.c___nilfs_clear_page_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_page.c___nilfs_clear_page_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32, %struct.address_space* }
%struct.address_space = type { i32 }

@PG_dirty = common dso_local global i32 0, align 4
@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__nilfs_clear_page_dirty(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.address_space*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  %5 = load %struct.page*, %struct.page** %3, align 8
  %6 = getelementptr inbounds %struct.page, %struct.page* %5, i32 0, i32 1
  %7 = load %struct.address_space*, %struct.address_space** %6, align 8
  store %struct.address_space* %7, %struct.address_space** %4, align 8
  %8 = load %struct.address_space*, %struct.address_space** %4, align 8
  %9 = icmp ne %struct.address_space* %8, null
  br i1 %9, label %10, label %35

10:                                               ; preds = %1
  %11 = load %struct.address_space*, %struct.address_space** %4, align 8
  %12 = getelementptr inbounds %struct.address_space, %struct.address_space* %11, i32 0, i32 0
  %13 = call i32 @xa_lock_irq(i32* %12)
  %14 = load i32, i32* @PG_dirty, align 4
  %15 = load %struct.page*, %struct.page** %3, align 8
  %16 = getelementptr inbounds %struct.page, %struct.page* %15, i32 0, i32 0
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %10
  %20 = load %struct.address_space*, %struct.address_space** %4, align 8
  %21 = getelementptr inbounds %struct.address_space, %struct.address_space* %20, i32 0, i32 0
  %22 = load %struct.page*, %struct.page** %3, align 8
  %23 = call i32 @page_index(%struct.page* %22)
  %24 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %25 = call i32 @__xa_clear_mark(i32* %21, i32 %23, i32 %24)
  %26 = load %struct.address_space*, %struct.address_space** %4, align 8
  %27 = getelementptr inbounds %struct.address_space, %struct.address_space* %26, i32 0, i32 0
  %28 = call i32 @xa_unlock_irq(i32* %27)
  %29 = load %struct.page*, %struct.page** %3, align 8
  %30 = call i32 @clear_page_dirty_for_io(%struct.page* %29)
  store i32 %30, i32* %2, align 4
  br label %38

31:                                               ; preds = %10
  %32 = load %struct.address_space*, %struct.address_space** %4, align 8
  %33 = getelementptr inbounds %struct.address_space, %struct.address_space* %32, i32 0, i32 0
  %34 = call i32 @xa_unlock_irq(i32* %33)
  store i32 0, i32* %2, align 4
  br label %38

35:                                               ; preds = %1
  %36 = load %struct.page*, %struct.page** %3, align 8
  %37 = call i32 @TestClearPageDirty(%struct.page* %36)
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %35, %31, %19
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @xa_lock_irq(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @__xa_clear_mark(i32*, i32, i32) #1

declare dso_local i32 @page_index(%struct.page*) #1

declare dso_local i32 @xa_unlock_irq(i32*) #1

declare dso_local i32 @clear_page_dirty_for_io(%struct.page*) #1

declare dso_local i32 @TestClearPageDirty(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
