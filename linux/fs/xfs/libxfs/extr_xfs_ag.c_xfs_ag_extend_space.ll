; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ag.c_xfs_ag_extend_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ag.c_xfs_ag_extend_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.xfs_trans = type { i32 }
%struct.aghdr_init_data = type { i32 }
%struct.xfs_buf = type { i32 }
%struct.xfs_agi = type { i64 }
%struct.xfs_agf = type { i64 }

@XFS_AGI_LENGTH = common dso_local global i32 0, align 4
@XFS_AGF_LENGTH = common dso_local global i32 0, align 4
@XFS_RMAP_OINFO_SKIP_UPDATE = common dso_local global i32 0, align 4
@XFS_AG_RESV_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_ag_extend_space(%struct.xfs_mount* %0, %struct.xfs_trans* %1, %struct.aghdr_init_data* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca %struct.xfs_trans*, align 8
  %8 = alloca %struct.aghdr_init_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.xfs_buf*, align 8
  %11 = alloca %struct.xfs_agi*, align 8
  %12 = alloca %struct.xfs_agf*, align 8
  %13 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %6, align 8
  store %struct.xfs_trans* %1, %struct.xfs_trans** %7, align 8
  store %struct.aghdr_init_data* %2, %struct.aghdr_init_data** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %15 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %16 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %8, align 8
  %17 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @xfs_ialloc_read_agi(%struct.xfs_mount* %14, %struct.xfs_trans* %15, i32 %18, %struct.xfs_buf** %10)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %5, align 4
  br label %121

24:                                               ; preds = %4
  %25 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %26 = call %struct.xfs_agi* @XFS_BUF_TO_AGI(%struct.xfs_buf* %25)
  store %struct.xfs_agi* %26, %struct.xfs_agi** %11, align 8
  %27 = load %struct.xfs_agi*, %struct.xfs_agi** %11, align 8
  %28 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %27, i32 0, i32 0
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @be32_add_cpu(i64* %28, i64 %29)
  %31 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %8, align 8
  %32 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %35 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, 1
  %39 = icmp eq i32 %33, %38
  br i1 %39, label %50, label %40

40:                                               ; preds = %24
  %41 = load %struct.xfs_agi*, %struct.xfs_agi** %11, align 8
  %42 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @be32_to_cpu(i64 %43)
  %45 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %46 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %44, %48
  br label %50

50:                                               ; preds = %40, %24
  %51 = phi i1 [ true, %24 ], [ %49, %40 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @ASSERT(i32 %52)
  %54 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %55 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %56 = load i32, i32* @XFS_AGI_LENGTH, align 4
  %57 = call i32 @xfs_ialloc_log_agi(%struct.xfs_trans* %54, %struct.xfs_buf* %55, i32 %56)
  %58 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %59 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %60 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %8, align 8
  %61 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @xfs_alloc_read_agf(%struct.xfs_mount* %58, %struct.xfs_trans* %59, i32 %62, i32 0, %struct.xfs_buf** %10)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %50
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %5, align 4
  br label %121

68:                                               ; preds = %50
  %69 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %70 = call %struct.xfs_agf* @XFS_BUF_TO_AGF(%struct.xfs_buf* %69)
  store %struct.xfs_agf* %70, %struct.xfs_agf** %12, align 8
  %71 = load %struct.xfs_agf*, %struct.xfs_agf** %12, align 8
  %72 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %71, i32 0, i32 0
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @be32_add_cpu(i64* %72, i64 %73)
  %75 = load %struct.xfs_agf*, %struct.xfs_agf** %12, align 8
  %76 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.xfs_agi*, %struct.xfs_agi** %11, align 8
  %79 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %77, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @ASSERT(i32 %82)
  %84 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %85 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %86 = load i32, i32* @XFS_AGF_LENGTH, align 4
  %87 = call i32 @xfs_alloc_log_agf(%struct.xfs_trans* %84, %struct.xfs_buf* %85, i32 %86)
  %88 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %89 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %90 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %8, align 8
  %91 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.xfs_agf*, %struct.xfs_agf** %12, align 8
  %94 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i64 @be32_to_cpu(i64 %95)
  %97 = load i64, i64* %9, align 8
  %98 = sub nsw i64 %96, %97
  %99 = load i64, i64* %9, align 8
  %100 = call i32 @xfs_rmap_free(%struct.xfs_trans* %88, %struct.xfs_buf* %89, i32 %92, i64 %98, i64 %99, i32* @XFS_RMAP_OINFO_SKIP_UPDATE)
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %68
  %104 = load i32, i32* %13, align 4
  store i32 %104, i32* %5, align 4
  br label %121

105:                                              ; preds = %68
  %106 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %107 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %108 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %8, align 8
  %109 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.xfs_agf*, %struct.xfs_agf** %12, align 8
  %112 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i64 @be32_to_cpu(i64 %113)
  %115 = load i64, i64* %9, align 8
  %116 = sub nsw i64 %114, %115
  %117 = call i32 @XFS_AGB_TO_FSB(%struct.xfs_mount* %107, i32 %110, i64 %116)
  %118 = load i64, i64* %9, align 8
  %119 = load i32, i32* @XFS_AG_RESV_NONE, align 4
  %120 = call i32 @xfs_free_extent(%struct.xfs_trans* %106, i32 %117, i64 %118, i32* @XFS_RMAP_OINFO_SKIP_UPDATE, i32 %119)
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %105, %103, %66, %22
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i32 @xfs_ialloc_read_agi(%struct.xfs_mount*, %struct.xfs_trans*, i32, %struct.xfs_buf**) #1

declare dso_local %struct.xfs_agi* @XFS_BUF_TO_AGI(%struct.xfs_buf*) #1

declare dso_local i32 @be32_add_cpu(i64*, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @be32_to_cpu(i64) #1

declare dso_local i32 @xfs_ialloc_log_agi(%struct.xfs_trans*, %struct.xfs_buf*, i32) #1

declare dso_local i32 @xfs_alloc_read_agf(%struct.xfs_mount*, %struct.xfs_trans*, i32, i32, %struct.xfs_buf**) #1

declare dso_local %struct.xfs_agf* @XFS_BUF_TO_AGF(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_alloc_log_agf(%struct.xfs_trans*, %struct.xfs_buf*, i32) #1

declare dso_local i32 @xfs_rmap_free(%struct.xfs_trans*, %struct.xfs_buf*, i32, i64, i64, i32*) #1

declare dso_local i32 @xfs_free_extent(%struct.xfs_trans*, i32, i64, i32*, i32) #1

declare dso_local i32 @XFS_AGB_TO_FSB(%struct.xfs_mount*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
