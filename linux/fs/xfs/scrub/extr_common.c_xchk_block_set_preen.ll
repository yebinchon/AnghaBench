; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_common.c_xchk_block_set_preen.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_common.c_xchk_block_set_preen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_buf = type { i32 }

@XFS_SCRUB_OFLAG_PREEN = common dso_local global i32 0, align 4
@__return_address = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xchk_block_set_preen(%struct.xfs_scrub* %0, %struct.xfs_buf* %1) #0 {
  %3 = alloca %struct.xfs_scrub*, align 8
  %4 = alloca %struct.xfs_buf*, align 8
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %3, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %4, align 8
  %5 = load i32, i32* @XFS_SCRUB_OFLAG_PREEN, align 4
  %6 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %7 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = or i32 %10, %5
  store i32 %11, i32* %9, align 4
  %12 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %13 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %14 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @__return_address, align 4
  %17 = call i32 @trace_xchk_block_preen(%struct.xfs_scrub* %12, i32 %15, i32 %16)
  ret void
}

declare dso_local i32 @trace_xchk_block_preen(%struct.xfs_scrub*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
