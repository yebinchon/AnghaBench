; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_agheader.c_xchk_agi_xref_icounts.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_agheader.c_xchk_agi_xref_icounts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.xfs_agi = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_scrub*)* @xchk_agi_xref_icounts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xchk_agi_xref_icounts(%struct.xfs_scrub* %0) #0 {
  %2 = alloca %struct.xfs_scrub*, align 8
  %3 = alloca %struct.xfs_agi*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %2, align 8
  %7 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %8 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.xfs_agi* @XFS_BUF_TO_AGI(i32 %10)
  store %struct.xfs_agi* %11, %struct.xfs_agi** %3, align 8
  %12 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %13 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %52

18:                                               ; preds = %1
  %19 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %20 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @xfs_ialloc_count_inodes(i32 %22, i64* %4, i64* %5)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %25 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %26 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = call i32 @xchk_should_check_xref(%struct.xfs_scrub* %24, i32* %6, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %18
  br label %52

31:                                               ; preds = %18
  %32 = load %struct.xfs_agi*, %struct.xfs_agi** %3, align 8
  %33 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @be32_to_cpu(i32 %34)
  %36 = load i64, i64* %4, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %45, label %38

38:                                               ; preds = %31
  %39 = load %struct.xfs_agi*, %struct.xfs_agi** %3, align 8
  %40 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @be32_to_cpu(i32 %41)
  %43 = load i64, i64* %5, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %38, %31
  %46 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %47 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %48 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @xchk_block_xref_set_corrupt(%struct.xfs_scrub* %46, i32 %50)
  br label %52

52:                                               ; preds = %17, %30, %45, %38
  ret void
}

declare dso_local %struct.xfs_agi* @XFS_BUF_TO_AGI(i32) #1

declare dso_local i32 @xfs_ialloc_count_inodes(i32, i64*, i64*) #1

declare dso_local i32 @xchk_should_check_xref(%struct.xfs_scrub*, i32*, i32*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @xchk_block_xref_set_corrupt(%struct.xfs_scrub*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
