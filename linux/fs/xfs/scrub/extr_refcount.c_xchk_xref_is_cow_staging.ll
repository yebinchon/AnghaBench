; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_refcount.c_xchk_xref_is_cow_staging.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_refcount.c_xchk_xref_is_cow_staging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_refcount_irec = type { i32, i32, i64 }

@XFS_REFC_COW_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xchk_xref_is_cow_staging(%struct.xfs_scrub* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.xfs_scrub*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.xfs_refcount_irec, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %12 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %18 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @xchk_skip_xref(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %3
  br label %103

23:                                               ; preds = %16
  %24 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %25 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %5, align 8
  %29 = load i32, i32* @XFS_REFC_COW_START, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = call i32 @xfs_refcount_lookup_le(i32 %27, i64 %31, i32* %9)
  store i32 %32, i32* %10, align 4
  %33 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %34 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %35 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @xchk_should_check_xref(%struct.xfs_scrub* %33, i32* %10, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %23
  br label %103

40:                                               ; preds = %23
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %40
  %44 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %45 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %46 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @xchk_btree_xref_set_corrupt(%struct.xfs_scrub* %44, i32 %48, i32 0)
  br label %103

50:                                               ; preds = %40
  %51 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %52 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @xfs_refcount_get_rec(i32 %54, %struct.xfs_refcount_irec* %7, i32* %9)
  store i32 %55, i32* %10, align 4
  %56 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %57 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %58 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @xchk_should_check_xref(%struct.xfs_scrub* %56, i32* %10, i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %50
  br label %103

63:                                               ; preds = %50
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %63
  %67 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %68 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %69 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @xchk_btree_xref_set_corrupt(%struct.xfs_scrub* %67, i32 %71, i32 0)
  br label %103

73:                                               ; preds = %63
  %74 = getelementptr inbounds %struct.xfs_refcount_irec, %struct.xfs_refcount_irec* %7, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @XFS_REFC_COW_START, align 4
  %77 = and i32 %75, %76
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.xfs_refcount_irec, %struct.xfs_refcount_irec* %7, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 1
  br i1 %83, label %84, label %91

84:                                               ; preds = %80, %73
  %85 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %86 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %87 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @xchk_btree_xref_set_corrupt(%struct.xfs_scrub* %85, i32 %89, i32 0)
  br label %91

91:                                               ; preds = %84, %80
  %92 = getelementptr inbounds %struct.xfs_refcount_irec, %struct.xfs_refcount_irec* %7, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %6, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %98 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %99 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @xchk_btree_xref_set_corrupt(%struct.xfs_scrub* %97, i32 %101, i32 0)
  br label %103

103:                                              ; preds = %22, %39, %43, %62, %66, %96, %91
  ret void
}

declare dso_local i64 @xchk_skip_xref(i32) #1

declare dso_local i32 @xfs_refcount_lookup_le(i32, i64, i32*) #1

declare dso_local i32 @xchk_should_check_xref(%struct.xfs_scrub*, i32*, i32*) #1

declare dso_local i32 @xchk_btree_xref_set_corrupt(%struct.xfs_scrub*, i32, i32) #1

declare dso_local i32 @xfs_refcount_get_rec(i32, %struct.xfs_refcount_irec*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
