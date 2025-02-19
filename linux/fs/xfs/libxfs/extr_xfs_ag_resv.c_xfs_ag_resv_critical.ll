; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ag_resv.c_xfs_ag_resv_critical.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ag_resv.c_xfs_ag_resv_critical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_perag = type { i32, i32, i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@XFS_BTREE_MAXLEVELS = common dso_local global i32 0, align 4
@XFS_ERRTAG_AG_RESV_CRITICAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_ag_resv_critical(%struct.xfs_perag* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_perag*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xfs_perag* %0, %struct.xfs_perag** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %39 [
    i32 129, label %9
    i32 128, label %22
  ]

9:                                                ; preds = %2
  %10 = load %struct.xfs_perag*, %struct.xfs_perag** %4, align 8
  %11 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.xfs_perag*, %struct.xfs_perag** %4, align 8
  %14 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %12, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.xfs_perag*, %struct.xfs_perag** %4, align 8
  %19 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  br label %41

22:                                               ; preds = %2
  %23 = load %struct.xfs_perag*, %struct.xfs_perag** %4, align 8
  %24 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.xfs_perag*, %struct.xfs_perag** %4, align 8
  %27 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %25, %28
  %30 = load %struct.xfs_perag*, %struct.xfs_perag** %4, align 8
  %31 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %29, %33
  store i32 %34, i32* %6, align 4
  %35 = load %struct.xfs_perag*, %struct.xfs_perag** %4, align 8
  %36 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %7, align 4
  br label %41

39:                                               ; preds = %2
  %40 = call i32 @ASSERT(i32 0)
  store i32 0, i32* %3, align 4
  br label %62

41:                                               ; preds = %22, %9
  %42 = load %struct.xfs_perag*, %struct.xfs_perag** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @trace_xfs_ag_resv_critical(%struct.xfs_perag* %42, i32 %43, i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sdiv i32 %47, 10
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @XFS_BTREE_MAXLEVELS, align 4
  %53 = icmp slt i32 %51, %52
  br label %54

54:                                               ; preds = %50, %41
  %55 = phi i1 [ true, %41 ], [ %53, %50 ]
  %56 = zext i1 %55 to i32
  %57 = load %struct.xfs_perag*, %struct.xfs_perag** %4, align 8
  %58 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @XFS_ERRTAG_AG_RESV_CRITICAL, align 4
  %61 = call i32 @XFS_TEST_ERROR(i32 %56, i32 %59, i32 %60)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %54, %39
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @trace_xfs_ag_resv_critical(%struct.xfs_perag*, i32, i32) #1

declare dso_local i32 @XFS_TEST_ERROR(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
