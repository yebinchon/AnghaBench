; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ag.c_xfs_agiblock_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ag.c_xfs_agiblock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.xfs_buf = type { i32 }
%struct.aghdr_init_data = type { i32, i32 }
%struct.xfs_agi = type { i8**, i8*, i8*, i32, i8*, i8*, i64, i8*, i8*, i64, i8*, i8*, i8*, i8* }

@XFS_AGI_MAGIC = common dso_local global i32 0, align 4
@XFS_AGI_VERSION = common dso_local global i32 0, align 4
@NULLAGINO = common dso_local global i32 0, align 4
@XFS_AGI_UNLINKED_BUCKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_mount*, %struct.xfs_buf*, %struct.aghdr_init_data*)* @xfs_agiblock_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_agiblock_init(%struct.xfs_mount* %0, %struct.xfs_buf* %1, %struct.aghdr_init_data* %2) #0 {
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca %struct.xfs_buf*, align 8
  %6 = alloca %struct.aghdr_init_data*, align 8
  %7 = alloca %struct.xfs_agi*, align 8
  %8 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %4, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %5, align 8
  store %struct.aghdr_init_data* %2, %struct.aghdr_init_data** %6, align 8
  %9 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %10 = call %struct.xfs_agi* @XFS_BUF_TO_AGI(%struct.xfs_buf* %9)
  store %struct.xfs_agi* %10, %struct.xfs_agi** %7, align 8
  %11 = load i32, i32* @XFS_AGI_MAGIC, align 4
  %12 = call i8* @cpu_to_be32(i32 %11)
  %13 = load %struct.xfs_agi*, %struct.xfs_agi** %7, align 8
  %14 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %13, i32 0, i32 13
  store i8* %12, i8** %14, align 8
  %15 = load i32, i32* @XFS_AGI_VERSION, align 4
  %16 = call i8* @cpu_to_be32(i32 %15)
  %17 = load %struct.xfs_agi*, %struct.xfs_agi** %7, align 8
  %18 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %17, i32 0, i32 12
  store i8* %16, i8** %18, align 8
  %19 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %6, align 8
  %20 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @cpu_to_be32(i32 %21)
  %23 = load %struct.xfs_agi*, %struct.xfs_agi** %7, align 8
  %24 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %23, i32 0, i32 11
  store i8* %22, i8** %24, align 8
  %25 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %6, align 8
  %26 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @cpu_to_be32(i32 %27)
  %29 = load %struct.xfs_agi*, %struct.xfs_agi** %7, align 8
  %30 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %29, i32 0, i32 10
  store i8* %28, i8** %30, align 8
  %31 = load %struct.xfs_agi*, %struct.xfs_agi** %7, align 8
  %32 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %31, i32 0, i32 9
  store i64 0, i64* %32, align 8
  %33 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %34 = call i32 @XFS_IBT_BLOCK(%struct.xfs_mount* %33)
  %35 = call i8* @cpu_to_be32(i32 %34)
  %36 = load %struct.xfs_agi*, %struct.xfs_agi** %7, align 8
  %37 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %36, i32 0, i32 8
  store i8* %35, i8** %37, align 8
  %38 = call i8* @cpu_to_be32(i32 1)
  %39 = load %struct.xfs_agi*, %struct.xfs_agi** %7, align 8
  %40 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %39, i32 0, i32 7
  store i8* %38, i8** %40, align 8
  %41 = load %struct.xfs_agi*, %struct.xfs_agi** %7, align 8
  %42 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %41, i32 0, i32 6
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* @NULLAGINO, align 4
  %44 = call i8* @cpu_to_be32(i32 %43)
  %45 = load %struct.xfs_agi*, %struct.xfs_agi** %7, align 8
  %46 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %45, i32 0, i32 5
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* @NULLAGINO, align 4
  %48 = call i8* @cpu_to_be32(i32 %47)
  %49 = load %struct.xfs_agi*, %struct.xfs_agi** %7, align 8
  %50 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %49, i32 0, i32 4
  store i8* %48, i8** %50, align 8
  %51 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %52 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %51, i32 0, i32 0
  %53 = call i64 @xfs_sb_version_hascrc(%struct.TYPE_3__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %3
  %56 = load %struct.xfs_agi*, %struct.xfs_agi** %7, align 8
  %57 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %56, i32 0, i32 3
  %58 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %59 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = call i32 @uuid_copy(i32* %57, i32* %60)
  br label %62

62:                                               ; preds = %55, %3
  %63 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %64 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %63, i32 0, i32 0
  %65 = call i64 @xfs_sb_version_hasfinobt(%struct.TYPE_3__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %69 = call i32 @XFS_FIBT_BLOCK(%struct.xfs_mount* %68)
  %70 = call i8* @cpu_to_be32(i32 %69)
  %71 = load %struct.xfs_agi*, %struct.xfs_agi** %7, align 8
  %72 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  %73 = call i8* @cpu_to_be32(i32 1)
  %74 = load %struct.xfs_agi*, %struct.xfs_agi** %7, align 8
  %75 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  br label %76

76:                                               ; preds = %67, %62
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %90, %76
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @XFS_AGI_UNLINKED_BUCKETS, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %77
  %82 = load i32, i32* @NULLAGINO, align 4
  %83 = call i8* @cpu_to_be32(i32 %82)
  %84 = load %struct.xfs_agi*, %struct.xfs_agi** %7, align 8
  %85 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %84, i32 0, i32 0
  %86 = load i8**, i8*** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  store i8* %83, i8** %89, align 8
  br label %90

90:                                               ; preds = %81
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %77

93:                                               ; preds = %77
  ret void
}

declare dso_local %struct.xfs_agi* @XFS_BUF_TO_AGI(%struct.xfs_buf*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @XFS_IBT_BLOCK(%struct.xfs_mount*) #1

declare dso_local i64 @xfs_sb_version_hascrc(%struct.TYPE_3__*) #1

declare dso_local i32 @uuid_copy(i32*, i32*) #1

declare dso_local i64 @xfs_sb_version_hasfinobt(%struct.TYPE_3__*) #1

declare dso_local i32 @XFS_FIBT_BLOCK(%struct.xfs_mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
