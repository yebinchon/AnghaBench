; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c___add_dirty_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c___add_dirty_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.f2fs_sb_info = type { i32* }
%struct.TYPE_2__ = type { i32 }

@DIR_INODE = common dso_local global i32 0, align 4
@FI_DIRTY_DIR = common dso_local global i32 0, align 4
@FI_DIRTY_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32)* @__add_dirty_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__add_dirty_inode(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %7)
  store %struct.f2fs_sb_info* %8, %struct.f2fs_sb_info** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @DIR_INODE, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @FI_DIRTY_DIR, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @FI_DIRTY_FILE, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %6, align 4
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @is_inode_flag_set(%struct.inode* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %45

23:                                               ; preds = %16
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @set_inode_flag(%struct.inode* %24, i32 %25)
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = call i32 @f2fs_is_volatile_file(%struct.inode* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %23
  %31 = load %struct.inode*, %struct.inode** %3, align 8
  %32 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %35 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = call i32 @list_add_tail(i32* %33, i32* %39)
  br label %41

41:                                               ; preds = %30, %23
  %42 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @stat_inc_dirty_inode(%struct.f2fs_sb_info* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %22
  ret void
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i64 @is_inode_flag_set(%struct.inode*, i32) #1

declare dso_local i32 @set_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_is_volatile_file(%struct.inode*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @stat_inc_dirty_inode(%struct.f2fs_sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
