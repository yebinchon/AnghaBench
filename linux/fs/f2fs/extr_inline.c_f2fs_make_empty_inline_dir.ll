; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_inline.c_f2fs_make_empty_inline_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_inline.c_f2fs_make_empty_inline_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.f2fs_dentry_ptr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_make_empty_inline_dir(%struct.inode* %0, %struct.inode* %1, %struct.page* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.f2fs_dentry_ptr, align 4
  %8 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.page* %2, %struct.page** %6, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = load %struct.page*, %struct.page** %6, align 8
  %11 = call i8* @inline_data_addr(%struct.inode* %9, %struct.page* %10)
  store i8* %11, i8** %8, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i32 @make_dentry_ptr_inline(%struct.inode* %12, %struct.f2fs_dentry_ptr* %7, i8* %13)
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = call i32 @f2fs_do_make_empty_dir(%struct.inode* %15, %struct.inode* %16, %struct.f2fs_dentry_ptr* %7)
  %18 = load %struct.page*, %struct.page** %6, align 8
  %19 = call i32 @set_page_dirty(%struct.page* %18)
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = call i64 @i_size_read(%struct.inode* %20)
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = call i64 @MAX_INLINE_DATA(%struct.inode* %22)
  %24 = icmp slt i64 %21, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = call i64 @MAX_INLINE_DATA(%struct.inode* %27)
  %29 = call i32 @f2fs_i_size_write(%struct.inode* %26, i64 %28)
  br label %30

30:                                               ; preds = %25, %3
  ret i32 0
}

declare dso_local i8* @inline_data_addr(%struct.inode*, %struct.page*) #1

declare dso_local i32 @make_dentry_ptr_inline(%struct.inode*, %struct.f2fs_dentry_ptr*, i8*) #1

declare dso_local i32 @f2fs_do_make_empty_dir(%struct.inode*, %struct.inode*, %struct.f2fs_dentry_ptr*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @MAX_INLINE_DATA(%struct.inode*) #1

declare dso_local i32 @f2fs_i_size_write(%struct.inode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
