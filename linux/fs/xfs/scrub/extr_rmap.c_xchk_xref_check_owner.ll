; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_rmap.c_xchk_xref_check_owner.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_rmap.c_xchk_xref_check_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_owner_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_scrub*, i32, i32, %struct.xfs_owner_info*, i32)* @xchk_xref_check_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xchk_xref_check_owner(%struct.xfs_scrub* %0, i32 %1, i32 %2, %struct.xfs_owner_info* %3, i32 %4) #0 {
  %6 = alloca %struct.xfs_scrub*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.xfs_owner_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.xfs_owner_info* %3, %struct.xfs_owner_info** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.xfs_scrub*, %struct.xfs_scrub** %6, align 8
  %14 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %5
  %19 = load %struct.xfs_scrub*, %struct.xfs_scrub** %6, align 8
  %20 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @xchk_skip_xref(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %5
  br label %52

25:                                               ; preds = %18
  %26 = load %struct.xfs_scrub*, %struct.xfs_scrub** %6, align 8
  %27 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.xfs_owner_info*, %struct.xfs_owner_info** %9, align 8
  %33 = call i32 @xfs_rmap_record_exists(i32 %29, i32 %30, i32 %31, %struct.xfs_owner_info* %32, i32* %11)
  store i32 %33, i32* %12, align 4
  %34 = load %struct.xfs_scrub*, %struct.xfs_scrub** %6, align 8
  %35 = load %struct.xfs_scrub*, %struct.xfs_scrub** %6, align 8
  %36 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @xchk_should_check_xref(%struct.xfs_scrub* %34, i32* %12, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %25
  br label %52

41:                                               ; preds = %25
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load %struct.xfs_scrub*, %struct.xfs_scrub** %6, align 8
  %47 = load %struct.xfs_scrub*, %struct.xfs_scrub** %6, align 8
  %48 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @xchk_btree_xref_set_corrupt(%struct.xfs_scrub* %46, i32 %50, i32 0)
  br label %52

52:                                               ; preds = %24, %40, %45, %41
  ret void
}

declare dso_local i64 @xchk_skip_xref(i32) #1

declare dso_local i32 @xfs_rmap_record_exists(i32, i32, i32, %struct.xfs_owner_info*, i32*) #1

declare dso_local i32 @xchk_should_check_xref(%struct.xfs_scrub*, i32*, i32*) #1

declare dso_local i32 @xchk_btree_xref_set_corrupt(%struct.xfs_scrub*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
