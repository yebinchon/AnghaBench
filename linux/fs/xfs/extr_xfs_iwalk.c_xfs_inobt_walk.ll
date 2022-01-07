; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_iwalk.c_xfs_inobt_walk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_iwalk.c_xfs_inobt_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.xfs_trans = type { i32 }
%struct.xfs_iwalk_ag = type { i8*, i32, i32, i32, i32, %struct.xfs_trans*, %struct.xfs_mount* }

@XFS_PWORK_SINGLE_THREADED = common dso_local global i32 0, align 4
@XFS_INOBT_WALK_FLAGS_ALL = common dso_local global i32 0, align 4
@XFS_INOBT_WALK_SAME_AG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_inobt_walk(%struct.xfs_mount* %0, %struct.xfs_trans* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.xfs_mount*, align 8
  %10 = alloca %struct.xfs_trans*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.xfs_iwalk_ag, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %9, align 8
  store %struct.xfs_trans* %1, %struct.xfs_trans** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %19 = getelementptr inbounds %struct.xfs_iwalk_ag, %struct.xfs_iwalk_ag* %16, i32 0, i32 0
  %20 = load i8*, i8** %15, align 8
  store i8* %20, i8** %19, align 8
  %21 = getelementptr inbounds %struct.xfs_iwalk_ag, %struct.xfs_iwalk_ag* %16, i32 0, i32 1
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.xfs_iwalk_ag, %struct.xfs_iwalk_ag* %16, i32 0, i32 2
  %24 = load i32, i32* @XFS_PWORK_SINGLE_THREADED, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.xfs_iwalk_ag, %struct.xfs_iwalk_ag* %16, i32 0, i32 3
  %26 = load i32, i32* %14, align 4
  %27 = call i32 @xfs_inobt_walk_prefetch(i32 %26)
  store i32 %27, i32* %25, align 8
  %28 = getelementptr inbounds %struct.xfs_iwalk_ag, %struct.xfs_iwalk_ag* %16, i32 0, i32 4
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.xfs_iwalk_ag, %struct.xfs_iwalk_ag* %16, i32 0, i32 5
  %31 = load %struct.xfs_trans*, %struct.xfs_trans** %10, align 8
  store %struct.xfs_trans* %31, %struct.xfs_trans** %30, align 8
  %32 = getelementptr inbounds %struct.xfs_iwalk_ag, %struct.xfs_iwalk_ag* %16, i32 0, i32 6
  %33 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  store %struct.xfs_mount* %33, %struct.xfs_mount** %32, align 8
  %34 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i64 @XFS_INO_TO_AGNO(%struct.xfs_mount* %34, i32 %35)
  store i64 %36, i64* %17, align 8
  %37 = load i64, i64* %17, align 8
  %38 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  %39 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %37, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @ASSERT(i32 %43)
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @XFS_INOBT_WALK_FLAGS_ALL, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @ASSERT(i32 %51)
  %53 = call i32 @xfs_iwalk_alloc(%struct.xfs_iwalk_ag* %16)
  store i32 %53, i32* %18, align 4
  %54 = load i32, i32* %18, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %7
  %57 = load i32, i32* %18, align 4
  store i32 %57, i32* %8, align 4
  br label %89

58:                                               ; preds = %7
  br label %59

59:                                               ; preds = %83, %58
  %60 = load i64, i64* %17, align 8
  %61 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  %62 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %60, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %59
  %67 = call i32 @xfs_iwalk_ag(%struct.xfs_iwalk_ag* %16)
  store i32 %67, i32* %18, align 4
  %68 = load i32, i32* %18, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %86

71:                                               ; preds = %66
  %72 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  %73 = load i64, i64* %17, align 8
  %74 = add nsw i64 %73, 1
  %75 = call i32 @XFS_AGINO_TO_INO(%struct.xfs_mount* %72, i64 %74, i32 0)
  %76 = getelementptr inbounds %struct.xfs_iwalk_ag, %struct.xfs_iwalk_ag* %16, i32 0, i32 1
  store i32 %75, i32* %76, align 8
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @XFS_INOBT_WALK_SAME_AG, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  br label %86

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %17, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %17, align 8
  br label %59

86:                                               ; preds = %81, %70, %59
  %87 = call i32 @xfs_iwalk_free(%struct.xfs_iwalk_ag* %16)
  %88 = load i32, i32* %18, align 4
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %86, %56
  %90 = load i32, i32* %8, align 4
  ret i32 %90
}

declare dso_local i32 @xfs_inobt_walk_prefetch(i32) #1

declare dso_local i64 @XFS_INO_TO_AGNO(%struct.xfs_mount*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_iwalk_alloc(%struct.xfs_iwalk_ag*) #1

declare dso_local i32 @xfs_iwalk_ag(%struct.xfs_iwalk_ag*) #1

declare dso_local i32 @XFS_AGINO_TO_INO(%struct.xfs_mount*, i64, i32) #1

declare dso_local i32 @xfs_iwalk_free(%struct.xfs_iwalk_ag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
