; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_set_node_page_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_set_node_page_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@NODE = common dso_local global i32 0, align 4
@F2FS_DIRTY_NODES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*)* @f2fs_set_node_page_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_set_node_page_dirty(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  %4 = load %struct.page*, %struct.page** %3, align 8
  %5 = load i32, i32* @NODE, align 4
  %6 = call i32 @trace_f2fs_set_page_dirty(%struct.page* %4, i32 %5)
  %7 = load %struct.page*, %struct.page** %3, align 8
  %8 = call i32 @PageUptodate(%struct.page* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.page*, %struct.page** %3, align 8
  %12 = call i32 @SetPageUptodate(%struct.page* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.page*, %struct.page** %3, align 8
  %15 = call i32 @PageDirty(%struct.page* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = load %struct.page*, %struct.page** %3, align 8
  %19 = call i32 @__set_page_dirty_nobuffers(%struct.page* %18)
  %20 = load %struct.page*, %struct.page** %3, align 8
  %21 = call i32 @F2FS_P_SB(%struct.page* %20)
  %22 = load i32, i32* @F2FS_DIRTY_NODES, align 4
  %23 = call i32 @inc_page_count(i32 %21, i32 %22)
  %24 = load %struct.page*, %struct.page** %3, align 8
  %25 = call i32 @f2fs_set_page_private(%struct.page* %24, i32 0)
  %26 = load %struct.page*, %struct.page** %3, align 8
  %27 = call i32 @f2fs_trace_pid(%struct.page* %26)
  store i32 1, i32* %2, align 4
  br label %29

28:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %17
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @trace_f2fs_set_page_dirty(%struct.page*, i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i32 @__set_page_dirty_nobuffers(%struct.page*) #1

declare dso_local i32 @inc_page_count(i32, i32) #1

declare dso_local i32 @F2FS_P_SB(%struct.page*) #1

declare dso_local i32 @f2fs_set_page_private(%struct.page*, i32) #1

declare dso_local i32 @f2fs_trace_pid(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
