; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_sb.c_xfs_sb_quota_from_disk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_sb.c_xfs_sb_quota_from_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_sb = type { i64, i64, i64, i32 }

@NULLFSINO = common dso_local global i64 0, align 8
@XFS_OQUOTA_ENFD = common dso_local global i32 0, align 4
@XFS_PQUOTA_ACCT = common dso_local global i32 0, align 4
@XFS_PQUOTA_ENFD = common dso_local global i32 0, align 4
@XFS_GQUOTA_ENFD = common dso_local global i32 0, align 4
@XFS_OQUOTA_CHKD = common dso_local global i32 0, align 4
@XFS_PQUOTA_CHKD = common dso_local global i32 0, align 4
@XFS_GQUOTA_CHKD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_sb_quota_from_disk(%struct.xfs_sb* %0) #0 {
  %2 = alloca %struct.xfs_sb*, align 8
  store %struct.xfs_sb* %0, %struct.xfs_sb** %2, align 8
  %3 = load %struct.xfs_sb*, %struct.xfs_sb** %2, align 8
  %4 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i64, i64* @NULLFSINO, align 8
  %9 = load %struct.xfs_sb*, %struct.xfs_sb** %2, align 8
  %10 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.xfs_sb*, %struct.xfs_sb** %2, align 8
  %13 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i64, i64* @NULLFSINO, align 8
  %18 = load %struct.xfs_sb*, %struct.xfs_sb** %2, align 8
  %19 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %16, %11
  %21 = load %struct.xfs_sb*, %struct.xfs_sb** %2, align 8
  %22 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i64, i64* @NULLFSINO, align 8
  %27 = load %struct.xfs_sb*, %struct.xfs_sb** %2, align 8
  %28 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %27, i32 0, i32 2
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %25, %20
  %30 = load %struct.xfs_sb*, %struct.xfs_sb** %2, align 8
  %31 = call i64 @xfs_sb_version_has_pquotino(%struct.xfs_sb* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %112

34:                                               ; preds = %29
  %35 = load %struct.xfs_sb*, %struct.xfs_sb** %2, align 8
  %36 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @XFS_OQUOTA_ENFD, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %34
  %42 = load %struct.xfs_sb*, %struct.xfs_sb** %2, align 8
  %43 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @XFS_PQUOTA_ACCT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @XFS_PQUOTA_ENFD, align 4
  br label %52

50:                                               ; preds = %41
  %51 = load i32, i32* @XFS_GQUOTA_ENFD, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = load %struct.xfs_sb*, %struct.xfs_sb** %2, align 8
  %55 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %52, %34
  %59 = load %struct.xfs_sb*, %struct.xfs_sb** %2, align 8
  %60 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @XFS_OQUOTA_CHKD, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %58
  %66 = load %struct.xfs_sb*, %struct.xfs_sb** %2, align 8
  %67 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @XFS_PQUOTA_ACCT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* @XFS_PQUOTA_CHKD, align 4
  br label %76

74:                                               ; preds = %65
  %75 = load i32, i32* @XFS_GQUOTA_CHKD, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  %78 = load %struct.xfs_sb*, %struct.xfs_sb** %2, align 8
  %79 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %76, %58
  %83 = load i32, i32* @XFS_OQUOTA_ENFD, align 4
  %84 = load i32, i32* @XFS_OQUOTA_CHKD, align 4
  %85 = or i32 %83, %84
  %86 = xor i32 %85, -1
  %87 = load %struct.xfs_sb*, %struct.xfs_sb** %2, align 8
  %88 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load %struct.xfs_sb*, %struct.xfs_sb** %2, align 8
  %92 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @XFS_PQUOTA_ACCT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %82
  %98 = load %struct.xfs_sb*, %struct.xfs_sb** %2, align 8
  %99 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @NULLFSINO, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %97
  %104 = load %struct.xfs_sb*, %struct.xfs_sb** %2, align 8
  %105 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.xfs_sb*, %struct.xfs_sb** %2, align 8
  %108 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %107, i32 0, i32 2
  store i64 %106, i64* %108, align 8
  %109 = load i64, i64* @NULLFSINO, align 8
  %110 = load %struct.xfs_sb*, %struct.xfs_sb** %2, align 8
  %111 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  br label %112

112:                                              ; preds = %33, %103, %97, %82
  ret void
}

declare dso_local i64 @xfs_sb_version_has_pquotino(%struct.xfs_sb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
