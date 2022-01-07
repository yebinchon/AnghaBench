; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_sb.c_xfs_sb_quota_to_disk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_sb.c_xfs_sb_quota_to_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_dsb = type { i8*, i8*, i8*, i8* }
%struct.xfs_sb = type { i32, i64, i64, i64 }

@XFS_PQUOTA_ENFD = common dso_local global i32 0, align 4
@XFS_PQUOTA_CHKD = common dso_local global i32 0, align 4
@XFS_GQUOTA_ENFD = common dso_local global i32 0, align 4
@XFS_GQUOTA_CHKD = common dso_local global i32 0, align 4
@XFS_OQUOTA_ENFD = common dso_local global i32 0, align 4
@XFS_OQUOTA_CHKD = common dso_local global i32 0, align 4
@XFS_GQUOTA_ACCT = common dso_local global i32 0, align 4
@XFS_PQUOTA_ACCT = common dso_local global i32 0, align 4
@NULLFSINO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_dsb*, %struct.xfs_sb*)* @xfs_sb_quota_to_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_sb_quota_to_disk(%struct.xfs_dsb* %0, %struct.xfs_sb* %1) #0 {
  %3 = alloca %struct.xfs_dsb*, align 8
  %4 = alloca %struct.xfs_sb*, align 8
  %5 = alloca i32, align 4
  store %struct.xfs_dsb* %0, %struct.xfs_dsb** %3, align 8
  store %struct.xfs_sb* %1, %struct.xfs_sb** %4, align 8
  %6 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %7 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %10 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = call i8* @cpu_to_be64(i64 %11)
  %13 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %14 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %13, i32 0, i32 3
  store i8* %12, i8** %14, align 8
  %15 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %16 = call i64 @xfs_sb_version_has_pquotino(%struct.xfs_sb* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %2
  %19 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %20 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @cpu_to_be16(i32 %21)
  %23 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %24 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %26 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call i8* @cpu_to_be64(i64 %27)
  %29 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %30 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %32 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = call i8* @cpu_to_be64(i64 %33)
  %35 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %36 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  br label %127

37:                                               ; preds = %2
  %38 = load i32, i32* @XFS_PQUOTA_ENFD, align 4
  %39 = load i32, i32* @XFS_PQUOTA_CHKD, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @XFS_GQUOTA_ENFD, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @XFS_GQUOTA_CHKD, align 4
  %44 = or i32 %42, %43
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %49 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @XFS_PQUOTA_ENFD, align 4
  %52 = load i32, i32* @XFS_GQUOTA_ENFD, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %37
  %57 = load i32, i32* @XFS_OQUOTA_ENFD, align 4
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %56, %37
  %61 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %62 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @XFS_PQUOTA_CHKD, align 4
  %65 = load i32, i32* @XFS_GQUOTA_CHKD, align 4
  %66 = or i32 %64, %65
  %67 = and i32 %63, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %60
  %70 = load i32, i32* @XFS_OQUOTA_CHKD, align 4
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %69, %60
  %74 = load i32, i32* %5, align 4
  %75 = call i8* @cpu_to_be16(i32 %74)
  %76 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %77 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  %78 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %79 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @XFS_GQUOTA_ACCT, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %73
  %85 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %86 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = call i8* @cpu_to_be64(i64 %87)
  %89 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %90 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  br label %124

91:                                               ; preds = %73
  %92 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %93 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @XFS_PQUOTA_ACCT, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %91
  %99 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %100 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = call i8* @cpu_to_be64(i64 %101)
  %103 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %104 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  br label %123

105:                                              ; preds = %91
  %106 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %107 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @NULLFSINO, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %105
  %112 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %113 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @NULLFSINO, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %111
  %118 = load i64, i64* @NULLFSINO, align 8
  %119 = call i8* @cpu_to_be64(i64 %118)
  %120 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %121 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %120, i32 0, i32 1
  store i8* %119, i8** %121, align 8
  br label %122

122:                                              ; preds = %117, %111, %105
  br label %123

123:                                              ; preds = %122, %98
  br label %124

124:                                              ; preds = %123, %84
  %125 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %126 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %125, i32 0, i32 0
  store i8* null, i8** %126, align 8
  br label %127

127:                                              ; preds = %124, %18
  ret void
}

declare dso_local i8* @cpu_to_be64(i64) #1

declare dso_local i64 @xfs_sb_version_has_pquotino(%struct.xfs_sb*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
