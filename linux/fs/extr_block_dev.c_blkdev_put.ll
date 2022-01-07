; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_block_dev.c_blkdev_put.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_block_dev.c_blkdev_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i64, i32, i32, i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i64, i32* }

@FMODE_EXCL = common dso_local global i32 0, align 4
@bdev_lock = common dso_local global i32 0, align 4
@DISK_EVENT_MEDIA_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blkdev_put(%struct.block_device* %0, i32 %1) #0 {
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.block_device*, %struct.block_device** %3, align 8
  %7 = getelementptr inbounds %struct.block_device, %struct.block_device* %6, i32 0, i32 2
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @FMODE_EXCL, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %69

13:                                               ; preds = %2
  %14 = call i32 @spin_lock(i32* @bdev_lock)
  %15 = load %struct.block_device*, %struct.block_device** %3, align 8
  %16 = getelementptr inbounds %struct.block_device, %struct.block_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %16, align 8
  %19 = icmp slt i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON_ONCE(i32 %20)
  %22 = load %struct.block_device*, %struct.block_device** %3, align 8
  %23 = getelementptr inbounds %struct.block_device, %struct.block_device* %22, i32 0, i32 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %25, align 8
  %28 = icmp slt i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON_ONCE(i32 %29)
  %31 = load %struct.block_device*, %struct.block_device** %3, align 8
  %32 = getelementptr inbounds %struct.block_device, %struct.block_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %5, align 4
  br i1 %35, label %37, label %40

37:                                               ; preds = %13
  %38 = load %struct.block_device*, %struct.block_device** %3, align 8
  %39 = getelementptr inbounds %struct.block_device, %struct.block_device* %38, i32 0, i32 5
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %37, %13
  %41 = load %struct.block_device*, %struct.block_device** %3, align 8
  %42 = getelementptr inbounds %struct.block_device, %struct.block_device* %41, i32 0, i32 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %40
  %48 = load %struct.block_device*, %struct.block_device** %3, align 8
  %49 = getelementptr inbounds %struct.block_device, %struct.block_device* %48, i32 0, i32 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %47, %40
  %53 = call i32 @spin_unlock(i32* @bdev_lock)
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load %struct.block_device*, %struct.block_device** %3, align 8
  %58 = getelementptr inbounds %struct.block_device, %struct.block_device* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load %struct.block_device*, %struct.block_device** %3, align 8
  %63 = getelementptr inbounds %struct.block_device, %struct.block_device* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @disk_unblock_events(i32 %64)
  %66 = load %struct.block_device*, %struct.block_device** %3, align 8
  %67 = getelementptr inbounds %struct.block_device, %struct.block_device* %66, i32 0, i32 1
  store i32 0, i32* %67, align 8
  br label %68

68:                                               ; preds = %61, %56, %52
  br label %69

69:                                               ; preds = %68, %2
  %70 = load %struct.block_device*, %struct.block_device** %3, align 8
  %71 = getelementptr inbounds %struct.block_device, %struct.block_device* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @DISK_EVENT_MEDIA_CHANGE, align 4
  %74 = call i32 @disk_flush_events(i32 %72, i32 %73)
  %75 = load %struct.block_device*, %struct.block_device** %3, align 8
  %76 = getelementptr inbounds %struct.block_device, %struct.block_device* %75, i32 0, i32 2
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load %struct.block_device*, %struct.block_device** %3, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @__blkdev_put(%struct.block_device* %78, i32 %79, i32 0)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @disk_unblock_events(i32) #1

declare dso_local i32 @disk_flush_events(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @__blkdev_put(%struct.block_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
