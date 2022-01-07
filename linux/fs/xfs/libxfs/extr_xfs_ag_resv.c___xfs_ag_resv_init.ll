; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ag_resv.c___xfs_ag_resv_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ag_resv.c___xfs_ag_resv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_perag = type { i32, %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }
%struct.xfs_ag_resv = type { i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"Per-AG reservation for AG %u failed.  Filesystem may run out of space.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_perag*, i32, i64, i64)* @__xfs_ag_resv_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__xfs_ag_resv_init(%struct.xfs_perag* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_perag*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.xfs_mount*, align 8
  %11 = alloca %struct.xfs_ag_resv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.xfs_perag* %0, %struct.xfs_perag** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.xfs_perag*, %struct.xfs_perag** %6, align 8
  %15 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %14, i32 0, i32 1
  %16 = load %struct.xfs_mount*, %struct.xfs_mount** %15, align 8
  store %struct.xfs_mount* %16, %struct.xfs_mount** %10, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i64, i64* %9, align 8
  store i64 %21, i64* %8, align 8
  br label %22

22:                                               ; preds = %20, %4
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %30 [
    i32 128, label %24
    i32 129, label %26
  ]

24:                                               ; preds = %22
  %25 = load i64, i64* %8, align 8
  store i64 %25, i64* %13, align 8
  br label %34

26:                                               ; preds = %22
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = sub nsw i64 %27, %28
  store i64 %29, i64* %13, align 8
  br label %34

30:                                               ; preds = %22
  %31 = call i32 @ASSERT(i32 0)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %90

34:                                               ; preds = %26, %24
  %35 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %36 = load i64, i64* %13, align 8
  %37 = trunc i64 %36 to i32
  %38 = sub nsw i32 0, %37
  %39 = call i32 @xfs_mod_fdblocks(%struct.xfs_mount* %35, i32 %38, i32 1)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %34
  %43 = load %struct.xfs_perag*, %struct.xfs_perag** %6, align 8
  %44 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %43, i32 0, i32 1
  %45 = load %struct.xfs_mount*, %struct.xfs_mount** %44, align 8
  %46 = load %struct.xfs_perag*, %struct.xfs_perag** %6, align 8
  %47 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @_RET_IP_, align 4
  %51 = call i32 @trace_xfs_ag_resv_init_error(%struct.xfs_mount* %45, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %53 = load %struct.xfs_perag*, %struct.xfs_perag** %6, align 8
  %54 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @xfs_warn(%struct.xfs_mount* %52, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %5, align 4
  br label %90

58:                                               ; preds = %34
  %59 = load %struct.xfs_perag*, %struct.xfs_perag** %6, align 8
  %60 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %66 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = sub nsw i64 %68, %64
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %66, align 4
  br label %71

71:                                               ; preds = %63, %58
  %72 = load %struct.xfs_perag*, %struct.xfs_perag** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call %struct.xfs_ag_resv* @xfs_perag_resv(%struct.xfs_perag* %72, i32 %73)
  store %struct.xfs_ag_resv* %74, %struct.xfs_ag_resv** %11, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load %struct.xfs_ag_resv*, %struct.xfs_ag_resv** %11, align 8
  %77 = getelementptr inbounds %struct.xfs_ag_resv, %struct.xfs_ag_resv* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  %78 = load i64, i64* %13, align 8
  %79 = load %struct.xfs_ag_resv*, %struct.xfs_ag_resv** %11, align 8
  %80 = getelementptr inbounds %struct.xfs_ag_resv, %struct.xfs_ag_resv* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* %9, align 8
  %83 = sub nsw i64 %81, %82
  %84 = load %struct.xfs_ag_resv*, %struct.xfs_ag_resv** %11, align 8
  %85 = getelementptr inbounds %struct.xfs_ag_resv, %struct.xfs_ag_resv* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.xfs_perag*, %struct.xfs_perag** %6, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i64, i64* %8, align 8
  %89 = call i32 @trace_xfs_ag_resv_init(%struct.xfs_perag* %86, i32 %87, i64 %88)
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %71, %42, %30
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_mod_fdblocks(%struct.xfs_mount*, i32, i32) #1

declare dso_local i32 @trace_xfs_ag_resv_init_error(%struct.xfs_mount*, i32, i32, i32) #1

declare dso_local i32 @xfs_warn(%struct.xfs_mount*, i8*, i32) #1

declare dso_local %struct.xfs_ag_resv* @xfs_perag_resv(%struct.xfs_perag*, i32) #1

declare dso_local i32 @trace_xfs_ag_resv_init(%struct.xfs_perag*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
