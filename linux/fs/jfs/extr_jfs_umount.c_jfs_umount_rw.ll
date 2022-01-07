; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_umount.c_jfs_umount_rw.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_umount.c_jfs_umount_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.jfs_sb_info = type { %struct.TYPE_2__*, i32, i32, %struct.jfs_log* }
%struct.TYPE_2__ = type { i32 }
%struct.jfs_log = type { i32 }

@FM_CLEAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jfs_umount_rw(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.jfs_sb_info*, align 8
  %5 = alloca %struct.jfs_log*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = call %struct.jfs_sb_info* @JFS_SBI(%struct.super_block* %6)
  store %struct.jfs_sb_info* %7, %struct.jfs_sb_info** %4, align 8
  %8 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %4, align 8
  %9 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %8, i32 0, i32 3
  %10 = load %struct.jfs_log*, %struct.jfs_log** %9, align 8
  store %struct.jfs_log* %10, %struct.jfs_log** %5, align 8
  %11 = load %struct.jfs_log*, %struct.jfs_log** %5, align 8
  %12 = icmp ne %struct.jfs_log* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

14:                                               ; preds = %1
  %15 = load %struct.jfs_log*, %struct.jfs_log** %5, align 8
  %16 = call i32 @jfs_flush_journal(%struct.jfs_log* %15, i32 2)
  %17 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %4, align 8
  %18 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dbSync(i32 %19)
  %21 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %4, align 8
  %22 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @diSync(i32 %23)
  %25 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %4, align 8
  %26 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @filemap_write_and_wait(i32 %29)
  %31 = load %struct.super_block*, %struct.super_block** %3, align 8
  %32 = load i32, i32* @FM_CLEAN, align 4
  %33 = call i32 @updateSuper(%struct.super_block* %31, i32 %32)
  %34 = load %struct.super_block*, %struct.super_block** %3, align 8
  %35 = call i32 @lmLogClose(%struct.super_block* %34)
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %14, %13
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.jfs_sb_info* @JFS_SBI(%struct.super_block*) #1

declare dso_local i32 @jfs_flush_journal(%struct.jfs_log*, i32) #1

declare dso_local i32 @dbSync(i32) #1

declare dso_local i32 @diSync(i32) #1

declare dso_local i32 @filemap_write_and_wait(i32) #1

declare dso_local i32 @updateSuper(%struct.super_block*, i32) #1

declare dso_local i32 @lmLogClose(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
