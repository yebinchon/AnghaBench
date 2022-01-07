; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_make_empty_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_make_empty_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.f2fs_dentry_block = type { i32 }
%struct.f2fs_dentry_ptr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.inode*, %struct.page*)* @make_empty_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_empty_dir(%struct.inode* %0, %struct.inode* %1, %struct.page* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.f2fs_dentry_block*, align 8
  %10 = alloca %struct.f2fs_dentry_ptr, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.page* %2, %struct.page** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = call i64 @f2fs_has_inline_dentry(%struct.inode* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = load %struct.page*, %struct.page** %7, align 8
  %18 = call i32 @f2fs_make_empty_inline_dir(%struct.inode* %15, %struct.inode* %16, %struct.page* %17)
  store i32 %18, i32* %4, align 4
  br label %41

19:                                               ; preds = %3
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = load %struct.page*, %struct.page** %7, align 8
  %22 = call %struct.page* @f2fs_get_new_data_page(%struct.inode* %20, %struct.page* %21, i32 0, i32 1)
  store %struct.page* %22, %struct.page** %8, align 8
  %23 = load %struct.page*, %struct.page** %8, align 8
  %24 = call i64 @IS_ERR(%struct.page* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.page*, %struct.page** %8, align 8
  %28 = call i32 @PTR_ERR(%struct.page* %27)
  store i32 %28, i32* %4, align 4
  br label %41

29:                                               ; preds = %19
  %30 = load %struct.page*, %struct.page** %8, align 8
  %31 = call %struct.f2fs_dentry_block* @page_address(%struct.page* %30)
  store %struct.f2fs_dentry_block* %31, %struct.f2fs_dentry_block** %9, align 8
  %32 = load %struct.f2fs_dentry_block*, %struct.f2fs_dentry_block** %9, align 8
  %33 = call i32 @make_dentry_ptr_block(i32* null, %struct.f2fs_dentry_ptr* %10, %struct.f2fs_dentry_block* %32)
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = call i32 @f2fs_do_make_empty_dir(%struct.inode* %34, %struct.inode* %35, %struct.f2fs_dentry_ptr* %10)
  %37 = load %struct.page*, %struct.page** %8, align 8
  %38 = call i32 @set_page_dirty(%struct.page* %37)
  %39 = load %struct.page*, %struct.page** %8, align 8
  %40 = call i32 @f2fs_put_page(%struct.page* %39, i32 1)
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %29, %26, %14
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64 @f2fs_has_inline_dentry(%struct.inode*) #1

declare dso_local i32 @f2fs_make_empty_inline_dir(%struct.inode*, %struct.inode*, %struct.page*) #1

declare dso_local %struct.page* @f2fs_get_new_data_page(%struct.inode*, %struct.page*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local %struct.f2fs_dentry_block* @page_address(%struct.page*) #1

declare dso_local i32 @make_dentry_ptr_block(i32*, %struct.f2fs_dentry_ptr*, %struct.f2fs_dentry_block*) #1

declare dso_local i32 @f2fs_do_make_empty_dir(%struct.inode*, %struct.inode*, %struct.f2fs_dentry_ptr*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
