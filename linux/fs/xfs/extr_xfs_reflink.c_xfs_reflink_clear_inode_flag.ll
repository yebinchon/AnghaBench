; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_reflink.c_xfs_reflink_clear_inode_flag.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_reflink.c_xfs_reflink_clear_inode_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_trans = type { i32 }

@NULLFILEOFF = common dso_local global i32 0, align 4
@XFS_DIFLAG2_REFLINK = common dso_local global i32 0, align 4
@XFS_ILOG_CORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_reflink_clear_inode_flag(%struct.xfs_inode* %0, %struct.xfs_trans** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_inode*, align 8
  %5 = alloca %struct.xfs_trans**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %4, align 8
  store %struct.xfs_trans** %1, %struct.xfs_trans*** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %9 = call i32 @xfs_is_reflink_inode(%struct.xfs_inode* %8)
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load %struct.xfs_trans**, %struct.xfs_trans*** %5, align 8
  %12 = load %struct.xfs_trans*, %struct.xfs_trans** %11, align 8
  %13 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %14 = call i32 @xfs_reflink_inode_has_shared_extents(%struct.xfs_trans* %12, %struct.xfs_inode* %13, i32* %6)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %2
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %49

22:                                               ; preds = %17
  %23 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %24 = load %struct.xfs_trans**, %struct.xfs_trans*** %5, align 8
  %25 = load i32, i32* @NULLFILEOFF, align 4
  %26 = call i32 @xfs_reflink_cancel_cow_blocks(%struct.xfs_inode* %23, %struct.xfs_trans** %24, i32 0, i32 %25, i32 1)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %49

31:                                               ; preds = %22
  %32 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %33 = call i32 @trace_xfs_reflink_unset_inode_flag(%struct.xfs_inode* %32)
  %34 = load i32, i32* @XFS_DIFLAG2_REFLINK, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %37 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %35
  store i32 %40, i32* %38, align 4
  %41 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %42 = call i32 @xfs_inode_clear_cowblocks_tag(%struct.xfs_inode* %41)
  %43 = load %struct.xfs_trans**, %struct.xfs_trans*** %5, align 8
  %44 = load %struct.xfs_trans*, %struct.xfs_trans** %43, align 8
  %45 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %46 = load i32, i32* @XFS_ILOG_CORE, align 4
  %47 = call i32 @xfs_trans_log_inode(%struct.xfs_trans* %44, %struct.xfs_inode* %45, i32 %46)
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %31, %29, %20
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_is_reflink_inode(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_reflink_inode_has_shared_extents(%struct.xfs_trans*, %struct.xfs_inode*, i32*) #1

declare dso_local i32 @xfs_reflink_cancel_cow_blocks(%struct.xfs_inode*, %struct.xfs_trans**, i32, i32, i32) #1

declare dso_local i32 @trace_xfs_reflink_unset_inode_flag(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_inode_clear_cowblocks_tag(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_trans_log_inode(%struct.xfs_trans*, %struct.xfs_inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
