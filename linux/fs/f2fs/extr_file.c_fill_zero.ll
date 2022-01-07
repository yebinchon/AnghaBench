; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_fill_zero.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_fill_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.page = type { i32 }

@DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32, i32)* @fill_zero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_zero(%struct.inode* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.f2fs_sb_info*, align 8
  %11 = alloca %struct.page*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %12)
  store %struct.f2fs_sb_info* %13, %struct.f2fs_sb_info** %10, align 8
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %45

17:                                               ; preds = %4
  %18 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %19 = call i32 @f2fs_balance_fs(%struct.f2fs_sb_info* %18, i32 1)
  %20 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %21 = call i32 @f2fs_lock_op(%struct.f2fs_sb_info* %20)
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call %struct.page* @f2fs_get_new_data_page(%struct.inode* %22, i32* null, i32 %23, i32 0)
  store %struct.page* %24, %struct.page** %11, align 8
  %25 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %26 = call i32 @f2fs_unlock_op(%struct.f2fs_sb_info* %25)
  %27 = load %struct.page*, %struct.page** %11, align 8
  %28 = call i64 @IS_ERR(%struct.page* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = load %struct.page*, %struct.page** %11, align 8
  %32 = call i32 @PTR_ERR(%struct.page* %31)
  store i32 %32, i32* %5, align 4
  br label %45

33:                                               ; preds = %17
  %34 = load %struct.page*, %struct.page** %11, align 8
  %35 = load i32, i32* @DATA, align 4
  %36 = call i32 @f2fs_wait_on_page_writeback(%struct.page* %34, i32 %35, i32 1, i32 1)
  %37 = load %struct.page*, %struct.page** %11, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @zero_user(%struct.page* %37, i32 %38, i32 %39)
  %41 = load %struct.page*, %struct.page** %11, align 8
  %42 = call i32 @set_page_dirty(%struct.page* %41)
  %43 = load %struct.page*, %struct.page** %11, align 8
  %44 = call i32 @f2fs_put_page(%struct.page* %43, i32 1)
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %33, %30, %16
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @f2fs_balance_fs(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_lock_op(%struct.f2fs_sb_info*) #1

declare dso_local %struct.page* @f2fs_get_new_data_page(%struct.inode*, i32*, i32, i32) #1

declare dso_local i32 @f2fs_unlock_op(%struct.f2fs_sb_info*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i32 @f2fs_wait_on_page_writeback(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @zero_user(%struct.page*, i32, i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
