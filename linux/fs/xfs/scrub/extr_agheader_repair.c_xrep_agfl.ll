; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_agheader_repair.c_xrep_agfl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_agheader_repair.c_xrep_agfl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { %struct.TYPE_2__, i32, %struct.xfs_mount* }
%struct.TYPE_2__ = type { %struct.xfs_buf*, %struct.xfs_buf*, i32 }
%struct.xfs_buf = type { i32* }
%struct.xfs_mount = type { i32, i32 }
%struct.xfs_bitmap = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@xfs_agfl_buf_ops = common dso_local global i32 0, align 4
@XFS_RMAP_OINFO_AG = common dso_local global i32 0, align 4
@XFS_AG_RESV_AGFL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xrep_agfl(%struct.xfs_scrub* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_scrub*, align 8
  %4 = alloca %struct.xfs_bitmap, align 4
  %5 = alloca %struct.xfs_mount*, align 8
  %6 = alloca %struct.xfs_buf*, align 8
  %7 = alloca %struct.xfs_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %3, align 8
  %10 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %11 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %10, i32 0, i32 2
  %12 = load %struct.xfs_mount*, %struct.xfs_mount** %11, align 8
  store %struct.xfs_mount* %12, %struct.xfs_mount** %5, align 8
  %13 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %14 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %13, i32 0, i32 1
  %15 = call i32 @xfs_sb_version_hasrmapbt(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %108

20:                                               ; preds = %1
  %21 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %22 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %21, i32 0, i32 2
  %23 = load %struct.xfs_mount*, %struct.xfs_mount** %22, align 8
  %24 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %25 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %24, i32 0, i32 0
  %26 = call i32 @xchk_perag_get(%struct.xfs_mount* %23, %struct.TYPE_2__* %25)
  %27 = call i32 @xfs_bitmap_init(%struct.xfs_bitmap* %4)
  %28 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %29 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %30 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %33 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @xfs_alloc_read_agf(%struct.xfs_mount* %28, i32 %31, i32 %35, i32 0, %struct.xfs_buf** %6)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %20
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %2, align 4
  br label %108

41:                                               ; preds = %20
  %42 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %43 = icmp ne %struct.xfs_buf* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %108

47:                                               ; preds = %41
  %48 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %49 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %50 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %53 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %56 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %57 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %61 = call i32 @XFS_AGFL_DADDR(%struct.xfs_mount* %60)
  %62 = call i32 @XFS_AG_DADDR(%struct.xfs_mount* %55, i32 %59, i32 %61)
  %63 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %64 = call i32 @XFS_FSS_TO_BB(%struct.xfs_mount* %63, i32 1)
  %65 = call i32 @xfs_trans_read_buf(%struct.xfs_mount* %48, i32 %51, i32 %54, i32 %62, i32 %64, i32 0, %struct.xfs_buf** %7, i32* null)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %47
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %2, align 4
  br label %108

70:                                               ; preds = %47
  %71 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %72 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %71, i32 0, i32 0
  store i32* @xfs_agfl_buf_ops, i32** %72, align 8
  %73 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %74 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %75 = call i32 @xrep_agfl_collect_blocks(%struct.xfs_scrub* %73, %struct.xfs_buf* %74, %struct.xfs_bitmap* %4, i32* %8)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %105

79:                                               ; preds = %70
  %80 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %81 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @xrep_agfl_update_agf(%struct.xfs_scrub* %80, %struct.xfs_buf* %81, i32 %82)
  %84 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %85 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @xrep_agfl_init_header(%struct.xfs_scrub* %84, %struct.xfs_buf* %85, %struct.xfs_bitmap* %4, i32 %86)
  %88 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %89 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %90 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  store %struct.xfs_buf* %88, %struct.xfs_buf** %91, align 8
  %92 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %93 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %94 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store %struct.xfs_buf* %92, %struct.xfs_buf** %95, align 8
  %96 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %97 = call i32 @xrep_roll_ag_trans(%struct.xfs_scrub* %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %79
  br label %105

101:                                              ; preds = %79
  %102 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %103 = load i32, i32* @XFS_AG_RESV_AGFL, align 4
  %104 = call i32 @xrep_reap_extents(%struct.xfs_scrub* %102, %struct.xfs_bitmap* %4, i32* @XFS_RMAP_OINFO_AG, i32 %103)
  store i32 %104, i32* %2, align 4
  br label %108

105:                                              ; preds = %100, %78
  %106 = call i32 @xfs_bitmap_destroy(%struct.xfs_bitmap* %4)
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %105, %101, %68, %44, %39, %17
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @xfs_sb_version_hasrmapbt(i32*) #1

declare dso_local i32 @xchk_perag_get(%struct.xfs_mount*, %struct.TYPE_2__*) #1

declare dso_local i32 @xfs_bitmap_init(%struct.xfs_bitmap*) #1

declare dso_local i32 @xfs_alloc_read_agf(%struct.xfs_mount*, i32, i32, i32, %struct.xfs_buf**) #1

declare dso_local i32 @xfs_trans_read_buf(%struct.xfs_mount*, i32, i32, i32, i32, i32, %struct.xfs_buf**, i32*) #1

declare dso_local i32 @XFS_AG_DADDR(%struct.xfs_mount*, i32, i32) #1

declare dso_local i32 @XFS_AGFL_DADDR(%struct.xfs_mount*) #1

declare dso_local i32 @XFS_FSS_TO_BB(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xrep_agfl_collect_blocks(%struct.xfs_scrub*, %struct.xfs_buf*, %struct.xfs_bitmap*, i32*) #1

declare dso_local i32 @xrep_agfl_update_agf(%struct.xfs_scrub*, %struct.xfs_buf*, i32) #1

declare dso_local i32 @xrep_agfl_init_header(%struct.xfs_scrub*, %struct.xfs_buf*, %struct.xfs_bitmap*, i32) #1

declare dso_local i32 @xrep_roll_ag_trans(%struct.xfs_scrub*) #1

declare dso_local i32 @xrep_reap_extents(%struct.xfs_scrub*, %struct.xfs_bitmap*, i32*, i32) #1

declare dso_local i32 @xfs_bitmap_destroy(%struct.xfs_bitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
