; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_common.c_xchk_setup_ag_btree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_common.c_xchk_setup_ag_btree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { i32, %struct.TYPE_2__*, %struct.xfs_mount* }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_mount = type { i32 }
%struct.xfs_inode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xchk_setup_ag_btree(%struct.xfs_scrub* %0, %struct.xfs_inode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_scrub*, align 8
  %6 = alloca %struct.xfs_inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfs_mount*, align 8
  %9 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %5, align 8
  store %struct.xfs_inode* %1, %struct.xfs_inode** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.xfs_scrub*, %struct.xfs_scrub** %5, align 8
  %11 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %10, i32 0, i32 2
  %12 = load %struct.xfs_mount*, %struct.xfs_mount** %11, align 8
  store %struct.xfs_mount* %12, %struct.xfs_mount** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %17 = call i32 @xchk_checkpoint_log(%struct.xfs_mount* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %4, align 4
  br label %41

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %3
  %24 = load %struct.xfs_scrub*, %struct.xfs_scrub** %5, align 8
  %25 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %26 = call i32 @xchk_setup_fs(%struct.xfs_scrub* %24, %struct.xfs_inode* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %41

31:                                               ; preds = %23
  %32 = load %struct.xfs_scrub*, %struct.xfs_scrub** %5, align 8
  %33 = load %struct.xfs_scrub*, %struct.xfs_scrub** %5, align 8
  %34 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.xfs_scrub*, %struct.xfs_scrub** %5, align 8
  %39 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %38, i32 0, i32 0
  %40 = call i32 @xchk_ag_init(%struct.xfs_scrub* %32, i32 %37, i32* %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %31, %29, %20
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @xchk_checkpoint_log(%struct.xfs_mount*) #1

declare dso_local i32 @xchk_setup_fs(%struct.xfs_scrub*, %struct.xfs_inode*) #1

declare dso_local i32 @xchk_ag_init(%struct.xfs_scrub*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
