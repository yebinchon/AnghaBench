; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_rmap.c_xchk_xref_has_no_owner.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_rmap.c_xchk_xref_has_no_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xchk_xref_has_no_owner(%struct.xfs_scrub* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xfs_scrub*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %10 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %16 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @xchk_skip_xref(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %3
  br label %46

21:                                               ; preds = %14
  %22 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %23 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @xfs_rmap_has_record(i32 %25, i32 %26, i32 %27, i32* %7)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %30 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %31 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @xchk_should_check_xref(%struct.xfs_scrub* %29, i32* %8, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %21
  br label %46

36:                                               ; preds = %21
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %41 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %42 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @xchk_btree_xref_set_corrupt(%struct.xfs_scrub* %40, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %20, %35, %39, %36
  ret void
}

declare dso_local i64 @xchk_skip_xref(i32) #1

declare dso_local i32 @xfs_rmap_has_record(i32, i32, i32, i32*) #1

declare dso_local i32 @xchk_should_check_xref(%struct.xfs_scrub*, i32*, i32*) #1

declare dso_local i32 @xchk_btree_xref_set_corrupt(%struct.xfs_scrub*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
