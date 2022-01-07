; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_bmap_util.c_xfs_swap_change_owner.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_bmap_util.c_xfs_swap_change_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32 }
%struct.xfs_inode = type { i32 }

@XFS_DATA_FORK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@XFS_ILOG_CORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_trans**, %struct.xfs_inode*, %struct.xfs_inode*)* @xfs_swap_change_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_swap_change_owner(%struct.xfs_trans** %0, %struct.xfs_inode* %1, %struct.xfs_inode* %2) #0 {
  %4 = alloca %struct.xfs_trans**, align 8
  %5 = alloca %struct.xfs_inode*, align 8
  %6 = alloca %struct.xfs_inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfs_trans*, align 8
  store %struct.xfs_trans** %0, %struct.xfs_trans*** %4, align 8
  store %struct.xfs_inode* %1, %struct.xfs_inode** %5, align 8
  store %struct.xfs_inode* %2, %struct.xfs_inode** %6, align 8
  %9 = load %struct.xfs_trans**, %struct.xfs_trans*** %4, align 8
  %10 = load %struct.xfs_trans*, %struct.xfs_trans** %9, align 8
  store %struct.xfs_trans* %10, %struct.xfs_trans** %8, align 8
  br label %11

11:                                               ; preds = %47, %3
  %12 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %13 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %14 = load i32, i32* @XFS_DATA_FORK, align 4
  %15 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %16 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @xfs_bmbt_change_owner(%struct.xfs_trans* %12, %struct.xfs_inode* %13, i32 %14, i32 %17, i32* null)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @EAGAIN, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp ne i32 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %11
  br label %48

24:                                               ; preds = %11
  %25 = load %struct.xfs_trans**, %struct.xfs_trans*** %4, align 8
  %26 = call i32 @xfs_trans_roll(%struct.xfs_trans** %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %48

30:                                               ; preds = %24
  %31 = load %struct.xfs_trans**, %struct.xfs_trans*** %4, align 8
  %32 = load %struct.xfs_trans*, %struct.xfs_trans** %31, align 8
  store %struct.xfs_trans* %32, %struct.xfs_trans** %8, align 8
  %33 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %34 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %35 = call i32 @xfs_trans_ijoin(%struct.xfs_trans* %33, %struct.xfs_inode* %34, i32 0)
  %36 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %37 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %38 = call i32 @xfs_trans_ijoin(%struct.xfs_trans* %36, %struct.xfs_inode* %37, i32 0)
  %39 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %40 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %41 = load i32, i32* @XFS_ILOG_CORE, align 4
  %42 = call i32 @xfs_trans_log_inode(%struct.xfs_trans* %39, %struct.xfs_inode* %40, i32 %41)
  %43 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %44 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %45 = load i32, i32* @XFS_ILOG_CORE, align 4
  %46 = call i32 @xfs_trans_log_inode(%struct.xfs_trans* %43, %struct.xfs_inode* %44, i32 %45)
  br label %47

47:                                               ; preds = %30
  br i1 true, label %11, label %48

48:                                               ; preds = %47, %29, %23
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @xfs_bmbt_change_owner(%struct.xfs_trans*, %struct.xfs_inode*, i32, i32, i32*) #1

declare dso_local i32 @xfs_trans_roll(%struct.xfs_trans**) #1

declare dso_local i32 @xfs_trans_ijoin(%struct.xfs_trans*, %struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_trans_log_inode(%struct.xfs_trans*, %struct.xfs_inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
