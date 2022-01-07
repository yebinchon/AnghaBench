; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_super.c_jfs_freeze.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_super.c_jfs_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.jfs_sb_info = type { %struct.jfs_log* }
%struct.jfs_log = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"lmLogShutdown failed\0A\00", align 1
@FM_CLEAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"jfs_freeze: updateSuper failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @jfs_freeze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jfs_freeze(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.jfs_sb_info*, align 8
  %5 = alloca %struct.jfs_log*, align 8
  %6 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %7 = load %struct.super_block*, %struct.super_block** %3, align 8
  %8 = call %struct.jfs_sb_info* @JFS_SBI(%struct.super_block* %7)
  store %struct.jfs_sb_info* %8, %struct.jfs_sb_info** %4, align 8
  %9 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %4, align 8
  %10 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %9, i32 0, i32 0
  %11 = load %struct.jfs_log*, %struct.jfs_log** %10, align 8
  store %struct.jfs_log* %11, %struct.jfs_log** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.super_block*, %struct.super_block** %3, align 8
  %13 = call i32 @sb_rdonly(%struct.super_block* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %1
  %16 = load %struct.super_block*, %struct.super_block** %3, align 8
  %17 = call i32 @txQuiesce(%struct.super_block* %16)
  %18 = load %struct.jfs_log*, %struct.jfs_log** %5, align 8
  %19 = call i32 @lmLogShutdown(%struct.jfs_log* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load %struct.super_block*, %struct.super_block** %3, align 8
  %24 = call i32 @jfs_error(%struct.super_block* %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.super_block*, %struct.super_block** %3, align 8
  %26 = call i32 @txResume(%struct.super_block* %25)
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %38

28:                                               ; preds = %15
  %29 = load %struct.super_block*, %struct.super_block** %3, align 8
  %30 = load i32, i32* @FM_CLEAN, align 4
  %31 = call i32 @updateSuper(%struct.super_block* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = call i32 @jfs_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %28
  br label %37

37:                                               ; preds = %36, %1
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %22
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.jfs_sb_info* @JFS_SBI(%struct.super_block*) #1

declare dso_local i32 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @txQuiesce(%struct.super_block*) #1

declare dso_local i32 @lmLogShutdown(%struct.jfs_log*) #1

declare dso_local i32 @jfs_error(%struct.super_block*, i8*) #1

declare dso_local i32 @txResume(%struct.super_block*) #1

declare dso_local i32 @updateSuper(%struct.super_block*, i32) #1

declare dso_local i32 @jfs_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
