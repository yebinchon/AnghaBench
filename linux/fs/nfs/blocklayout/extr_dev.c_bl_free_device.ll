; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_dev.c_bl_free_device.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_dev.c_bl_free_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_block_dev = type { i32, %struct.TYPE_7__*, i32, i64, %struct.pnfs_block_dev* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.pr_ops* }
%struct.pr_ops = type { i32 (%struct.TYPE_7__*, i32, i32, i32)* }

@.str = private unnamed_addr constant [30 x i8] c"failed to unregister PR key.\0A\00", align 1
@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnfs_block_dev*)* @bl_free_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bl_free_device(%struct.pnfs_block_dev* %0) #0 {
  %2 = alloca %struct.pnfs_block_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pr_ops*, align 8
  %5 = alloca i32, align 4
  store %struct.pnfs_block_dev* %0, %struct.pnfs_block_dev** %2, align 8
  %6 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %2, align 8
  %7 = getelementptr inbounds %struct.pnfs_block_dev, %struct.pnfs_block_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %24, %10
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %2, align 8
  %14 = getelementptr inbounds %struct.pnfs_block_dev, %struct.pnfs_block_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %11
  %18 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %2, align 8
  %19 = getelementptr inbounds %struct.pnfs_block_dev, %struct.pnfs_block_dev* %18, i32 0, i32 4
  %20 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.pnfs_block_dev, %struct.pnfs_block_dev* %20, i64 %22
  call void @bl_free_device(%struct.pnfs_block_dev* %23)
  br label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %11

27:                                               ; preds = %11
  %28 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %2, align 8
  %29 = getelementptr inbounds %struct.pnfs_block_dev, %struct.pnfs_block_dev* %28, i32 0, i32 4
  %30 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %29, align 8
  %31 = call i32 @kfree(%struct.pnfs_block_dev* %30)
  br label %76

32:                                               ; preds = %1
  %33 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %2, align 8
  %34 = getelementptr inbounds %struct.pnfs_block_dev, %struct.pnfs_block_dev* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %32
  %38 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %2, align 8
  %39 = getelementptr inbounds %struct.pnfs_block_dev, %struct.pnfs_block_dev* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.pr_ops*, %struct.pr_ops** %45, align 8
  store %struct.pr_ops* %46, %struct.pr_ops** %4, align 8
  %47 = load %struct.pr_ops*, %struct.pr_ops** %4, align 8
  %48 = getelementptr inbounds %struct.pr_ops, %struct.pr_ops* %47, i32 0, i32 0
  %49 = load i32 (%struct.TYPE_7__*, i32, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32, i32)** %48, align 8
  %50 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %2, align 8
  %51 = getelementptr inbounds %struct.pnfs_block_dev, %struct.pnfs_block_dev* %50, i32 0, i32 1
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %2, align 8
  %54 = getelementptr inbounds %struct.pnfs_block_dev, %struct.pnfs_block_dev* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 %49(%struct.TYPE_7__* %52, i32 %55, i32 0, i32 0)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %37
  %60 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %37
  br label %62

62:                                               ; preds = %61, %32
  %63 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %2, align 8
  %64 = getelementptr inbounds %struct.pnfs_block_dev, %struct.pnfs_block_dev* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = icmp ne %struct.TYPE_7__* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %2, align 8
  %69 = getelementptr inbounds %struct.pnfs_block_dev, %struct.pnfs_block_dev* %68, i32 0, i32 1
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = load i32, i32* @FMODE_READ, align 4
  %72 = load i32, i32* @FMODE_WRITE, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @blkdev_put(%struct.TYPE_7__* %70, i32 %73)
  br label %75

75:                                               ; preds = %67, %62
  br label %76

76:                                               ; preds = %75, %27
  ret void
}

declare dso_local i32 @kfree(%struct.pnfs_block_dev*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @blkdev_put(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
