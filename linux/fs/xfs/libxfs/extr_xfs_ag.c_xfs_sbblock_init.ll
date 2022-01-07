; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ag.c_xfs_sbblock_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ag.c_xfs_sbblock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }
%struct.xfs_buf = type { i32 }
%struct.aghdr_init_data = type { i32 }
%struct.xfs_dsb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_mount*, %struct.xfs_buf*, %struct.aghdr_init_data*)* @xfs_sbblock_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_sbblock_init(%struct.xfs_mount* %0, %struct.xfs_buf* %1, %struct.aghdr_init_data* %2) #0 {
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca %struct.xfs_buf*, align 8
  %6 = alloca %struct.aghdr_init_data*, align 8
  %7 = alloca %struct.xfs_dsb*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %4, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %5, align 8
  store %struct.aghdr_init_data* %2, %struct.aghdr_init_data** %6, align 8
  %8 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %9 = call %struct.xfs_dsb* @XFS_BUF_TO_SBP(%struct.xfs_buf* %8)
  store %struct.xfs_dsb* %9, %struct.xfs_dsb** %7, align 8
  %10 = load %struct.xfs_dsb*, %struct.xfs_dsb** %7, align 8
  %11 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %12 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %11, i32 0, i32 0
  %13 = call i32 @xfs_sb_to_disk(%struct.xfs_dsb* %10, i32* %12)
  %14 = load %struct.xfs_dsb*, %struct.xfs_dsb** %7, align 8
  %15 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  ret void
}

declare dso_local %struct.xfs_dsb* @XFS_BUF_TO_SBP(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_sb_to_disk(%struct.xfs_dsb*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
