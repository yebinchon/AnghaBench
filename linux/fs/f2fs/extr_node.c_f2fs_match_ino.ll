; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_match_ino.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_match_ino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.f2fs_sb_info = type { i32* }
%struct.TYPE_2__ = type { i32 }

@FI_DIRTY_INODE = common dso_local global i32 0, align 4
@DIRTY_META = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i8*)* @f2fs_match_ino to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_match_ino(%struct.inode* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.f2fs_sb_info*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %10)
  store %struct.f2fs_sb_info* %11, %struct.f2fs_sb_info** %8, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %51

18:                                               ; preds = %3
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = load i32, i32* @FI_DIRTY_INODE, align 4
  %21 = call i32 @is_inode_flag_set(%struct.inode* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %51

24:                                               ; preds = %18
  %25 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %26 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @DIRTY_META, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @list_empty(i32* %33)
  store i32 %34, i32* %9, align 4
  %35 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %36 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @DIRTY_META, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = call i32 @spin_unlock(i32* %39)
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %51

44:                                               ; preds = %24
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = call %struct.inode* @igrab(%struct.inode* %45)
  store %struct.inode* %46, %struct.inode** %5, align 8
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = icmp ne %struct.inode* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %51

50:                                               ; preds = %44
  store i32 1, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %49, %43, %23, %17
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @is_inode_flag_set(%struct.inode*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.inode* @igrab(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
