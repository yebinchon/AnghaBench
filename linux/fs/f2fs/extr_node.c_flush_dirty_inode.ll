; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_flush_dirty_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_flush_dirty_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.inode = type { i32 }

@f2fs_match_ino = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*)* @flush_dirty_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flush_dirty_inode(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  %7 = load %struct.page*, %struct.page** %3, align 8
  %8 = call %struct.f2fs_sb_info* @F2FS_P_SB(%struct.page* %7)
  store %struct.f2fs_sb_info* %8, %struct.f2fs_sb_info** %4, align 8
  %9 = load %struct.page*, %struct.page** %3, align 8
  %10 = call i32 @ino_of_node(%struct.page* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %12 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @f2fs_match_ino, align 4
  %16 = call %struct.inode* @find_inode_nowait(i32 %13, i32 %14, i32 %15, i32* null)
  store %struct.inode* %16, %struct.inode** %5, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = icmp ne %struct.inode* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

20:                                               ; preds = %1
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = load %struct.page*, %struct.page** %3, align 8
  %23 = call i32 @f2fs_update_inode(%struct.inode* %21, %struct.page* %22)
  %24 = load %struct.page*, %struct.page** %3, align 8
  %25 = call i32 @unlock_page(%struct.page* %24)
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = call i32 @iput(%struct.inode* %26)
  store i32 1, i32* %2, align 4
  br label %28

28:                                               ; preds = %20, %19
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.f2fs_sb_info* @F2FS_P_SB(%struct.page*) #1

declare dso_local i32 @ino_of_node(%struct.page*) #1

declare dso_local %struct.inode* @find_inode_nowait(i32, i32, i32, i32*) #1

declare dso_local i32 @f2fs_update_inode(%struct.inode*, %struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
