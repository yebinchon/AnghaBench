; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_repair.c_xrep_init_btblock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_repair.c_xrep_init_btblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { %struct.TYPE_2__, %struct.xfs_mount*, %struct.xfs_trans* }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_mount = type { i32 }
%struct.xfs_trans = type { i32 }
%struct.xfs_buf = type { %struct.xfs_buf_ops*, i32 }
%struct.xfs_buf_ops = type { i32 }

@XFS_BLFT_BTREE_BUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xrep_init_btblock(%struct.xfs_scrub* %0, i32 %1, %struct.xfs_buf** %2, i32 %3, %struct.xfs_buf_ops* %4) #0 {
  %6 = alloca %struct.xfs_scrub*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfs_buf**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xfs_buf_ops*, align 8
  %11 = alloca %struct.xfs_trans*, align 8
  %12 = alloca %struct.xfs_mount*, align 8
  %13 = alloca %struct.xfs_buf*, align 8
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.xfs_buf** %2, %struct.xfs_buf*** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.xfs_buf_ops* %4, %struct.xfs_buf_ops** %10, align 8
  %14 = load %struct.xfs_scrub*, %struct.xfs_scrub** %6, align 8
  %15 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %14, i32 0, i32 2
  %16 = load %struct.xfs_trans*, %struct.xfs_trans** %15, align 8
  store %struct.xfs_trans* %16, %struct.xfs_trans** %11, align 8
  %17 = load %struct.xfs_scrub*, %struct.xfs_scrub** %6, align 8
  %18 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %17, i32 0, i32 1
  %19 = load %struct.xfs_mount*, %struct.xfs_mount** %18, align 8
  store %struct.xfs_mount* %19, %struct.xfs_mount** %12, align 8
  %20 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %21 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @XFS_FSB_TO_AGNO(%struct.xfs_mount* %21, i32 %22)
  %24 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @XFS_FSB_TO_AGBNO(%struct.xfs_mount* %24, i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @trace_xrep_init_btblock(%struct.xfs_mount* %20, i32 %23, i32 %26, i32 %27)
  %29 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @XFS_FSB_TO_AGNO(%struct.xfs_mount* %29, i32 %30)
  %32 = load %struct.xfs_scrub*, %struct.xfs_scrub** %6, align 8
  %33 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %31, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load %struct.xfs_trans*, %struct.xfs_trans** %11, align 8
  %40 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %41 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @XFS_FSB_TO_DADDR(%struct.xfs_mount* %43, i32 %44)
  %46 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %47 = call i32 @XFS_FSB_TO_BB(%struct.xfs_mount* %46, i32 1)
  %48 = call %struct.xfs_buf* @xfs_trans_get_buf(%struct.xfs_trans* %39, i32 %42, i32 %45, i32 %47, i32 0)
  store %struct.xfs_buf* %48, %struct.xfs_buf** %13, align 8
  %49 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %50 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %51 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @BBTOB(i32 %52)
  %54 = call i32 @xfs_buf_zero(%struct.xfs_buf* %49, i32 0, i64 %53)
  %55 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %56 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.xfs_scrub*, %struct.xfs_scrub** %6, align 8
  %59 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @xfs_btree_init_block(%struct.xfs_mount* %55, %struct.xfs_buf* %56, i32 %57, i32 0, i32 0, i32 %61)
  %63 = load %struct.xfs_trans*, %struct.xfs_trans** %11, align 8
  %64 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %65 = load i32, i32* @XFS_BLFT_BTREE_BUF, align 4
  %66 = call i32 @xfs_trans_buf_set_type(%struct.xfs_trans* %63, %struct.xfs_buf* %64, i32 %65)
  %67 = load %struct.xfs_trans*, %struct.xfs_trans** %11, align 8
  %68 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %69 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %70 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @BBTOB(i32 %71)
  %73 = sub nsw i64 %72, 1
  %74 = call i32 @xfs_trans_log_buf(%struct.xfs_trans* %67, %struct.xfs_buf* %68, i32 0, i64 %73)
  %75 = load %struct.xfs_buf_ops*, %struct.xfs_buf_ops** %10, align 8
  %76 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %77 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %76, i32 0, i32 0
  store %struct.xfs_buf_ops* %75, %struct.xfs_buf_ops** %77, align 8
  %78 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %79 = load %struct.xfs_buf**, %struct.xfs_buf*** %8, align 8
  store %struct.xfs_buf* %78, %struct.xfs_buf** %79, align 8
  ret i32 0
}

declare dso_local i32 @trace_xrep_init_btblock(%struct.xfs_mount*, i32, i32, i32) #1

declare dso_local i32 @XFS_FSB_TO_AGNO(%struct.xfs_mount*, i32) #1

declare dso_local i32 @XFS_FSB_TO_AGBNO(%struct.xfs_mount*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.xfs_buf* @xfs_trans_get_buf(%struct.xfs_trans*, i32, i32, i32, i32) #1

declare dso_local i32 @XFS_FSB_TO_DADDR(%struct.xfs_mount*, i32) #1

declare dso_local i32 @XFS_FSB_TO_BB(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_buf_zero(%struct.xfs_buf*, i32, i64) #1

declare dso_local i64 @BBTOB(i32) #1

declare dso_local i32 @xfs_btree_init_block(%struct.xfs_mount*, %struct.xfs_buf*, i32, i32, i32, i32) #1

declare dso_local i32 @xfs_trans_buf_set_type(%struct.xfs_trans*, %struct.xfs_buf*, i32) #1

declare dso_local i32 @xfs_trans_log_buf(%struct.xfs_trans*, %struct.xfs_buf*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
