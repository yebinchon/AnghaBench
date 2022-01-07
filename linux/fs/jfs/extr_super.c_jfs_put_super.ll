; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_super.c_jfs_put_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_super.c_jfs_put_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.jfs_sb_info = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"In jfs_put_super\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"jfs_umount failed with return code %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @jfs_put_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jfs_put_super(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.jfs_sb_info*, align 8
  %4 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = call %struct.jfs_sb_info* @JFS_SBI(%struct.super_block* %5)
  store %struct.jfs_sb_info* %6, %struct.jfs_sb_info** %3, align 8
  %7 = call i32 @jfs_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.super_block*, %struct.super_block** %2, align 8
  %9 = call i32 @jfs_quota_off_umount(%struct.super_block* %8)
  %10 = load %struct.super_block*, %struct.super_block** %2, align 8
  %11 = call i32 @jfs_umount(%struct.super_block* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @jfs_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %3, align 8
  %19 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @unload_nls(i32 %20)
  %22 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %3, align 8
  %23 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @truncate_inode_pages(i32 %26, i32 0)
  %28 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %3, align 8
  %29 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = call i32 @iput(%struct.TYPE_2__* %30)
  %32 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %3, align 8
  %33 = call i32 @kfree(%struct.jfs_sb_info* %32)
  ret void
}

declare dso_local %struct.jfs_sb_info* @JFS_SBI(%struct.super_block*) #1

declare dso_local i32 @jfs_info(i8*) #1

declare dso_local i32 @jfs_quota_off_umount(%struct.super_block*) #1

declare dso_local i32 @jfs_umount(%struct.super_block*) #1

declare dso_local i32 @jfs_err(i8*, i32) #1

declare dso_local i32 @unload_nls(i32) #1

declare dso_local i32 @truncate_inode_pages(i32, i32) #1

declare dso_local i32 @iput(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.jfs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
