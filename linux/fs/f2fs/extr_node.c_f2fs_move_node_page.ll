; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_move_node_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_move_node_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.writeback_control = type { i32, i32, i32 }

@FG_GC = common dso_local global i32 0, align 4
@WB_SYNC_ALL = common dso_local global i32 0, align 4
@NODE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@FS_GC_NODE_IO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_move_node_page(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.writeback_control, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @FG_GC, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %37

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %6, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %6, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %6, i32 0, i32 2
  %14 = load i32, i32* @WB_SYNC_ALL, align 4
  store i32 %14, i32* %13, align 4
  %15 = load %struct.page*, %struct.page** %3, align 8
  %16 = load i32, i32* @NODE, align 4
  %17 = call i32 @f2fs_wait_on_page_writeback(%struct.page* %15, i32 %16, i32 1, i32 1)
  %18 = load %struct.page*, %struct.page** %3, align 8
  %19 = call i32 @set_page_dirty(%struct.page* %18)
  %20 = load %struct.page*, %struct.page** %3, align 8
  %21 = call i32 @clear_page_dirty_for_io(%struct.page* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %10
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %46

26:                                               ; preds = %10
  %27 = load %struct.page*, %struct.page** %3, align 8
  %28 = load i32, i32* @FS_GC_NODE_IO, align 4
  %29 = call i64 @__write_node_page(%struct.page* %27, i32 0, i32* null, %struct.writeback_control* %6, i32 0, i32 %28, i32* null)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i32, i32* @EAGAIN, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  %34 = load %struct.page*, %struct.page** %3, align 8
  %35 = call i32 @unlock_page(%struct.page* %34)
  br label %36

36:                                               ; preds = %31, %26
  br label %49

37:                                               ; preds = %2
  %38 = load %struct.page*, %struct.page** %3, align 8
  %39 = call i32 @PageWriteback(%struct.page* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load %struct.page*, %struct.page** %3, align 8
  %43 = call i32 @set_page_dirty(%struct.page* %42)
  br label %44

44:                                               ; preds = %41, %37
  br label %45

45:                                               ; preds = %44
  br label %46

46:                                               ; preds = %45, %23
  %47 = load %struct.page*, %struct.page** %3, align 8
  %48 = call i32 @unlock_page(%struct.page* %47)
  br label %49

49:                                               ; preds = %46, %36
  %50 = load %struct.page*, %struct.page** %3, align 8
  %51 = call i32 @f2fs_put_page(%struct.page* %50, i32 0)
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @f2fs_wait_on_page_writeback(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @clear_page_dirty_for_io(%struct.page*) #1

declare dso_local i64 @__write_node_page(%struct.page*, i32, i32*, %struct.writeback_control*, i32, i32, i32*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @PageWriteback(%struct.page*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
