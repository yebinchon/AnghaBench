; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_wait_on_block_writeback.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_wait_on_block_writeback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.page = type { i32 }

@DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_wait_on_block_writeback(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca %struct.page*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %7)
  store %struct.f2fs_sb_info* %8, %struct.f2fs_sb_info** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call i32 @f2fs_post_read_required(%struct.inode* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %31

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @__is_valid_data_blkaddr(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %31

18:                                               ; preds = %13
  %19 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %20 = call i32 @META_MAPPING(%struct.f2fs_sb_info* %19)
  %21 = load i32, i32* %4, align 4
  %22 = call %struct.page* @find_lock_page(i32 %20, i32 %21)
  store %struct.page* %22, %struct.page** %6, align 8
  %23 = load %struct.page*, %struct.page** %6, align 8
  %24 = icmp ne %struct.page* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.page*, %struct.page** %6, align 8
  %27 = load i32, i32* @DATA, align 4
  %28 = call i32 @f2fs_wait_on_page_writeback(%struct.page* %26, i32 %27, i32 1, i32 1)
  %29 = load %struct.page*, %struct.page** %6, align 8
  %30 = call i32 @f2fs_put_page(%struct.page* %29, i32 1)
  br label %31

31:                                               ; preds = %12, %17, %25, %18
  ret void
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @f2fs_post_read_required(%struct.inode*) #1

declare dso_local i32 @__is_valid_data_blkaddr(i32) #1

declare dso_local %struct.page* @find_lock_page(i32, i32) #1

declare dso_local i32 @META_MAPPING(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_wait_on_page_writeback(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
