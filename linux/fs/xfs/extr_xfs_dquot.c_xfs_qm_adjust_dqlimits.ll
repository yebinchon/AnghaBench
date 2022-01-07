; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_dquot.c_xfs_qm_adjust_dqlimits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_dquot.c_xfs_qm_adjust_dqlimits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.xfs_quotainfo* }
%struct.xfs_quotainfo = type { i32 }
%struct.xfs_dquot = type { %struct.xfs_disk_dquot }
%struct.xfs_disk_dquot = type { i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.xfs_def_quota = type { i64, i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_qm_adjust_dqlimits(%struct.xfs_mount* %0, %struct.xfs_dquot* %1) #0 {
  %3 = alloca %struct.xfs_mount*, align 8
  %4 = alloca %struct.xfs_dquot*, align 8
  %5 = alloca %struct.xfs_quotainfo*, align 8
  %6 = alloca %struct.xfs_disk_dquot*, align 8
  %7 = alloca %struct.xfs_def_quota*, align 8
  %8 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %3, align 8
  store %struct.xfs_dquot* %1, %struct.xfs_dquot** %4, align 8
  %9 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %10 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %9, i32 0, i32 0
  %11 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %10, align 8
  store %struct.xfs_quotainfo* %11, %struct.xfs_quotainfo** %5, align 8
  %12 = load %struct.xfs_dquot*, %struct.xfs_dquot** %4, align 8
  %13 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %12, i32 0, i32 0
  store %struct.xfs_disk_dquot* %13, %struct.xfs_disk_dquot** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %6, align 8
  %15 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load %struct.xfs_dquot*, %struct.xfs_dquot** %4, align 8
  %19 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %5, align 8
  %20 = call %struct.xfs_def_quota* @xfs_get_defquota(%struct.xfs_dquot* %18, %struct.xfs_quotainfo* %19)
  store %struct.xfs_def_quota* %20, %struct.xfs_def_quota** %7, align 8
  %21 = load %struct.xfs_def_quota*, %struct.xfs_def_quota** %7, align 8
  %22 = getelementptr inbounds %struct.xfs_def_quota, %struct.xfs_def_quota* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %2
  %26 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %6, align 8
  %27 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %26, i32 0, i32 5
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = load %struct.xfs_def_quota*, %struct.xfs_def_quota** %7, align 8
  %32 = getelementptr inbounds %struct.xfs_def_quota, %struct.xfs_def_quota* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = call i8* @cpu_to_be64(i64 %33)
  %35 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %6, align 8
  %36 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %35, i32 0, i32 5
  store i8* %34, i8** %36, align 8
  store i32 1, i32* %8, align 4
  br label %37

37:                                               ; preds = %30, %25, %2
  %38 = load %struct.xfs_def_quota*, %struct.xfs_def_quota** %7, align 8
  %39 = getelementptr inbounds %struct.xfs_def_quota, %struct.xfs_def_quota* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %6, align 8
  %44 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %43, i32 0, i32 4
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %42
  %48 = load %struct.xfs_def_quota*, %struct.xfs_def_quota** %7, align 8
  %49 = getelementptr inbounds %struct.xfs_def_quota, %struct.xfs_def_quota* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = call i8* @cpu_to_be64(i64 %50)
  %52 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %6, align 8
  %53 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  store i32 1, i32* %8, align 4
  br label %54

54:                                               ; preds = %47, %42, %37
  %55 = load %struct.xfs_def_quota*, %struct.xfs_def_quota** %7, align 8
  %56 = getelementptr inbounds %struct.xfs_def_quota, %struct.xfs_def_quota* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %54
  %60 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %6, align 8
  %61 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %60, i32 0, i32 3
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %59
  %65 = load %struct.xfs_def_quota*, %struct.xfs_def_quota** %7, align 8
  %66 = getelementptr inbounds %struct.xfs_def_quota, %struct.xfs_def_quota* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = call i8* @cpu_to_be64(i64 %67)
  %69 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %6, align 8
  %70 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %64, %59, %54
  %72 = load %struct.xfs_def_quota*, %struct.xfs_def_quota** %7, align 8
  %73 = getelementptr inbounds %struct.xfs_def_quota, %struct.xfs_def_quota* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %71
  %77 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %6, align 8
  %78 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %88, label %81

81:                                               ; preds = %76
  %82 = load %struct.xfs_def_quota*, %struct.xfs_def_quota** %7, align 8
  %83 = getelementptr inbounds %struct.xfs_def_quota, %struct.xfs_def_quota* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = call i8* @cpu_to_be64(i64 %84)
  %86 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %6, align 8
  %87 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %86, i32 0, i32 2
  store i8* %85, i8** %87, align 8
  br label %88

88:                                               ; preds = %81, %76, %71
  %89 = load %struct.xfs_def_quota*, %struct.xfs_def_quota** %7, align 8
  %90 = getelementptr inbounds %struct.xfs_def_quota, %struct.xfs_def_quota* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %88
  %94 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %6, align 8
  %95 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %105, label %98

98:                                               ; preds = %93
  %99 = load %struct.xfs_def_quota*, %struct.xfs_def_quota** %7, align 8
  %100 = getelementptr inbounds %struct.xfs_def_quota, %struct.xfs_def_quota* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i8* @cpu_to_be64(i64 %101)
  %103 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %6, align 8
  %104 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  br label %105

105:                                              ; preds = %98, %93, %88
  %106 = load %struct.xfs_def_quota*, %struct.xfs_def_quota** %7, align 8
  %107 = getelementptr inbounds %struct.xfs_def_quota, %struct.xfs_def_quota* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %105
  %111 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %6, align 8
  %112 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %122, label %115

115:                                              ; preds = %110
  %116 = load %struct.xfs_def_quota*, %struct.xfs_def_quota** %7, align 8
  %117 = getelementptr inbounds %struct.xfs_def_quota, %struct.xfs_def_quota* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i8* @cpu_to_be64(i64 %118)
  %120 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %6, align 8
  %121 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %120, i32 0, i32 0
  store i8* %119, i8** %121, align 8
  br label %122

122:                                              ; preds = %115, %110, %105
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load %struct.xfs_dquot*, %struct.xfs_dquot** %4, align 8
  %127 = call i32 @xfs_dquot_set_prealloc_limits(%struct.xfs_dquot* %126)
  br label %128

128:                                              ; preds = %125, %122
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.xfs_def_quota* @xfs_get_defquota(%struct.xfs_dquot*, %struct.xfs_quotainfo*) #1

declare dso_local i8* @cpu_to_be64(i64) #1

declare dso_local i32 @xfs_dquot_set_prealloc_limits(%struct.xfs_dquot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
