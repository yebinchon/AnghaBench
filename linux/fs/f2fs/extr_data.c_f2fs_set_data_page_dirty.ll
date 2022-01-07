; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_set_data_page_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_set_data_page_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { %struct.inode* }

@DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*)* @f2fs_set_data_page_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_set_data_page_dirty(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.inode*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  %5 = load %struct.page*, %struct.page** %3, align 8
  %6 = call %struct.TYPE_2__* @page_file_mapping(%struct.page* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.inode*, %struct.inode** %7, align 8
  store %struct.inode* %8, %struct.inode** %4, align 8
  %9 = load %struct.page*, %struct.page** %3, align 8
  %10 = load i32, i32* @DATA, align 4
  %11 = call i32 @trace_f2fs_set_page_dirty(%struct.page* %9, i32 %10)
  %12 = load %struct.page*, %struct.page** %3, align 8
  %13 = call i32 @PageUptodate(%struct.page* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct.page*, %struct.page** %3, align 8
  %17 = call i32 @SetPageUptodate(%struct.page* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.page*, %struct.page** %3, align 8
  %20 = call i64 @PageSwapCache(%struct.page* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.page*, %struct.page** %3, align 8
  %24 = call i32 @__set_page_dirty_nobuffers(%struct.page* %23)
  store i32 %24, i32* %2, align 4
  br label %53

25:                                               ; preds = %18
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = call i64 @f2fs_is_atomic_file(%struct.inode* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = call i32 @f2fs_is_commit_atomic_write(%struct.inode* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %29
  %34 = load %struct.page*, %struct.page** %3, align 8
  %35 = call i32 @IS_ATOMIC_WRITTEN_PAGE(%struct.page* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = load %struct.page*, %struct.page** %3, align 8
  %40 = call i32 @f2fs_register_inmem_page(%struct.inode* %38, %struct.page* %39)
  store i32 1, i32* %2, align 4
  br label %53

41:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %53

42:                                               ; preds = %29, %25
  %43 = load %struct.page*, %struct.page** %3, align 8
  %44 = call i32 @PageDirty(%struct.page* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  %47 = load %struct.page*, %struct.page** %3, align 8
  %48 = call i32 @__set_page_dirty_nobuffers(%struct.page* %47)
  %49 = load %struct.inode*, %struct.inode** %4, align 8
  %50 = load %struct.page*, %struct.page** %3, align 8
  %51 = call i32 @f2fs_update_dirty_page(%struct.inode* %49, %struct.page* %50)
  store i32 1, i32* %2, align 4
  br label %53

52:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %46, %41, %37, %22
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.TYPE_2__* @page_file_mapping(%struct.page*) #1

declare dso_local i32 @trace_f2fs_set_page_dirty(%struct.page*, i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i64 @PageSwapCache(%struct.page*) #1

declare dso_local i32 @__set_page_dirty_nobuffers(%struct.page*) #1

declare dso_local i64 @f2fs_is_atomic_file(%struct.inode*) #1

declare dso_local i32 @f2fs_is_commit_atomic_write(%struct.inode*) #1

declare dso_local i32 @IS_ATOMIC_WRITTEN_PAGE(%struct.page*) #1

declare dso_local i32 @f2fs_register_inmem_page(%struct.inode*, %struct.page*) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i32 @f2fs_update_dirty_page(%struct.inode*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
