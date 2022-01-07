; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_write_one_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_write_one_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.address_space* }
%struct.address_space = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.page*, %struct.writeback_control*)* }
%struct.writeback_control = type { i32, i32 }

@WB_SYNC_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_one_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.writeback_control, align 4
  store %struct.page* %0, %struct.page** %2, align 8
  %6 = load %struct.page*, %struct.page** %2, align 8
  %7 = getelementptr inbounds %struct.page, %struct.page* %6, i32 0, i32 0
  %8 = load %struct.address_space*, %struct.address_space** %7, align 8
  store %struct.address_space* %8, %struct.address_space** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %5, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %5, i32 0, i32 1
  %11 = load i32, i32* @WB_SYNC_ALL, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.page*, %struct.page** %2, align 8
  %13 = call i32 @PageLocked(%struct.page* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.page*, %struct.page** %2, align 8
  %19 = call i32 @wait_on_page_writeback(%struct.page* %18)
  %20 = load %struct.page*, %struct.page** %2, align 8
  %21 = call i64 @clear_page_dirty_for_io(%struct.page* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %1
  %24 = load %struct.page*, %struct.page** %2, align 8
  %25 = call i32 @get_page(%struct.page* %24)
  %26 = load %struct.address_space*, %struct.address_space** %3, align 8
  %27 = getelementptr inbounds %struct.address_space, %struct.address_space* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.page*, %struct.writeback_control*)** %29, align 8
  %31 = load %struct.page*, %struct.page** %2, align 8
  %32 = call i32 %30(%struct.page* %31, %struct.writeback_control* %5)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = load %struct.page*, %struct.page** %2, align 8
  %37 = call i32 @wait_on_page_writeback(%struct.page* %36)
  br label %38

38:                                               ; preds = %35, %23
  %39 = load %struct.page*, %struct.page** %2, align 8
  %40 = call i32 @put_page(%struct.page* %39)
  br label %44

41:                                               ; preds = %1
  %42 = load %struct.page*, %struct.page** %2, align 8
  %43 = call i32 @unlock_page(%struct.page* %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load %struct.address_space*, %struct.address_space** %3, align 8
  %49 = call i32 @filemap_check_errors(%struct.address_space* %48)
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local i64 @clear_page_dirty_for_io(%struct.page*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @filemap_check_errors(%struct.address_space*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
