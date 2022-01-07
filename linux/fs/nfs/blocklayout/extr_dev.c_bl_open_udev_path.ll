; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_dev.c_bl_open_udev_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_dev.c_bl_open_udev_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.pnfs_block_volume = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"/dev/disk/by-id/wwn-0x%*phN\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"pNFS: failed to open device %s (%ld)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block_device* (%struct.pnfs_block_volume*)* @bl_open_udev_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block_device* @bl_open_udev_path(%struct.pnfs_block_volume* %0) #0 {
  %2 = alloca %struct.block_device*, align 8
  %3 = alloca %struct.pnfs_block_volume*, align 8
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca i8*, align 8
  store %struct.pnfs_block_volume* %0, %struct.pnfs_block_volume** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %3, align 8
  %8 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %3, align 8
  %12 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @kasprintf(i32 %6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %14)
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.block_device* @ERR_PTR(i32 %20)
  store %struct.block_device* %21, %struct.block_device** %2, align 8
  br label %40

22:                                               ; preds = %1
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* @FMODE_READ, align 4
  %25 = load i32, i32* @FMODE_WRITE, align 4
  %26 = or i32 %24, %25
  %27 = call %struct.block_device* @blkdev_get_by_path(i8* %23, i32 %26, i32* null)
  store %struct.block_device* %27, %struct.block_device** %4, align 8
  %28 = load %struct.block_device*, %struct.block_device** %4, align 8
  %29 = call i64 @IS_ERR(%struct.block_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.block_device*, %struct.block_device** %4, align 8
  %34 = call i32 @PTR_ERR(%struct.block_device* %33)
  %35 = call i32 @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %32, i32 %34)
  br label %36

36:                                               ; preds = %31, %22
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @kfree(i8* %37)
  %39 = load %struct.block_device*, %struct.block_device** %4, align 8
  store %struct.block_device* %39, %struct.block_device** %2, align 8
  br label %40

40:                                               ; preds = %36, %18
  %41 = load %struct.block_device*, %struct.block_device** %2, align 8
  ret %struct.block_device* %41
}

declare dso_local i8* @kasprintf(i32, i8*, i32, i32) #1

declare dso_local %struct.block_device* @ERR_PTR(i32) #1

declare dso_local %struct.block_device* @blkdev_get_by_path(i8*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.block_device*) #1

declare dso_local i32 @pr_warn(i8*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.block_device*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
