; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_block_dev.c_blkdev_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_block_dev.c_blkdev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, i32, i32, i32 }
%struct.block_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@O_LARGEFILE = common dso_local global i32 0, align 4
@FMODE_NOWAIT = common dso_local global i32 0, align 4
@O_NDELAY = common dso_local global i32 0, align 4
@FMODE_NDELAY = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@FMODE_EXCL = common dso_local global i32 0, align 4
@O_ACCMODE = common dso_local global i32 0, align 4
@FMODE_WRITE_IOCTL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @blkdev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkdev_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.block_device*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load i32, i32* @O_LARGEFILE, align 4
  %8 = load %struct.file*, %struct.file** %5, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = or i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @FMODE_NOWAIT, align 4
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.file*, %struct.file** %5, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @O_NDELAY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i32, i32* @FMODE_NDELAY, align 4
  %25 = load %struct.file*, %struct.file** %5, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %23, %2
  %30 = load %struct.file*, %struct.file** %5, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @O_EXCL, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load i32, i32* @FMODE_EXCL, align 4
  %38 = load %struct.file*, %struct.file** %5, align 8
  %39 = getelementptr inbounds %struct.file, %struct.file* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %36, %29
  %43 = load %struct.file*, %struct.file** %5, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @O_ACCMODE, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load i32, i32* @FMODE_WRITE_IOCTL, align 4
  %51 = load %struct.file*, %struct.file** %5, align 8
  %52 = getelementptr inbounds %struct.file, %struct.file* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %49, %42
  %56 = load %struct.inode*, %struct.inode** %4, align 8
  %57 = call %struct.block_device* @bd_acquire(%struct.inode* %56)
  store %struct.block_device* %57, %struct.block_device** %6, align 8
  %58 = load %struct.block_device*, %struct.block_device** %6, align 8
  %59 = icmp eq %struct.block_device* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %83

63:                                               ; preds = %55
  %64 = load %struct.block_device*, %struct.block_device** %6, align 8
  %65 = getelementptr inbounds %struct.block_device, %struct.block_device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.file*, %struct.file** %5, align 8
  %70 = getelementptr inbounds %struct.file, %struct.file* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load %struct.file*, %struct.file** %5, align 8
  %72 = getelementptr inbounds %struct.file, %struct.file* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @filemap_sample_wb_err(i32 %73)
  %75 = load %struct.file*, %struct.file** %5, align 8
  %76 = getelementptr inbounds %struct.file, %struct.file* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load %struct.block_device*, %struct.block_device** %6, align 8
  %78 = load %struct.file*, %struct.file** %5, align 8
  %79 = getelementptr inbounds %struct.file, %struct.file* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.file*, %struct.file** %5, align 8
  %82 = call i32 @blkdev_get(%struct.block_device* %77, i32 %80, %struct.file* %81)
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %63, %60
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.block_device* @bd_acquire(%struct.inode*) #1

declare dso_local i32 @filemap_sample_wb_err(i32) #1

declare dso_local i32 @blkdev_get(%struct.block_device*, i32, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
