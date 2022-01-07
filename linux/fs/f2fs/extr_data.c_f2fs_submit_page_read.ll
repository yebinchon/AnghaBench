; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_submit_page_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_submit_page_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.bio = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@F2FS_RD_DATA = common dso_local global i32 0, align 4
@DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.page*, i32)* @f2fs_submit_page_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_submit_page_read(%struct.inode* %0, %struct.page* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.f2fs_sb_info*, align 8
  %9 = alloca %struct.bio*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %10)
  store %struct.f2fs_sb_info* %11, %struct.f2fs_sb_info** %8, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.page*, %struct.page** %6, align 8
  %15 = getelementptr inbounds %struct.page, %struct.page* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.bio* @f2fs_grab_read_bio(%struct.inode* %12, i32 %13, i32 1, i32 0, i32 %16)
  store %struct.bio* %17, %struct.bio** %9, align 8
  %18 = load %struct.bio*, %struct.bio** %9, align 8
  %19 = call i64 @IS_ERR(%struct.bio* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.bio*, %struct.bio** %9, align 8
  %23 = call i32 @PTR_ERR(%struct.bio* %22)
  store i32 %23, i32* %4, align 4
  br label %49

24:                                               ; preds = %3
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @f2fs_wait_on_block_writeback(%struct.inode* %25, i32 %26)
  %28 = load %struct.bio*, %struct.bio** %9, align 8
  %29 = load %struct.page*, %struct.page** %6, align 8
  %30 = load i64, i64* @PAGE_SIZE, align 8
  %31 = call i64 @bio_add_page(%struct.bio* %28, %struct.page* %29, i64 %30, i32 0)
  %32 = load i64, i64* @PAGE_SIZE, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load %struct.bio*, %struct.bio** %9, align 8
  %36 = call i32 @bio_put(%struct.bio* %35)
  %37 = load i32, i32* @EFAULT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %49

39:                                               ; preds = %24
  %40 = load %struct.page*, %struct.page** %6, align 8
  %41 = call i32 @ClearPageError(%struct.page* %40)
  %42 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %43 = load i32, i32* @F2FS_RD_DATA, align 4
  %44 = call i32 @inc_page_count(%struct.f2fs_sb_info* %42, i32 %43)
  %45 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %46 = load %struct.bio*, %struct.bio** %9, align 8
  %47 = load i32, i32* @DATA, align 4
  %48 = call i32 @__submit_bio(%struct.f2fs_sb_info* %45, %struct.bio* %46, i32 %47)
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %39, %34, %21
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local %struct.bio* @f2fs_grab_read_bio(%struct.inode*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.bio*) #1

declare dso_local i32 @PTR_ERR(%struct.bio*) #1

declare dso_local i32 @f2fs_wait_on_block_writeback(%struct.inode*, i32) #1

declare dso_local i64 @bio_add_page(%struct.bio*, %struct.page*, i64, i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @ClearPageError(%struct.page*) #1

declare dso_local i32 @inc_page_count(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @__submit_bio(%struct.f2fs_sb_info*, %struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
