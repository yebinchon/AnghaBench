; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_defer.c_xfs_defer_finish.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_defer.c_xfs_defer_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32, i32 }

@XFS_TRANS_DIRTY = common dso_local global i32 0, align 4
@SHUTDOWN_CORRUPT_INCORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_defer_finish(%struct.xfs_trans** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_trans**, align 8
  %4 = alloca i32, align 4
  store %struct.xfs_trans** %0, %struct.xfs_trans*** %3, align 8
  %5 = load %struct.xfs_trans**, %struct.xfs_trans*** %3, align 8
  %6 = call i32 @xfs_defer_finish_noroll(%struct.xfs_trans** %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %37

11:                                               ; preds = %1
  %12 = load %struct.xfs_trans**, %struct.xfs_trans*** %3, align 8
  %13 = load %struct.xfs_trans*, %struct.xfs_trans** %12, align 8
  %14 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @XFS_TRANS_DIRTY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %11
  %20 = load %struct.xfs_trans**, %struct.xfs_trans*** %3, align 8
  %21 = call i32 @xfs_defer_trans_roll(%struct.xfs_trans** %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.xfs_trans**, %struct.xfs_trans*** %3, align 8
  %26 = load %struct.xfs_trans*, %struct.xfs_trans** %25, align 8
  %27 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SHUTDOWN_CORRUPT_INCORE, align 4
  %30 = call i32 @xfs_force_shutdown(i32 %28, i32 %29)
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %37

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32, %11
  %34 = load %struct.xfs_trans**, %struct.xfs_trans*** %3, align 8
  %35 = load %struct.xfs_trans*, %struct.xfs_trans** %34, align 8
  %36 = call i32 @xfs_defer_reset(%struct.xfs_trans* %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %33, %24, %9
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @xfs_defer_finish_noroll(%struct.xfs_trans**) #1

declare dso_local i32 @xfs_defer_trans_roll(%struct.xfs_trans**) #1

declare dso_local i32 @xfs_force_shutdown(i32, i32) #1

declare dso_local i32 @xfs_defer_reset(%struct.xfs_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
