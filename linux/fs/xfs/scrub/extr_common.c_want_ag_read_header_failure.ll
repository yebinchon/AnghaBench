; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_common.c_want_ag_read_header_failure.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_common.c_want_ag_read_header_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@XFS_SCRUB_TYPE_AGF = common dso_local global i32 0, align 4
@XFS_SCRUB_TYPE_AGFL = common dso_local global i32 0, align 4
@XFS_SCRUB_TYPE_AGI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_scrub*, i32)* @want_ag_read_header_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @want_ag_read_header_failure(%struct.xfs_scrub* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_scrub*, align 8
  %5 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %7 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @XFS_SCRUB_TYPE_AGF, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %15 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @XFS_SCRUB_TYPE_AGFL, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %13
  %22 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %23 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @XFS_SCRUB_TYPE_AGI, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %40

30:                                               ; preds = %21, %13, %2
  %31 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %32 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %40

39:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %38, %29
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
