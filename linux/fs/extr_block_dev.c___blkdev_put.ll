; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_block_dev.c___blkdev_put.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_block_dev.c___blkdev_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32, %struct.block_device*, %struct.gendisk*, i32*, i32, i32, i32 }
%struct.gendisk = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.gendisk*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.block_device*, i32, i32)* @__blkdev_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__blkdev_put(%struct.block_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gendisk*, align 8
  %8 = alloca %struct.block_device*, align 8
  store %struct.block_device* %0, %struct.block_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.block_device*, %struct.block_device** %4, align 8
  %10 = getelementptr inbounds %struct.block_device, %struct.block_device* %9, i32 0, i32 2
  %11 = load %struct.gendisk*, %struct.gendisk** %10, align 8
  store %struct.gendisk* %11, %struct.gendisk** %7, align 8
  store %struct.block_device* null, %struct.block_device** %8, align 8
  %12 = load %struct.block_device*, %struct.block_device** %4, align 8
  %13 = getelementptr inbounds %struct.block_device, %struct.block_device* %12, i32 0, i32 0
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @mutex_lock_nested(i32* %13, i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.block_device*, %struct.block_device** %4, align 8
  %20 = getelementptr inbounds %struct.block_device, %struct.block_device* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 8
  br label %23

23:                                               ; preds = %18, %3
  %24 = load %struct.block_device*, %struct.block_device** %4, align 8
  %25 = getelementptr inbounds %struct.block_device, %struct.block_device* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %23
  %30 = load %struct.block_device*, %struct.block_device** %4, align 8
  %31 = getelementptr inbounds %struct.block_device, %struct.block_device* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @WARN_ON_ONCE(i32 %32)
  %34 = load %struct.block_device*, %struct.block_device** %4, align 8
  %35 = call i32 @sync_blockdev(%struct.block_device* %34)
  %36 = load %struct.block_device*, %struct.block_device** %4, align 8
  %37 = call i32 @kill_bdev(%struct.block_device* %36)
  %38 = load %struct.block_device*, %struct.block_device** %4, align 8
  %39 = call i32 @bdev_write_inode(%struct.block_device* %38)
  br label %40

40:                                               ; preds = %29, %23
  %41 = load %struct.block_device*, %struct.block_device** %4, align 8
  %42 = getelementptr inbounds %struct.block_device, %struct.block_device* %41, i32 0, i32 1
  %43 = load %struct.block_device*, %struct.block_device** %42, align 8
  %44 = load %struct.block_device*, %struct.block_device** %4, align 8
  %45 = icmp eq %struct.block_device* %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %40
  %47 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %48 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32 (%struct.gendisk*, i32)*, i32 (%struct.gendisk*, i32)** %50, align 8
  %52 = icmp ne i32 (%struct.gendisk*, i32)* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %46
  %54 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %55 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32 (%struct.gendisk*, i32)*, i32 (%struct.gendisk*, i32)** %57, align 8
  %59 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 %58(%struct.gendisk* %59, i32 %60)
  br label %62

62:                                               ; preds = %53, %46
  br label %63

63:                                               ; preds = %62, %40
  %64 = load %struct.block_device*, %struct.block_device** %4, align 8
  %65 = getelementptr inbounds %struct.block_device, %struct.block_device* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %91, label %68

68:                                               ; preds = %63
  %69 = load %struct.block_device*, %struct.block_device** %4, align 8
  %70 = getelementptr inbounds %struct.block_device, %struct.block_device* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @disk_put_part(i32* %71)
  %73 = load %struct.block_device*, %struct.block_device** %4, align 8
  %74 = getelementptr inbounds %struct.block_device, %struct.block_device* %73, i32 0, i32 3
  store i32* null, i32** %74, align 8
  %75 = load %struct.block_device*, %struct.block_device** %4, align 8
  %76 = getelementptr inbounds %struct.block_device, %struct.block_device* %75, i32 0, i32 2
  store %struct.gendisk* null, %struct.gendisk** %76, align 8
  %77 = load %struct.block_device*, %struct.block_device** %4, align 8
  %78 = load %struct.block_device*, %struct.block_device** %4, align 8
  %79 = getelementptr inbounds %struct.block_device, %struct.block_device* %78, i32 0, i32 1
  %80 = load %struct.block_device*, %struct.block_device** %79, align 8
  %81 = icmp ne %struct.block_device* %77, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %68
  %83 = load %struct.block_device*, %struct.block_device** %4, align 8
  %84 = getelementptr inbounds %struct.block_device, %struct.block_device* %83, i32 0, i32 1
  %85 = load %struct.block_device*, %struct.block_device** %84, align 8
  store %struct.block_device* %85, %struct.block_device** %8, align 8
  br label %86

86:                                               ; preds = %82, %68
  %87 = load %struct.block_device*, %struct.block_device** %4, align 8
  %88 = getelementptr inbounds %struct.block_device, %struct.block_device* %87, i32 0, i32 1
  store %struct.block_device* null, %struct.block_device** %88, align 8
  %89 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %90 = call i32 @put_disk_and_module(%struct.gendisk* %89)
  br label %91

91:                                               ; preds = %86, %63
  %92 = load %struct.block_device*, %struct.block_device** %4, align 8
  %93 = getelementptr inbounds %struct.block_device, %struct.block_device* %92, i32 0, i32 0
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load %struct.block_device*, %struct.block_device** %4, align 8
  %96 = call i32 @bdput(%struct.block_device* %95)
  %97 = load %struct.block_device*, %struct.block_device** %8, align 8
  %98 = icmp ne %struct.block_device* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %91
  %100 = load %struct.block_device*, %struct.block_device** %8, align 8
  %101 = load i32, i32* %5, align 4
  call void @__blkdev_put(%struct.block_device* %100, i32 %101, i32 1)
  br label %102

102:                                              ; preds = %99, %91
  ret void
}

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @sync_blockdev(%struct.block_device*) #1

declare dso_local i32 @kill_bdev(%struct.block_device*) #1

declare dso_local i32 @bdev_write_inode(%struct.block_device*) #1

declare dso_local i32 @disk_put_part(i32*) #1

declare dso_local i32 @put_disk_and_module(%struct.gendisk*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @bdput(%struct.block_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
