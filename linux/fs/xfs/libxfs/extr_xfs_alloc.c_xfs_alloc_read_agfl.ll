; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_alloc.c_xfs_alloc_read_agfl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_alloc.c_xfs_alloc_read_agfl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@NULLAGNUMBER = common dso_local global i64 0, align 8
@xfs_agfl_buf_ops = common dso_local global i32 0, align 4
@XFS_AGFL_REF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_alloc_read_agfl(%struct.TYPE_7__* %0, i32* %1, i64 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32** %3, i32*** %9, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @NULLAGNUMBER, align 8
  %14 = icmp ne i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = call i32 @XFS_AGFL_DADDR(%struct.TYPE_7__* %24)
  %26 = call i32 @XFS_AG_DADDR(%struct.TYPE_7__* %22, i64 %23, i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = call i32 @XFS_FSS_TO_BB(%struct.TYPE_7__* %27, i32 1)
  %29 = call i32 @xfs_trans_read_buf(%struct.TYPE_7__* %17, i32* %18, i32 %21, i32 %26, i32 %28, i32 0, i32** %10, i32* @xfs_agfl_buf_ops)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %5, align 4
  br label %40

34:                                               ; preds = %4
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* @XFS_AGFL_REF, align 4
  %37 = call i32 @xfs_buf_set_ref(i32* %35, i32 %36)
  %38 = load i32*, i32** %10, align 8
  %39 = load i32**, i32*** %9, align 8
  store i32* %38, i32** %39, align 8
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %34, %32
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_trans_read_buf(%struct.TYPE_7__*, i32*, i32, i32, i32, i32, i32**, i32*) #1

declare dso_local i32 @XFS_AG_DADDR(%struct.TYPE_7__*, i64, i32) #1

declare dso_local i32 @XFS_AGFL_DADDR(%struct.TYPE_7__*) #1

declare dso_local i32 @XFS_FSS_TO_BB(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @xfs_buf_set_ref(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
