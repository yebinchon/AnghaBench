; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_mount.h_xfs_daddr_to_agbno.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_mount.h_xfs_daddr_to_agbno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_mount*, i32)* @xfs_daddr_to_agbno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_daddr_to_agbno(%struct.xfs_mount* %0, i32 %1) #0 {
  %3 = alloca %struct.xfs_mount*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @XFS_BB_TO_FSBT(%struct.xfs_mount* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %11 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @do_div(i32 %9, i32 %13)
  ret i32 %14
}

declare dso_local i32 @XFS_BB_TO_FSBT(%struct.xfs_mount*, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
