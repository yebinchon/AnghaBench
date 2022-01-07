; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_mark_inode_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_mark_inode_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_iloc = type { i32 }
%struct.ext4_sb_info = type { i64 }
%struct.TYPE_2__ = type { i64 }

@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_mark_inode_dirty(i32* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ext4_iloc, align 4
  %7 = alloca %struct.ext4_sb_info*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ext4_sb_info* @EXT4_SB(i32 %11)
  store %struct.ext4_sb_info* %12, %struct.ext4_sb_info** %7, align 8
  %13 = call i32 (...) @might_sleep()
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = load i32, i32* @_RET_IP_, align 4
  %16 = call i32 @trace_ext4_mark_inode_dirty(%struct.inode* %14, i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = call i32 @ext4_reserve_inode_write(i32* %17, %struct.inode* %18, %struct.ext4_iloc* %6)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %46

24:                                               ; preds = %2
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %30 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %24
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %36 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ext4_try_to_expand_extra_isize(%struct.inode* %34, i64 %37, i32 %40, i32* %38)
  br label %42

42:                                               ; preds = %33, %24
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = call i32 @ext4_mark_iloc_dirty(i32* %43, %struct.inode* %44, %struct.ext4_iloc* %6)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %22
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(i32) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @trace_ext4_mark_inode_dirty(%struct.inode*, i32) #1

declare dso_local i32 @ext4_reserve_inode_write(i32*, %struct.inode*, %struct.ext4_iloc*) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_try_to_expand_extra_isize(%struct.inode*, i64, i32, i32*) #1

declare dso_local i32 @ext4_mark_iloc_dirty(i32*, %struct.inode*, %struct.ext4_iloc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
