; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_ialloc.c_xchk_setup_ag_iallocbt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_ialloc.c_xchk_setup_ag_iallocbt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { i32 }
%struct.xfs_inode = type { i32 }

@XCHK_TRY_HARDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xchk_setup_ag_iallocbt(%struct.xfs_scrub* %0, %struct.xfs_inode* %1) #0 {
  %3 = alloca %struct.xfs_scrub*, align 8
  %4 = alloca %struct.xfs_inode*, align 8
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %3, align 8
  store %struct.xfs_inode* %1, %struct.xfs_inode** %4, align 8
  %5 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %6 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %7 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %8 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @XCHK_TRY_HARDER, align 4
  %11 = and i32 %9, %10
  %12 = call i32 @xchk_setup_ag_btree(%struct.xfs_scrub* %5, %struct.xfs_inode* %6, i32 %11)
  ret i32 %12
}

declare dso_local i32 @xchk_setup_ag_btree(%struct.xfs_scrub*, %struct.xfs_inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
