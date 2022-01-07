; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_dev.c_bl_parse_slice.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_dev.c_bl_parse_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32 }
%struct.pnfs_block_dev = type { i32, i32 }
%struct.pnfs_block_volume = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*, %struct.pnfs_block_dev*, %struct.pnfs_block_volume*, i32, i32)* @bl_parse_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bl_parse_slice(%struct.nfs_server* %0, %struct.pnfs_block_dev* %1, %struct.pnfs_block_volume* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfs_server*, align 8
  %8 = alloca %struct.pnfs_block_dev*, align 8
  %9 = alloca %struct.pnfs_block_volume*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pnfs_block_volume*, align 8
  %13 = alloca i32, align 4
  store %struct.nfs_server* %0, %struct.nfs_server** %7, align 8
  store %struct.pnfs_block_dev* %1, %struct.pnfs_block_dev** %8, align 8
  store %struct.pnfs_block_volume* %2, %struct.pnfs_block_volume** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %9, align 8
  %15 = load i32, i32* %10, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %14, i64 %16
  store %struct.pnfs_block_volume* %17, %struct.pnfs_block_volume** %12, align 8
  %18 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %19 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %8, align 8
  %20 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %9, align 8
  %21 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %12, align 8
  %22 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @bl_parse_deviceid(%struct.nfs_server* %18, %struct.pnfs_block_dev* %19, %struct.pnfs_block_volume* %20, i32 %24, i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %6, align 4
  br label %44

31:                                               ; preds = %5
  %32 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %12, align 8
  %33 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %8, align 8
  %37 = getelementptr inbounds %struct.pnfs_block_dev, %struct.pnfs_block_dev* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %12, align 8
  %39 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %8, align 8
  %43 = getelementptr inbounds %struct.pnfs_block_dev, %struct.pnfs_block_dev* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %31, %29
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @bl_parse_deviceid(%struct.nfs_server*, %struct.pnfs_block_dev*, %struct.pnfs_block_volume*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
