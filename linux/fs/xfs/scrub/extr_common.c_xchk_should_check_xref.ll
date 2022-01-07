; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_common.c_xchk_should_check_xref.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_common.c_xchk_should_check_xref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_btree_cur = type { i32 }

@XFS_BTREE_ERROR = common dso_local global i32 0, align 4
@XFS_SCRUB_OFLAG_XFAIL = common dso_local global i32 0, align 4
@__return_address = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xchk_should_check_xref(%struct.xfs_scrub* %0, i32* %1, %struct.xfs_btree_cur** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_scrub*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.xfs_btree_cur**, align 8
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.xfs_btree_cur** %2, %struct.xfs_btree_cur*** %7, align 8
  %8 = load %struct.xfs_scrub*, %struct.xfs_scrub** %5, align 8
  %9 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = call i64 @xchk_skip_xref(%struct.TYPE_2__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %47

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  br label %47

19:                                               ; preds = %14
  %20 = load %struct.xfs_btree_cur**, %struct.xfs_btree_cur*** %7, align 8
  %21 = icmp ne %struct.xfs_btree_cur** %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load %struct.xfs_btree_cur**, %struct.xfs_btree_cur*** %7, align 8
  %24 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %23, align 8
  %25 = icmp ne %struct.xfs_btree_cur* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %47

27:                                               ; preds = %22
  %28 = load %struct.xfs_btree_cur**, %struct.xfs_btree_cur*** %7, align 8
  %29 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %28, align 8
  %30 = load i32, i32* @XFS_BTREE_ERROR, align 4
  %31 = call i32 @xfs_btree_del_cursor(%struct.xfs_btree_cur* %29, i32 %30)
  %32 = load %struct.xfs_btree_cur**, %struct.xfs_btree_cur*** %7, align 8
  store %struct.xfs_btree_cur* null, %struct.xfs_btree_cur** %32, align 8
  br label %33

33:                                               ; preds = %27, %19
  %34 = load i32, i32* @XFS_SCRUB_OFLAG_XFAIL, align 4
  %35 = load %struct.xfs_scrub*, %struct.xfs_scrub** %5, align 8
  %36 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %34
  store i32 %40, i32* %38, align 4
  %41 = load %struct.xfs_scrub*, %struct.xfs_scrub** %5, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @__return_address, align 4
  %45 = call i32 @trace_xchk_xref_error(%struct.xfs_scrub* %41, i32 %43, i32 %44)
  %46 = load i32*, i32** %6, align 8
  store i32 0, i32* %46, align 4
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %33, %26, %18, %13
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i64 @xchk_skip_xref(%struct.TYPE_2__*) #1

declare dso_local i32 @xfs_btree_del_cursor(%struct.xfs_btree_cur*, i32) #1

declare dso_local i32 @trace_xchk_xref_error(%struct.xfs_scrub*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
