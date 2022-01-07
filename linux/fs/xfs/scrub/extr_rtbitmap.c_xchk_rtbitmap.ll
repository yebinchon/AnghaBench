; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_rtbitmap.c_xchk_rtbitmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_rtbitmap.c_xchk_rtbitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@XFS_SCRUB_OFLAG_CORRUPT = common dso_local global i32 0, align 4
@xchk_rtbitmap_rec = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xchk_rtbitmap(%struct.xfs_scrub* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_scrub*, align 8
  %4 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %3, align 8
  %5 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %6 = call i32 @xchk_metadata_inode_forks(%struct.xfs_scrub* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %1
  %10 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %11 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @XFS_SCRUB_OFLAG_CORRUPT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %9, %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %35

20:                                               ; preds = %9
  %21 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %22 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @xchk_rtbitmap_rec, align 4
  %25 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %26 = call i32 @xfs_rtalloc_query_all(i32 %23, i32 %24, %struct.xfs_scrub* %25)
  store i32 %26, i32* %4, align 4
  %27 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %28 = load i32, i32* @XFS_DATA_FORK, align 4
  %29 = call i32 @xchk_fblock_process_error(%struct.xfs_scrub* %27, i32 %28, i32 0, i32* %4)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %20
  br label %33

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32, %31
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %18
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @xchk_metadata_inode_forks(%struct.xfs_scrub*) #1

declare dso_local i32 @xfs_rtalloc_query_all(i32, i32, %struct.xfs_scrub*) #1

declare dso_local i32 @xchk_fblock_process_error(%struct.xfs_scrub*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
