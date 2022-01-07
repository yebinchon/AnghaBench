; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_dabtree.c_xchk_da_set_corrupt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_dabtree.c_xchk_da_set_corrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xchk_da_btree = type { %struct.TYPE_10__*, %struct.TYPE_7__, %struct.xfs_scrub* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.xfs_scrub = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@XFS_SCRUB_OFLAG_CORRUPT = common dso_local global i32 0, align 4
@__return_address = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xchk_da_set_corrupt(%struct.xchk_da_btree* %0, i32 %1) #0 {
  %3 = alloca %struct.xchk_da_btree*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_scrub*, align 8
  store %struct.xchk_da_btree* %0, %struct.xchk_da_btree** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.xchk_da_btree*, %struct.xchk_da_btree** %3, align 8
  %7 = getelementptr inbounds %struct.xchk_da_btree, %struct.xchk_da_btree* %6, i32 0, i32 2
  %8 = load %struct.xfs_scrub*, %struct.xfs_scrub** %7, align 8
  store %struct.xfs_scrub* %8, %struct.xfs_scrub** %5, align 8
  %9 = load i32, i32* @XFS_SCRUB_OFLAG_CORRUPT, align 4
  %10 = load %struct.xfs_scrub*, %struct.xfs_scrub** %5, align 8
  %11 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %9
  store i32 %15, i32* %13, align 4
  %16 = load %struct.xfs_scrub*, %struct.xfs_scrub** %5, align 8
  %17 = load %struct.xchk_da_btree*, %struct.xchk_da_btree** %3, align 8
  %18 = getelementptr inbounds %struct.xchk_da_btree, %struct.xchk_da_btree* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.xchk_da_btree*, %struct.xchk_da_btree** %3, align 8
  %22 = getelementptr inbounds %struct.xchk_da_btree, %struct.xchk_da_btree* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.xchk_da_btree*, %struct.xchk_da_btree** %3, align 8
  %26 = getelementptr inbounds %struct.xchk_da_btree, %struct.xchk_da_btree* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @xfs_dir2_da_to_db(i32 %24, i32 %35)
  %37 = load i32, i32* @__return_address, align 4
  %38 = call i32 @trace_xchk_fblock_error(%struct.xfs_scrub* %16, i32 %20, i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @trace_xchk_fblock_error(%struct.xfs_scrub*, i32, i32, i32) #1

declare dso_local i32 @xfs_dir2_da_to_db(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
