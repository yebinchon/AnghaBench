; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_rtbitmap.c_xchk_xref_is_used_rt_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_rtbitmap.c_xchk_xref_is_used_rt_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@XFS_ILOCK_SHARED = common dso_local global i32 0, align 4
@XFS_ILOCK_RTBITMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xchk_xref_is_used_rt_space(%struct.xfs_scrub* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.xfs_scrub*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %13 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @xchk_skip_xref(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %90

18:                                               ; preds = %3
  %19 = load i64, i64* %5, align 8
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = add nsw i64 %20, %21
  %23 = sub nsw i64 %22, 1
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %26 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @do_div(i64 %24, i32 %30)
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %34 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @do_div(i64 %32, i32 %38)
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %7, align 8
  %42 = sub nsw i64 %40, %41
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %9, align 8
  %44 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %45 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load i32, i32* @XFS_ILOCK_SHARED, align 4
  %50 = load i32, i32* @XFS_ILOCK_RTBITMAP, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @xfs_ilock(%struct.TYPE_7__* %48, i32 %51)
  %53 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %54 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %57 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @xfs_rtalloc_extent_is_free(%struct.TYPE_6__* %55, i32 %58, i64 %59, i64 %60, i32* %10)
  store i32 %61, i32* %11, align 4
  %62 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %63 = call i32 @xchk_should_check_xref(%struct.xfs_scrub* %62, i32* %11, i32* null)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %18
  br label %80

66:                                               ; preds = %18
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %71 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %72 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @xchk_ino_xref_set_corrupt(%struct.xfs_scrub* %70, i32 %77)
  br label %79

79:                                               ; preds = %69, %66
  br label %80

80:                                               ; preds = %79, %65
  %81 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %82 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = load i32, i32* @XFS_ILOCK_SHARED, align 4
  %87 = load i32, i32* @XFS_ILOCK_RTBITMAP, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @xfs_iunlock(%struct.TYPE_7__* %85, i32 %88)
  br label %90

90:                                               ; preds = %80, %17
  ret void
}

declare dso_local i64 @xchk_skip_xref(i32) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @xfs_ilock(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @xfs_rtalloc_extent_is_free(%struct.TYPE_6__*, i32, i64, i64, i32*) #1

declare dso_local i32 @xchk_should_check_xref(%struct.xfs_scrub*, i32*, i32*) #1

declare dso_local i32 @xchk_ino_xref_set_corrupt(%struct.xfs_scrub*, i32) #1

declare dso_local i32 @xfs_iunlock(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
