; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_fsops.c_xfs_fs_goingdown.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_fsops.c_xfs_fs_goingdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.super_block = type { i32 }

@SHUTDOWN_FORCE_UMOUNT = common dso_local global i32 0, align 4
@SHUTDOWN_LOG_IO_ERROR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_fs_goingdown(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %41 [
    i32 130, label %8
    i32 129, label %31
    i32 128, label %35
  ]

8:                                                ; preds = %2
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.super_block* @freeze_bdev(i32 %13)
  store %struct.super_block* %14, %struct.super_block** %6, align 8
  %15 = load %struct.super_block*, %struct.super_block** %6, align 8
  %16 = icmp ne %struct.super_block* %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %8
  %18 = load %struct.super_block*, %struct.super_block** %6, align 8
  %19 = call i32 @IS_ERR(%struct.super_block* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = load i32, i32* @SHUTDOWN_FORCE_UMOUNT, align 4
  %24 = call i32 @xfs_force_shutdown(%struct.TYPE_6__* %22, i32 %23)
  %25 = load %struct.super_block*, %struct.super_block** %6, align 8
  %26 = getelementptr inbounds %struct.super_block, %struct.super_block* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.super_block*, %struct.super_block** %6, align 8
  %29 = call i32 @thaw_bdev(i32 %27, %struct.super_block* %28)
  br label %30

30:                                               ; preds = %21, %17, %8
  br label %44

31:                                               ; preds = %2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = load i32, i32* @SHUTDOWN_FORCE_UMOUNT, align 4
  %34 = call i32 @xfs_force_shutdown(%struct.TYPE_6__* %32, i32 %33)
  br label %44

35:                                               ; preds = %2
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = load i32, i32* @SHUTDOWN_FORCE_UMOUNT, align 4
  %38 = load i32, i32* @SHUTDOWN_LOG_IO_ERROR, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @xfs_force_shutdown(%struct.TYPE_6__* %36, i32 %39)
  br label %44

41:                                               ; preds = %2
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %45

44:                                               ; preds = %35, %31, %30
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %41
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.super_block* @freeze_bdev(i32) #1

declare dso_local i32 @IS_ERR(%struct.super_block*) #1

declare dso_local i32 @xfs_force_shutdown(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @thaw_bdev(i32, %struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
