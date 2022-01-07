; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_dquot.c_xfs_trans_reserve_quota_bydquots.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_dquot.c_xfs_trans_reserve_quota_bydquots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32* }
%struct.xfs_mount = type { i32 }
%struct.xfs_dquot = type { i32 }

@XFS_QMOPT_RESBLK_MASK = common dso_local global i32 0, align 4
@XFS_QMOPT_ENOSPC = common dso_local global i32 0, align 4
@XFS_QMOPT_FORCE_RES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_trans_reserve_quota_bydquots(%struct.xfs_trans* %0, %struct.xfs_mount* %1, %struct.xfs_dquot* %2, %struct.xfs_dquot* %3, %struct.xfs_dquot* %4, i32 %5, i64 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.xfs_trans*, align 8
  %11 = alloca %struct.xfs_mount*, align 8
  %12 = alloca %struct.xfs_dquot*, align 8
  %13 = alloca %struct.xfs_dquot*, align 8
  %14 = alloca %struct.xfs_dquot*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.xfs_trans* %0, %struct.xfs_trans** %10, align 8
  store %struct.xfs_mount* %1, %struct.xfs_mount** %11, align 8
  store %struct.xfs_dquot* %2, %struct.xfs_dquot** %12, align 8
  store %struct.xfs_dquot* %3, %struct.xfs_dquot** %13, align 8
  store %struct.xfs_dquot* %4, %struct.xfs_dquot** %14, align 8
  store i32 %5, i32* %15, align 4
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %19 = load %struct.xfs_mount*, %struct.xfs_mount** %11, align 8
  %20 = call i32 @XFS_IS_QUOTA_RUNNING(%struct.xfs_mount* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %8
  %23 = load %struct.xfs_mount*, %struct.xfs_mount** %11, align 8
  %24 = call i32 @XFS_IS_QUOTA_ON(%struct.xfs_mount* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22, %8
  store i32 0, i32* %9, align 4
  br label %127

27:                                               ; preds = %22
  %28 = load %struct.xfs_trans*, %struct.xfs_trans** %10, align 8
  %29 = icmp ne %struct.xfs_trans* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load %struct.xfs_trans*, %struct.xfs_trans** %10, align 8
  %32 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.xfs_trans*, %struct.xfs_trans** %10, align 8
  %37 = call i32 @xfs_trans_alloc_dqinfo(%struct.xfs_trans* %36)
  br label %38

38:                                               ; preds = %35, %30, %27
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* @XFS_QMOPT_RESBLK_MASK, align 4
  %41 = and i32 %39, %40
  %42 = call i32 @ASSERT(i32 %41)
  %43 = load %struct.xfs_dquot*, %struct.xfs_dquot** %12, align 8
  %44 = icmp ne %struct.xfs_dquot* %43, null
  br i1 %44, label %45, label %61

45:                                               ; preds = %38
  %46 = load %struct.xfs_trans*, %struct.xfs_trans** %10, align 8
  %47 = load %struct.xfs_mount*, %struct.xfs_mount** %11, align 8
  %48 = load %struct.xfs_dquot*, %struct.xfs_dquot** %12, align 8
  %49 = load i32, i32* %15, align 4
  %50 = load i64, i64* %16, align 8
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* @XFS_QMOPT_ENOSPC, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  %55 = call i32 @xfs_trans_dqresv(%struct.xfs_trans* %46, %struct.xfs_mount* %47, %struct.xfs_dquot* %48, i32 %49, i64 %50, i32 %54)
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %18, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %45
  %59 = load i32, i32* %18, align 4
  store i32 %59, i32* %9, align 4
  br label %127

60:                                               ; preds = %45
  br label %61

61:                                               ; preds = %60, %38
  %62 = load %struct.xfs_dquot*, %struct.xfs_dquot** %13, align 8
  %63 = icmp ne %struct.xfs_dquot* %62, null
  br i1 %63, label %64, label %76

64:                                               ; preds = %61
  %65 = load %struct.xfs_trans*, %struct.xfs_trans** %10, align 8
  %66 = load %struct.xfs_mount*, %struct.xfs_mount** %11, align 8
  %67 = load %struct.xfs_dquot*, %struct.xfs_dquot** %13, align 8
  %68 = load i32, i32* %15, align 4
  %69 = load i64, i64* %16, align 8
  %70 = load i32, i32* %17, align 4
  %71 = call i32 @xfs_trans_dqresv(%struct.xfs_trans* %65, %struct.xfs_mount* %66, %struct.xfs_dquot* %67, i32 %68, i64 %69, i32 %70)
  store i32 %71, i32* %18, align 4
  %72 = load i32, i32* %18, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %109

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75, %61
  %77 = load %struct.xfs_dquot*, %struct.xfs_dquot** %14, align 8
  %78 = icmp ne %struct.xfs_dquot* %77, null
  br i1 %78, label %79, label %91

79:                                               ; preds = %76
  %80 = load %struct.xfs_trans*, %struct.xfs_trans** %10, align 8
  %81 = load %struct.xfs_mount*, %struct.xfs_mount** %11, align 8
  %82 = load %struct.xfs_dquot*, %struct.xfs_dquot** %14, align 8
  %83 = load i32, i32* %15, align 4
  %84 = load i64, i64* %16, align 8
  %85 = load i32, i32* %17, align 4
  %86 = call i32 @xfs_trans_dqresv(%struct.xfs_trans* %80, %struct.xfs_mount* %81, %struct.xfs_dquot* %82, i32 %83, i64 %84, i32 %85)
  store i32 %86, i32* %18, align 4
  %87 = load i32, i32* %18, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  br label %92

90:                                               ; preds = %79
  br label %91

91:                                               ; preds = %90, %76
  store i32 0, i32* %9, align 4
  br label %127

92:                                               ; preds = %89
  %93 = load i32, i32* @XFS_QMOPT_FORCE_RES, align 4
  %94 = load i32, i32* %17, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %17, align 4
  %96 = load %struct.xfs_dquot*, %struct.xfs_dquot** %13, align 8
  %97 = icmp ne %struct.xfs_dquot* %96, null
  br i1 %97, label %98, label %108

98:                                               ; preds = %92
  %99 = load %struct.xfs_trans*, %struct.xfs_trans** %10, align 8
  %100 = load %struct.xfs_mount*, %struct.xfs_mount** %11, align 8
  %101 = load %struct.xfs_dquot*, %struct.xfs_dquot** %13, align 8
  %102 = load i32, i32* %15, align 4
  %103 = sub nsw i32 0, %102
  %104 = load i64, i64* %16, align 8
  %105 = sub nsw i64 0, %104
  %106 = load i32, i32* %17, align 4
  %107 = call i32 @xfs_trans_dqresv(%struct.xfs_trans* %99, %struct.xfs_mount* %100, %struct.xfs_dquot* %101, i32 %103, i64 %105, i32 %106)
  br label %108

108:                                              ; preds = %98, %92
  br label %109

109:                                              ; preds = %108, %74
  %110 = load i32, i32* @XFS_QMOPT_FORCE_RES, align 4
  %111 = load i32, i32* %17, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %17, align 4
  %113 = load %struct.xfs_dquot*, %struct.xfs_dquot** %12, align 8
  %114 = icmp ne %struct.xfs_dquot* %113, null
  br i1 %114, label %115, label %125

115:                                              ; preds = %109
  %116 = load %struct.xfs_trans*, %struct.xfs_trans** %10, align 8
  %117 = load %struct.xfs_mount*, %struct.xfs_mount** %11, align 8
  %118 = load %struct.xfs_dquot*, %struct.xfs_dquot** %12, align 8
  %119 = load i32, i32* %15, align 4
  %120 = sub nsw i32 0, %119
  %121 = load i64, i64* %16, align 8
  %122 = sub nsw i64 0, %121
  %123 = load i32, i32* %17, align 4
  %124 = call i32 @xfs_trans_dqresv(%struct.xfs_trans* %116, %struct.xfs_mount* %117, %struct.xfs_dquot* %118, i32 %120, i64 %122, i32 %123)
  br label %125

125:                                              ; preds = %115, %109
  %126 = load i32, i32* %18, align 4
  store i32 %126, i32* %9, align 4
  br label %127

127:                                              ; preds = %125, %91, %58, %26
  %128 = load i32, i32* %9, align 4
  ret i32 %128
}

declare dso_local i32 @XFS_IS_QUOTA_RUNNING(%struct.xfs_mount*) #1

declare dso_local i32 @XFS_IS_QUOTA_ON(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_trans_alloc_dqinfo(%struct.xfs_trans*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_trans_dqresv(%struct.xfs_trans*, %struct.xfs_mount*, %struct.xfs_dquot*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
