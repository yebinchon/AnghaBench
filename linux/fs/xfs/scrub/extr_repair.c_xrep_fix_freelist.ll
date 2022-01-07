; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_repair.c_xrep_fix_freelist.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_repair.c_xrep_fix_freelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.xfs_alloc_arg = type { i32, i32, i32, i32, i32, i32 }

@XFS_ALLOC_FLAG_NOSHRINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xrep_fix_freelist(%struct.xfs_scrub* %0, i32 %1) #0 {
  %3 = alloca %struct.xfs_scrub*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_alloc_arg, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = bitcast %struct.xfs_alloc_arg* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 24, i1 false)
  %7 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %8 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %5, i32 0, i32 4
  store i32 %9, i32* %10, align 4
  %11 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %12 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %5, i32 0, i32 3
  store i32 %13, i32* %14, align 4
  %15 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %16 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %5, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %5, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %22 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %5, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @XFS_ALLOC_FLAG_NOSHRINK, align 4
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi i32 [ 0, %28 ], [ %30, %29 ]
  %33 = call i32 @xfs_alloc_fix_freelist(%struct.xfs_alloc_arg* %5, i32 %32)
  ret i32 %33
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @xfs_alloc_fix_freelist(%struct.xfs_alloc_arg*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
