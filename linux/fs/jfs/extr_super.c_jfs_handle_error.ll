; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_super.c_jfs_handle_error.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_super.c_jfs_handle_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32 }
%struct.jfs_sb_info = type { i32 }

@FM_DIRTY = common dso_local global i32 0, align 4
@JFS_ERR_PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"JFS (device %s): panic forced after error\0A\00", align 1
@JFS_ERR_REMOUNT_RO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"ERROR: (device %s): remounting filesystem as read-only\00", align 1
@SB_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @jfs_handle_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jfs_handle_error(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.jfs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.jfs_sb_info* @JFS_SBI(%struct.super_block* %4)
  store %struct.jfs_sb_info* %5, %struct.jfs_sb_info** %3, align 8
  %6 = load %struct.super_block*, %struct.super_block** %2, align 8
  %7 = call i64 @sb_rdonly(%struct.super_block* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %43

10:                                               ; preds = %1
  %11 = load %struct.super_block*, %struct.super_block** %2, align 8
  %12 = load i32, i32* @FM_DIRTY, align 4
  %13 = call i32 @updateSuper(%struct.super_block* %11, i32 %12)
  %14 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %3, align 8
  %15 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @JFS_ERR_PANIC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %10
  %21 = load %struct.super_block*, %struct.super_block** %2, align 8
  %22 = getelementptr inbounds %struct.super_block, %struct.super_block* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %43

25:                                               ; preds = %10
  %26 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %3, align 8
  %27 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @JFS_ERR_REMOUNT_RO, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %25
  %33 = load %struct.super_block*, %struct.super_block** %2, align 8
  %34 = getelementptr inbounds %struct.super_block, %struct.super_block* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @jfs_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @SB_RDONLY, align 4
  %38 = load %struct.super_block*, %struct.super_block** %2, align 8
  %39 = getelementptr inbounds %struct.super_block, %struct.super_block* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %32, %25
  br label %43

43:                                               ; preds = %9, %42, %20
  ret void
}

declare dso_local %struct.jfs_sb_info* @JFS_SBI(%struct.super_block*) #1

declare dso_local i64 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @updateSuper(%struct.super_block*, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @jfs_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
