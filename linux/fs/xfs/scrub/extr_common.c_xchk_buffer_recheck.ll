; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_common.c_xchk_buffer_recheck.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_common.c_xchk_buffer_recheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.xfs_buf = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.xfs_buf*)* }

@XFS_SCRUB_OFLAG_CORRUPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xchk_buffer_recheck(%struct.xfs_scrub* %0, %struct.xfs_buf* %1) #0 {
  %3 = alloca %struct.xfs_scrub*, align 8
  %4 = alloca %struct.xfs_buf*, align 8
  %5 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %3, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %4, align 8
  %6 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %7 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = icmp eq %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %12 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %13 = call i32 @xchk_block_set_corrupt(%struct.xfs_scrub* %11, %struct.xfs_buf* %12)
  br label %49

14:                                               ; preds = %2
  %15 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %16 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (%struct.xfs_buf*)*, i32 (%struct.xfs_buf*)** %18, align 8
  %20 = icmp eq i32 (%struct.xfs_buf*)* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %23 = call i32 @xchk_set_incomplete(%struct.xfs_scrub* %22)
  br label %49

24:                                               ; preds = %14
  %25 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %26 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32 (%struct.xfs_buf*)*, i32 (%struct.xfs_buf*)** %28, align 8
  %30 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %31 = call i32 %29(%struct.xfs_buf* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %24
  br label %49

35:                                               ; preds = %24
  %36 = load i32, i32* @XFS_SCRUB_OFLAG_CORRUPT, align 4
  %37 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %38 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %36
  store i32 %42, i32* %40, align 4
  %43 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %44 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %45 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @trace_xchk_block_error(%struct.xfs_scrub* %43, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %35, %34, %21, %10
  ret void
}

declare dso_local i32 @xchk_block_set_corrupt(%struct.xfs_scrub*, %struct.xfs_buf*) #1

declare dso_local i32 @xchk_set_incomplete(%struct.xfs_scrub*) #1

declare dso_local i32 @trace_xchk_block_error(%struct.xfs_scrub*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
