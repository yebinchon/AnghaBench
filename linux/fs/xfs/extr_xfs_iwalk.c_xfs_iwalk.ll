; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_iwalk.c_xfs_iwalk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_iwalk.c_xfs_iwalk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.xfs_trans = type { i32 }
%struct.xfs_iwalk_ag = type { i8*, i32, i32, i32, i32, i32, i32, %struct.xfs_trans*, %struct.xfs_mount* }

@XFS_PWORK_SINGLE_THREADED = common dso_local global i32 0, align 4
@XFS_IWALK_FLAGS_ALL = common dso_local global i32 0, align 4
@XFS_INOBT_WALK_SAME_AG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_iwalk(%struct.xfs_mount* %0, %struct.xfs_trans* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6) #0 {
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
  store i32 1, i32* %21, align 8
  %22 = getelementptr inbounds %struct.xfs_iwalk_ag, %struct.xfs_iwalk_ag* %16, i32 0, i32 2
  store i32 1, i32* %22, align 4
  %23 = getelementptr inbounds %struct.xfs_iwalk_ag, %struct.xfs_iwalk_ag* %16, i32 0, i32 3
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.xfs_iwalk_ag, %struct.xfs_iwalk_ag* %16, i32 0, i32 4
  %26 = load i32, i32* @XFS_PWORK_SINGLE_THREADED, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.xfs_iwalk_ag, %struct.xfs_iwalk_ag* %16, i32 0, i32 5
  %28 = load i32, i32* %14, align 4
  %29 = call i32 @xfs_iwalk_prefetch(i32 %28)
  store i32 %29, i32* %27, align 8
  %30 = getelementptr inbounds %struct.xfs_iwalk_ag, %struct.xfs_iwalk_ag* %16, i32 0, i32 6
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds %struct.xfs_iwalk_ag, %struct.xfs_iwalk_ag* %16, i32 0, i32 7
  %33 = load %struct.xfs_trans*, %struct.xfs_trans** %10, align 8
  store %struct.xfs_trans* %33, %struct.xfs_trans** %32, align 8
  %34 = getelementptr inbounds %struct.xfs_iwalk_ag, %struct.xfs_iwalk_ag* %16, i32 0, i32 8
  %35 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  store %struct.xfs_mount* %35, %struct.xfs_mount** %34, align 8
  %36 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i64 @XFS_INO_TO_AGNO(%struct.xfs_mount* %36, i32 %37)
  store i64 %38, i64* %17, align 8
  %39 = load i64, i64* %17, align 8
  %40 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  %41 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %39, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @ASSERT(i32 %45)
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @XFS_IWALK_FLAGS_ALL, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @ASSERT(i32 %53)
  %55 = call i32 @xfs_iwalk_alloc(%struct.xfs_iwalk_ag* %16)
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %18, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %7
  %59 = load i32, i32* %18, align 4
  store i32 %59, i32* %8, align 4
  br label %91

60:                                               ; preds = %7
  br label %61

61:                                               ; preds = %85, %60
  %62 = load i64, i64* %17, align 8
  %63 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  %64 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %62, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %61
  %69 = call i32 @xfs_iwalk_ag(%struct.xfs_iwalk_ag* %16)
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* %18, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %88

73:                                               ; preds = %68
  %74 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  %75 = load i64, i64* %17, align 8
  %76 = add nsw i64 %75, 1
  %77 = call i32 @XFS_AGINO_TO_INO(%struct.xfs_mount* %74, i64 %76, i32 0)
  %78 = getelementptr inbounds %struct.xfs_iwalk_ag, %struct.xfs_iwalk_ag* %16, i32 0, i32 3
  store i32 %77, i32* %78, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @XFS_INOBT_WALK_SAME_AG, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  br label %88

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %17, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %17, align 8
  br label %61

88:                                               ; preds = %83, %72, %61
  %89 = call i32 @xfs_iwalk_free(%struct.xfs_iwalk_ag* %16)
  %90 = load i32, i32* %18, align 4
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %88, %58
  %92 = load i32, i32* %8, align 4
  ret i32 %92
}

declare dso_local i32 @xfs_iwalk_prefetch(i32) #1

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
