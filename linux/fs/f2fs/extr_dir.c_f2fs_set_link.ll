; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_f2fs_set_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_f2fs_set_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_dir_entry = type { i32 }
%struct.page = type { i32 }
%struct.inode = type { i32, i32, i32, i32 }

@NODE = common dso_local global i32 0, align 4
@DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_set_link(%struct.inode* %0, %struct.f2fs_dir_entry* %1, %struct.page* %2, %struct.inode* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.f2fs_dir_entry*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.f2fs_dir_entry* %1, %struct.f2fs_dir_entry** %6, align 8
  store %struct.page* %2, %struct.page** %7, align 8
  store %struct.inode* %3, %struct.inode** %8, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = call i64 @f2fs_has_inline_dentry(%struct.inode* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i32, i32* @NODE, align 4
  br label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @DATA, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %9, align 4
  %19 = load %struct.page*, %struct.page** %7, align 8
  %20 = call i32 @lock_page(%struct.page* %19)
  %21 = load %struct.page*, %struct.page** %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @f2fs_wait_on_page_writeback(%struct.page* %21, i32 %22, i32 1, i32 1)
  %24 = load %struct.inode*, %struct.inode** %8, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @cpu_to_le32(i32 %26)
  %28 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %6, align 8
  %29 = getelementptr inbounds %struct.f2fs_dir_entry, %struct.f2fs_dir_entry* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %6, align 8
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @set_de_type(%struct.f2fs_dir_entry* %30, i32 %33)
  %35 = load %struct.page*, %struct.page** %7, align 8
  %36 = call i32 @set_page_dirty(%struct.page* %35)
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = call i32 @current_time(%struct.inode* %37)
  %39 = load %struct.inode*, %struct.inode** %5, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 1
  store i32 %38, i32* %42, align 4
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = call i32 @f2fs_mark_inode_dirty_sync(%struct.inode* %43, i32 0)
  %45 = load %struct.page*, %struct.page** %7, align 8
  %46 = call i32 @f2fs_put_page(%struct.page* %45, i32 1)
  ret void
}

declare dso_local i64 @f2fs_has_inline_dentry(%struct.inode*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @f2fs_wait_on_page_writeback(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @set_de_type(%struct.f2fs_dir_entry*, i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @f2fs_mark_inode_dirty_sync(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
