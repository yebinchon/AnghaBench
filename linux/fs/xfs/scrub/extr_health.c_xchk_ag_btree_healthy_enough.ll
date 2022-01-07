; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_health.c_xchk_ag_btree_healthy_enough.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_health.c_xchk_ag_btree_healthy_enough.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.xfs_perag = type { i32 }

@XFS_SCRUB_TYPE_BNOBT = common dso_local global i32 0, align 4
@XFS_SICK_AG_BNOBT = common dso_local global i32 0, align 4
@XFS_SCRUB_TYPE_CNTBT = common dso_local global i32 0, align 4
@XFS_SICK_AG_CNTBT = common dso_local global i32 0, align 4
@XFS_SCRUB_TYPE_INOBT = common dso_local global i32 0, align 4
@XFS_SICK_AG_INOBT = common dso_local global i32 0, align 4
@XFS_SCRUB_TYPE_FINOBT = common dso_local global i32 0, align 4
@XFS_SICK_AG_FINOBT = common dso_local global i32 0, align 4
@XFS_SCRUB_TYPE_RMAPBT = common dso_local global i32 0, align 4
@XFS_SICK_AG_RMAPBT = common dso_local global i32 0, align 4
@XFS_SCRUB_TYPE_REFCNTBT = common dso_local global i32 0, align 4
@XFS_SICK_AG_REFCNTBT = common dso_local global i32 0, align 4
@XFS_SCRUB_OFLAG_XFAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xchk_ag_btree_healthy_enough(%struct.xfs_scrub* %0, %struct.xfs_perag* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_scrub*, align 8
  %6 = alloca %struct.xfs_perag*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %5, align 8
  store %struct.xfs_perag* %1, %struct.xfs_perag** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  switch i32 %9, label %76 [
    i32 133, label %10
    i32 132, label %21
    i32 130, label %32
    i32 131, label %43
    i32 128, label %54
    i32 129, label %65
  ]

10:                                               ; preds = %3
  %11 = load %struct.xfs_scrub*, %struct.xfs_scrub** %5, align 8
  %12 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @XFS_SCRUB_TYPE_BNOBT, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i32 1, i32* %4, align 4
  br label %92

19:                                               ; preds = %10
  %20 = load i32, i32* @XFS_SICK_AG_BNOBT, align 4
  store i32 %20, i32* %8, align 4
  br label %78

21:                                               ; preds = %3
  %22 = load %struct.xfs_scrub*, %struct.xfs_scrub** %5, align 8
  %23 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @XFS_SCRUB_TYPE_CNTBT, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 1, i32* %4, align 4
  br label %92

30:                                               ; preds = %21
  %31 = load i32, i32* @XFS_SICK_AG_CNTBT, align 4
  store i32 %31, i32* %8, align 4
  br label %78

32:                                               ; preds = %3
  %33 = load %struct.xfs_scrub*, %struct.xfs_scrub** %5, align 8
  %34 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @XFS_SCRUB_TYPE_INOBT, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 1, i32* %4, align 4
  br label %92

41:                                               ; preds = %32
  %42 = load i32, i32* @XFS_SICK_AG_INOBT, align 4
  store i32 %42, i32* %8, align 4
  br label %78

43:                                               ; preds = %3
  %44 = load %struct.xfs_scrub*, %struct.xfs_scrub** %5, align 8
  %45 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @XFS_SCRUB_TYPE_FINOBT, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 1, i32* %4, align 4
  br label %92

52:                                               ; preds = %43
  %53 = load i32, i32* @XFS_SICK_AG_FINOBT, align 4
  store i32 %53, i32* %8, align 4
  br label %78

54:                                               ; preds = %3
  %55 = load %struct.xfs_scrub*, %struct.xfs_scrub** %5, align 8
  %56 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @XFS_SCRUB_TYPE_RMAPBT, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  store i32 1, i32* %4, align 4
  br label %92

63:                                               ; preds = %54
  %64 = load i32, i32* @XFS_SICK_AG_RMAPBT, align 4
  store i32 %64, i32* %8, align 4
  br label %78

65:                                               ; preds = %3
  %66 = load %struct.xfs_scrub*, %struct.xfs_scrub** %5, align 8
  %67 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @XFS_SCRUB_TYPE_REFCNTBT, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  store i32 1, i32* %4, align 4
  br label %92

74:                                               ; preds = %65
  %75 = load i32, i32* @XFS_SICK_AG_REFCNTBT, align 4
  store i32 %75, i32* %8, align 4
  br label %78

76:                                               ; preds = %3
  %77 = call i32 @ASSERT(i32 0)
  store i32 1, i32* %4, align 4
  br label %92

78:                                               ; preds = %74, %63, %52, %41, %30, %19
  %79 = load %struct.xfs_perag*, %struct.xfs_perag** %6, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i64 @xfs_ag_has_sickness(%struct.xfs_perag* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = load i32, i32* @XFS_SCRUB_OFLAG_XFAIL, align 4
  %85 = load %struct.xfs_scrub*, %struct.xfs_scrub** %5, align 8
  %86 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %84
  store i32 %90, i32* %88, align 4
  store i32 0, i32* %4, align 4
  br label %92

91:                                               ; preds = %78
  store i32 1, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %83, %76, %73, %62, %51, %40, %29, %18
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @xfs_ag_has_sickness(%struct.xfs_perag*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
