; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_fsops.c_xfs_growfs_imaxpct.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_fsops.c_xfs_growfs_imaxpct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.xfs_trans = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@XFS_TRANS_RESERVE = common dso_local global i32 0, align 4
@XFS_TRANS_SB_IMAXPCT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_mount*, i32)* @xfs_growfs_imaxpct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_growfs_imaxpct(%struct.xfs_mount* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_trans*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %9, 100
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %42

14:                                               ; preds = %2
  %15 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %16 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %17 = call %struct.TYPE_4__* @M_RES(%struct.xfs_mount* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %20 = call i32 @XFS_GROWFS_SPACE_RES(%struct.xfs_mount* %19)
  %21 = load i32, i32* @XFS_TRANS_RESERVE, align 4
  %22 = call i32 @xfs_trans_alloc(%struct.xfs_mount* %15, i32* %18, i32 %20, i32 0, i32 %21, %struct.xfs_trans** %6)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %42

27:                                               ; preds = %14
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %30 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %28, %32
  store i32 %33, i32* %7, align 4
  %34 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %35 = load i32, i32* @XFS_TRANS_SB_IMAXPCT, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @xfs_trans_mod_sb(%struct.xfs_trans* %34, i32 %35, i32 %36)
  %38 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %39 = call i32 @xfs_trans_set_sync(%struct.xfs_trans* %38)
  %40 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %41 = call i32 @xfs_trans_commit(%struct.xfs_trans* %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %27, %25, %11
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @xfs_trans_alloc(%struct.xfs_mount*, i32*, i32, i32, i32, %struct.xfs_trans**) #1

declare dso_local %struct.TYPE_4__* @M_RES(%struct.xfs_mount*) #1

declare dso_local i32 @XFS_GROWFS_SPACE_RES(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_trans_mod_sb(%struct.xfs_trans*, i32, i32) #1

declare dso_local i32 @xfs_trans_set_sync(%struct.xfs_trans*) #1

declare dso_local i32 @xfs_trans_commit(%struct.xfs_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
