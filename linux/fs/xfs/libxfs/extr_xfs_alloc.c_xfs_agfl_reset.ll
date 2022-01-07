; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_alloc.c_xfs_agfl_reset.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_alloc.c_xfs_agfl_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }
%struct.xfs_buf = type { i32 }
%struct.xfs_perag = type { i32, i32, i32 }
%struct.xfs_agf = type { i64, i32, i64 }

@_RET_IP_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [93 x i8] c"WARNING: Reset corrupted AGFL on AG %u. %d blocks leaked. Please unmount and run xfs_repair.\00", align 1
@XFS_AGF_FLFIRST = common dso_local global i32 0, align 4
@XFS_AGF_FLLAST = common dso_local global i32 0, align 4
@XFS_AGF_FLCOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_trans*, %struct.xfs_buf*, %struct.xfs_perag*)* @xfs_agfl_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_agfl_reset(%struct.xfs_trans* %0, %struct.xfs_buf* %1, %struct.xfs_perag* %2) #0 {
  %4 = alloca %struct.xfs_trans*, align 8
  %5 = alloca %struct.xfs_buf*, align 8
  %6 = alloca %struct.xfs_perag*, align 8
  %7 = alloca %struct.xfs_mount*, align 8
  %8 = alloca %struct.xfs_agf*, align 8
  store %struct.xfs_trans* %0, %struct.xfs_trans** %4, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %5, align 8
  store %struct.xfs_perag* %2, %struct.xfs_perag** %6, align 8
  %9 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %10 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %9, i32 0, i32 0
  %11 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  store %struct.xfs_mount* %11, %struct.xfs_mount** %7, align 8
  %12 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %13 = call %struct.xfs_agf* @XFS_BUF_TO_AGF(%struct.xfs_buf* %12)
  store %struct.xfs_agf* %13, %struct.xfs_agf** %8, align 8
  %14 = load %struct.xfs_perag*, %struct.xfs_perag** %6, align 8
  %15 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %19 = load %struct.xfs_agf*, %struct.xfs_agf** %8, align 8
  %20 = load i32, i32* @_RET_IP_, align 4
  %21 = call i32 @trace_xfs_agfl_reset(%struct.xfs_mount* %18, %struct.xfs_agf* %19, i32 0, i32 %20)
  %22 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %23 = load %struct.xfs_perag*, %struct.xfs_perag** %6, align 8
  %24 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.xfs_perag*, %struct.xfs_perag** %6, align 8
  %27 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @xfs_warn(%struct.xfs_mount* %22, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load %struct.xfs_agf*, %struct.xfs_agf** %8, align 8
  %31 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %33 = call i64 @xfs_agfl_size(%struct.xfs_mount* %32)
  %34 = sub nsw i64 %33, 1
  %35 = call i32 @cpu_to_be32(i64 %34)
  %36 = load %struct.xfs_agf*, %struct.xfs_agf** %8, align 8
  %37 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.xfs_agf*, %struct.xfs_agf** %8, align 8
  %39 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %41 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %42 = load i32, i32* @XFS_AGF_FLFIRST, align 4
  %43 = load i32, i32* @XFS_AGF_FLLAST, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @XFS_AGF_FLCOUNT, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @xfs_alloc_log_agf(%struct.xfs_trans* %40, %struct.xfs_buf* %41, i32 %46)
  %48 = load %struct.xfs_perag*, %struct.xfs_perag** %6, align 8
  %49 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %48, i32 0, i32 1
  store i32 0, i32* %49, align 4
  %50 = load %struct.xfs_perag*, %struct.xfs_perag** %6, align 8
  %51 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %50, i32 0, i32 0
  store i32 0, i32* %51, align 4
  ret void
}

declare dso_local %struct.xfs_agf* @XFS_BUF_TO_AGF(%struct.xfs_buf*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @trace_xfs_agfl_reset(%struct.xfs_mount*, %struct.xfs_agf*, i32, i32) #1

declare dso_local i32 @xfs_warn(%struct.xfs_mount*, i8*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i64 @xfs_agfl_size(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_alloc_log_agf(%struct.xfs_trans*, %struct.xfs_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
