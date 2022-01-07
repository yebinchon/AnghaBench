; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_inline.c_f2fs_delete_inline_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_inline.c_f2fs_delete_inline_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_dir_entry = type { i32 }
%struct.page = type { i32 }
%struct.inode = type { i32, i32 }
%struct.f2fs_dentry_ptr = type { i32, %struct.f2fs_dir_entry* }

@NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_delete_inline_entry(%struct.f2fs_dir_entry* %0, %struct.page* %1, %struct.inode* %2, %struct.inode* %3) #0 {
  %5 = alloca %struct.f2fs_dir_entry*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.f2fs_dentry_ptr, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.f2fs_dir_entry* %0, %struct.f2fs_dir_entry** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store %struct.inode* %3, %struct.inode** %8, align 8
  %14 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %5, align 8
  %15 = getelementptr inbounds %struct.f2fs_dir_entry, %struct.f2fs_dir_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le16_to_cpu(i32 %16)
  %18 = call i32 @GET_DENTRY_SLOTS(i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.page*, %struct.page** %6, align 8
  %20 = call i32 @lock_page(%struct.page* %19)
  %21 = load %struct.page*, %struct.page** %6, align 8
  %22 = load i32, i32* @NODE, align 4
  %23 = call i32 @f2fs_wait_on_page_writeback(%struct.page* %21, i32 %22, i32 1, i32 1)
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = load %struct.page*, %struct.page** %6, align 8
  %26 = call i8* @inline_data_addr(%struct.inode* %24, %struct.page* %25)
  store i8* %26, i8** %10, align 8
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 @make_dentry_ptr_inline(%struct.inode* %27, %struct.f2fs_dentry_ptr* %9, i8* %28)
  %30 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %5, align 8
  %31 = getelementptr inbounds %struct.f2fs_dentry_ptr, %struct.f2fs_dentry_ptr* %9, i32 0, i32 1
  %32 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %31, align 8
  %33 = ptrtoint %struct.f2fs_dir_entry* %30 to i64
  %34 = ptrtoint %struct.f2fs_dir_entry* %32 to i64
  %35 = sub i64 %33, %34
  %36 = sdiv exact i64 %35, 4
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %49, %4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %13, align 4
  %45 = add i32 %43, %44
  %46 = getelementptr inbounds %struct.f2fs_dentry_ptr, %struct.f2fs_dentry_ptr* %9, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @__clear_bit_le(i32 %45, i32 %47)
  br label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %13, align 4
  br label %38

52:                                               ; preds = %38
  %53 = load %struct.page*, %struct.page** %6, align 8
  %54 = call i32 @set_page_dirty(%struct.page* %53)
  %55 = load %struct.page*, %struct.page** %6, align 8
  %56 = call i32 @f2fs_put_page(%struct.page* %55, i32 1)
  %57 = load %struct.inode*, %struct.inode** %7, align 8
  %58 = call i32 @current_time(%struct.inode* %57)
  %59 = load %struct.inode*, %struct.inode** %7, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.inode*, %struct.inode** %7, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 1
  store i32 %58, i32* %62, align 4
  %63 = load %struct.inode*, %struct.inode** %7, align 8
  %64 = call i32 @f2fs_mark_inode_dirty_sync(%struct.inode* %63, i32 0)
  %65 = load %struct.inode*, %struct.inode** %8, align 8
  %66 = icmp ne %struct.inode* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %52
  %68 = load %struct.inode*, %struct.inode** %7, align 8
  %69 = load %struct.inode*, %struct.inode** %8, align 8
  %70 = call i32 @f2fs_drop_nlink(%struct.inode* %68, %struct.inode* %69)
  br label %71

71:                                               ; preds = %67, %52
  ret void
}

declare dso_local i32 @GET_DENTRY_SLOTS(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @f2fs_wait_on_page_writeback(%struct.page*, i32, i32, i32) #1

declare dso_local i8* @inline_data_addr(%struct.inode*, %struct.page*) #1

declare dso_local i32 @make_dentry_ptr_inline(%struct.inode*, %struct.f2fs_dentry_ptr*, i8*) #1

declare dso_local i32 @__clear_bit_le(i32, i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @f2fs_mark_inode_dirty_sync(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_drop_nlink(%struct.inode*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
