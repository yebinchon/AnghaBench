; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_super.c_hfsplus_system_write_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_super.c_hfsplus_system_write_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.hfsplus_sb_info = type { i32, %struct.hfs_btree*, %struct.hfs_btree*, %struct.hfs_btree*, %struct.hfsplus_vh* }
%struct.hfs_btree = type { i32 }
%struct.hfsplus_vh = type { %struct.hfsplus_fork_raw, %struct.hfsplus_fork_raw, %struct.hfsplus_fork_raw, %struct.hfsplus_fork_raw, %struct.hfsplus_fork_raw }
%struct.hfsplus_fork_raw = type { i64 }

@EIO = common dso_local global i32 0, align 4
@HFSPLUS_SB_WRITEBACKUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"b-tree write err: %d, ino %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @hfsplus_system_write_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsplus_system_write_inode(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.hfsplus_sb_info*, align 8
  %5 = alloca %struct.hfsplus_vh*, align 8
  %6 = alloca %struct.hfsplus_fork_raw*, align 8
  %7 = alloca %struct.hfs_btree*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.hfsplus_sb_info* @HFSPLUS_SB(i32 %11)
  store %struct.hfsplus_sb_info* %12, %struct.hfsplus_sb_info** %4, align 8
  %13 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %4, align 8
  %14 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %13, i32 0, i32 4
  %15 = load %struct.hfsplus_vh*, %struct.hfsplus_vh** %14, align 8
  store %struct.hfsplus_vh* %15, %struct.hfsplus_vh** %5, align 8
  store %struct.hfs_btree* null, %struct.hfs_btree** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %43 [
    i32 129, label %19
    i32 130, label %25
    i32 132, label %31
    i32 128, label %34
    i32 131, label %37
  ]

19:                                               ; preds = %1
  %20 = load %struct.hfsplus_vh*, %struct.hfsplus_vh** %5, align 8
  %21 = getelementptr inbounds %struct.hfsplus_vh, %struct.hfsplus_vh* %20, i32 0, i32 4
  store %struct.hfsplus_fork_raw* %21, %struct.hfsplus_fork_raw** %6, align 8
  %22 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %4, align 8
  %23 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %22, i32 0, i32 3
  %24 = load %struct.hfs_btree*, %struct.hfs_btree** %23, align 8
  store %struct.hfs_btree* %24, %struct.hfs_btree** %7, align 8
  br label %46

25:                                               ; preds = %1
  %26 = load %struct.hfsplus_vh*, %struct.hfsplus_vh** %5, align 8
  %27 = getelementptr inbounds %struct.hfsplus_vh, %struct.hfsplus_vh* %26, i32 0, i32 3
  store %struct.hfsplus_fork_raw* %27, %struct.hfsplus_fork_raw** %6, align 8
  %28 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %4, align 8
  %29 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %28, i32 0, i32 2
  %30 = load %struct.hfs_btree*, %struct.hfs_btree** %29, align 8
  store %struct.hfs_btree* %30, %struct.hfs_btree** %7, align 8
  br label %46

31:                                               ; preds = %1
  %32 = load %struct.hfsplus_vh*, %struct.hfsplus_vh** %5, align 8
  %33 = getelementptr inbounds %struct.hfsplus_vh, %struct.hfsplus_vh* %32, i32 0, i32 2
  store %struct.hfsplus_fork_raw* %33, %struct.hfsplus_fork_raw** %6, align 8
  br label %46

34:                                               ; preds = %1
  %35 = load %struct.hfsplus_vh*, %struct.hfsplus_vh** %5, align 8
  %36 = getelementptr inbounds %struct.hfsplus_vh, %struct.hfsplus_vh* %35, i32 0, i32 1
  store %struct.hfsplus_fork_raw* %36, %struct.hfsplus_fork_raw** %6, align 8
  br label %46

37:                                               ; preds = %1
  %38 = load %struct.hfsplus_vh*, %struct.hfsplus_vh** %5, align 8
  %39 = getelementptr inbounds %struct.hfsplus_vh, %struct.hfsplus_vh* %38, i32 0, i32 0
  store %struct.hfsplus_fork_raw* %39, %struct.hfsplus_fork_raw** %6, align 8
  %40 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %4, align 8
  %41 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %40, i32 0, i32 1
  %42 = load %struct.hfs_btree*, %struct.hfs_btree** %41, align 8
  store %struct.hfs_btree* %42, %struct.hfs_btree** %7, align 8
  br label %46

43:                                               ; preds = %1
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %84

46:                                               ; preds = %37, %34, %31, %25, %19
  %47 = load %struct.hfsplus_fork_raw*, %struct.hfsplus_fork_raw** %6, align 8
  %48 = getelementptr inbounds %struct.hfsplus_fork_raw, %struct.hfsplus_fork_raw* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.inode*, %struct.inode** %3, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @cpu_to_be64(i32 %52)
  %54 = icmp ne i64 %49, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %46
  %56 = load i32, i32* @HFSPLUS_SB_WRITEBACKUP, align 4
  %57 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %4, align 8
  %58 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %57, i32 0, i32 0
  %59 = call i32 @set_bit(i32 %56, i32* %58)
  %60 = load %struct.inode*, %struct.inode** %3, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @hfsplus_mark_mdb_dirty(i32 %62)
  br label %64

64:                                               ; preds = %55, %46
  %65 = load %struct.inode*, %struct.inode** %3, align 8
  %66 = load %struct.hfsplus_fork_raw*, %struct.hfsplus_fork_raw** %6, align 8
  %67 = call i32 @hfsplus_inode_write_fork(%struct.inode* %65, %struct.hfsplus_fork_raw* %66)
  %68 = load %struct.hfs_btree*, %struct.hfs_btree** %7, align 8
  %69 = icmp ne %struct.hfs_btree* %68, null
  br i1 %69, label %70, label %83

70:                                               ; preds = %64
  %71 = load %struct.hfs_btree*, %struct.hfs_btree** %7, align 8
  %72 = call i32 @hfs_btree_write(%struct.hfs_btree* %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.inode*, %struct.inode** %3, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %79)
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %2, align 4
  br label %84

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82, %64
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %75, %43
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.hfsplus_sb_info* @HFSPLUS_SB(i32) #1

declare dso_local i64 @cpu_to_be64(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hfsplus_mark_mdb_dirty(i32) #1

declare dso_local i32 @hfsplus_inode_write_fork(%struct.inode*, %struct.hfsplus_fork_raw*) #1

declare dso_local i32 @hfs_btree_write(%struct.hfs_btree*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
