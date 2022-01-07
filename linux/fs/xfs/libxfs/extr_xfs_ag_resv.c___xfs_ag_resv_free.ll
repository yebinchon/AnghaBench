; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ag_resv.c___xfs_ag_resv_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ag_resv.c___xfs_ag_resv_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_perag = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.xfs_ag_resv = type { i64, i64, i64 }

@XFS_AG_RESV_RMAPBT = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_perag*, i32)* @__xfs_ag_resv_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__xfs_ag_resv_free(%struct.xfs_perag* %0, i32 %1) #0 {
  %3 = alloca %struct.xfs_perag*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_ag_resv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.xfs_perag* %0, %struct.xfs_perag** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.xfs_perag*, %struct.xfs_perag** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @trace_xfs_ag_resv_free(%struct.xfs_perag* %8, i32 %9, i32 0)
  %11 = load %struct.xfs_perag*, %struct.xfs_perag** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.xfs_ag_resv* @xfs_perag_resv(%struct.xfs_perag* %11, i32 %12)
  store %struct.xfs_ag_resv* %13, %struct.xfs_ag_resv** %5, align 8
  %14 = load %struct.xfs_perag*, %struct.xfs_perag** %3, align 8
  %15 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = load %struct.xfs_ag_resv*, %struct.xfs_ag_resv** %5, align 8
  %20 = getelementptr inbounds %struct.xfs_ag_resv, %struct.xfs_ag_resv* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.xfs_perag*, %struct.xfs_perag** %3, align 8
  %23 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %21
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %25, align 4
  br label %30

30:                                               ; preds = %18, %2
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @XFS_AG_RESV_RMAPBT, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.xfs_ag_resv*, %struct.xfs_ag_resv** %5, align 8
  %36 = getelementptr inbounds %struct.xfs_ag_resv, %struct.xfs_ag_resv* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %6, align 8
  br label %42

38:                                               ; preds = %30
  %39 = load %struct.xfs_ag_resv*, %struct.xfs_ag_resv** %5, align 8
  %40 = getelementptr inbounds %struct.xfs_ag_resv, %struct.xfs_ag_resv* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %38, %34
  %43 = load %struct.xfs_perag*, %struct.xfs_perag** %3, align 8
  %44 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @xfs_mod_fdblocks(%struct.TYPE_3__* %45, i64 %46, i32 1)
  store i32 %47, i32* %7, align 4
  %48 = load %struct.xfs_ag_resv*, %struct.xfs_ag_resv** %5, align 8
  %49 = getelementptr inbounds %struct.xfs_ag_resv, %struct.xfs_ag_resv* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load %struct.xfs_ag_resv*, %struct.xfs_ag_resv** %5, align 8
  %51 = getelementptr inbounds %struct.xfs_ag_resv, %struct.xfs_ag_resv* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.xfs_ag_resv*, %struct.xfs_ag_resv** %5, align 8
  %53 = getelementptr inbounds %struct.xfs_ag_resv, %struct.xfs_ag_resv* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %42
  %57 = load %struct.xfs_perag*, %struct.xfs_perag** %3, align 8
  %58 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load %struct.xfs_perag*, %struct.xfs_perag** %3, align 8
  %61 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @_RET_IP_, align 4
  %65 = call i32 @trace_xfs_ag_resv_free_error(%struct.TYPE_3__* %59, i64 %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %56, %42
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i32 @trace_xfs_ag_resv_free(%struct.xfs_perag*, i32, i32) #1

declare dso_local %struct.xfs_ag_resv* @xfs_perag_resv(%struct.xfs_perag*, i32) #1

declare dso_local i32 @xfs_mod_fdblocks(%struct.TYPE_3__*, i64, i32) #1

declare dso_local i32 @trace_xfs_ag_resv_free_error(%struct.TYPE_3__*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
