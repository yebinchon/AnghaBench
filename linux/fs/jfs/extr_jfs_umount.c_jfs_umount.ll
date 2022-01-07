; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_umount.c_jfs_umount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_umount.c_jfs_umount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.jfs_sb_info = type { %struct.TYPE_2__*, %struct.inode*, %struct.inode*, %struct.inode*, %struct.jfs_log*, %struct.inode* }
%struct.TYPE_2__ = type { i32 }
%struct.jfs_log = type { i32 }
%struct.inode = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"UnMount JFS: sb:0x%p\00", align 1
@FM_CLEAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"UnMount JFS Complete: rc = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jfs_umount(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.jfs_sb_info*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.jfs_log*, align 8
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %10 = load %struct.super_block*, %struct.super_block** %2, align 8
  %11 = call %struct.jfs_sb_info* @JFS_SBI(%struct.super_block* %10)
  store %struct.jfs_sb_info* %11, %struct.jfs_sb_info** %3, align 8
  %12 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %3, align 8
  %13 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %12, i32 0, i32 5
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %4, align 8
  %15 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %3, align 8
  %16 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %15, i32 0, i32 1
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %5, align 8
  %18 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %3, align 8
  %19 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %18, i32 0, i32 2
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %6, align 8
  %21 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %3, align 8
  %22 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %21, i32 0, i32 3
  %23 = load %struct.inode*, %struct.inode** %22, align 8
  store %struct.inode* %23, %struct.inode** %7, align 8
  store i32 0, i32* %9, align 4
  %24 = load %struct.super_block*, %struct.super_block** %2, align 8
  %25 = ptrtoint %struct.super_block* %24 to i32
  %26 = call i32 @jfs_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %3, align 8
  %28 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %27, i32 0, i32 4
  %29 = load %struct.jfs_log*, %struct.jfs_log** %28, align 8
  store %struct.jfs_log* %29, %struct.jfs_log** %8, align 8
  %30 = icmp ne %struct.jfs_log* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load %struct.jfs_log*, %struct.jfs_log** %8, align 8
  %33 = call i32 @jfs_flush_journal(%struct.jfs_log* %32, i32 2)
  br label %34

34:                                               ; preds = %31, %1
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = call i32 @diUnmount(%struct.inode* %35, i32 0)
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = call i32 @diFreeSpecial(%struct.inode* %37)
  %39 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %3, align 8
  %40 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %39, i32 0, i32 1
  store %struct.inode* null, %struct.inode** %40, align 8
  %41 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %3, align 8
  %42 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %41, i32 0, i32 3
  %43 = load %struct.inode*, %struct.inode** %42, align 8
  store %struct.inode* %43, %struct.inode** %7, align 8
  %44 = load %struct.inode*, %struct.inode** %7, align 8
  %45 = icmp ne %struct.inode* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %34
  %47 = load %struct.inode*, %struct.inode** %7, align 8
  %48 = call i32 @diUnmount(%struct.inode* %47, i32 0)
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = call i32 @diFreeSpecial(%struct.inode* %49)
  %51 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %3, align 8
  %52 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %51, i32 0, i32 3
  store %struct.inode* null, %struct.inode** %52, align 8
  br label %53

53:                                               ; preds = %46, %34
  %54 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %3, align 8
  %55 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %54, i32 0, i32 2
  %56 = load %struct.inode*, %struct.inode** %55, align 8
  store %struct.inode* %56, %struct.inode** %6, align 8
  %57 = load %struct.inode*, %struct.inode** %6, align 8
  %58 = call i32 @diUnmount(%struct.inode* %57, i32 0)
  %59 = load %struct.inode*, %struct.inode** %6, align 8
  %60 = call i32 @diFreeSpecial(%struct.inode* %59)
  %61 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %3, align 8
  %62 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %61, i32 0, i32 2
  store %struct.inode* null, %struct.inode** %62, align 8
  %63 = load %struct.inode*, %struct.inode** %4, align 8
  %64 = call i32 @dbUnmount(%struct.inode* %63, i32 0)
  %65 = load %struct.inode*, %struct.inode** %4, align 8
  %66 = call i32 @diFreeSpecial(%struct.inode* %65)
  %67 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %3, align 8
  %68 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %67, i32 0, i32 1
  store %struct.inode* null, %struct.inode** %68, align 8
  %69 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %3, align 8
  %70 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @filemap_write_and_wait(i32 %73)
  %75 = load %struct.jfs_log*, %struct.jfs_log** %8, align 8
  %76 = icmp ne %struct.jfs_log* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %53
  %78 = load %struct.super_block*, %struct.super_block** %2, align 8
  %79 = load i32, i32* @FM_CLEAN, align 4
  %80 = call i32 @updateSuper(%struct.super_block* %78, i32 %79)
  %81 = load %struct.super_block*, %struct.super_block** %2, align 8
  %82 = call i32 @lmLogClose(%struct.super_block* %81)
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %77, %53
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @jfs_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %9, align 4
  ret i32 %86
}

declare dso_local %struct.jfs_sb_info* @JFS_SBI(%struct.super_block*) #1

declare dso_local i32 @jfs_info(i8*, i32) #1

declare dso_local i32 @jfs_flush_journal(%struct.jfs_log*, i32) #1

declare dso_local i32 @diUnmount(%struct.inode*, i32) #1

declare dso_local i32 @diFreeSpecial(%struct.inode*) #1

declare dso_local i32 @dbUnmount(%struct.inode*, i32) #1

declare dso_local i32 @filemap_write_and_wait(i32) #1

declare dso_local i32 @updateSuper(%struct.super_block*, i32) #1

declare dso_local i32 @lmLogClose(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
