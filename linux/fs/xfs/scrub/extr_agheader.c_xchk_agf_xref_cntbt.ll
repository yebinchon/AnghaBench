; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_agheader.c_xchk_agf_xref_cntbt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_agheader.c_xchk_agf_xref_cntbt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.xfs_agf = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_scrub*)* @xchk_agf_xref_cntbt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xchk_agf_xref_cntbt(%struct.xfs_scrub* %0) #0 {
  %2 = alloca %struct.xfs_scrub*, align 8
  %3 = alloca %struct.xfs_agf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %2, align 8
  %8 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %9 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.xfs_agf* @XFS_BUF_TO_AGF(i32 %11)
  store %struct.xfs_agf* %12, %struct.xfs_agf** %3, align 8
  %13 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %14 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %79

19:                                               ; preds = %1
  %20 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %21 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @xfs_alloc_lookup_le(i32 %23, i32 0, i32 -1, i32* %6)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %26 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %27 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = call i32 @xchk_should_check_xref(%struct.xfs_scrub* %25, i32* %7, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %19
  br label %79

32:                                               ; preds = %19
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %32
  %36 = load %struct.xfs_agf*, %struct.xfs_agf** %3, align 8
  %37 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @cpu_to_be32(i32 0)
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %43 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %44 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @xchk_block_xref_set_corrupt(%struct.xfs_scrub* %42, i32 %46)
  br label %48

48:                                               ; preds = %41, %35
  br label %79

49:                                               ; preds = %32
  %50 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %51 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @xfs_alloc_get_rec(i32 %53, i32* %4, i64* %5, i32* %6)
  store i32 %54, i32* %7, align 4
  %55 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %56 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %57 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = call i32 @xchk_should_check_xref(%struct.xfs_scrub* %55, i32* %7, i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %49
  br label %79

62:                                               ; preds = %49
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load i64, i64* %5, align 8
  %67 = load %struct.xfs_agf*, %struct.xfs_agf** %3, align 8
  %68 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @be32_to_cpu(i32 %69)
  %71 = icmp ne i64 %66, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %65, %62
  %73 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %74 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %75 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @xchk_block_xref_set_corrupt(%struct.xfs_scrub* %73, i32 %77)
  br label %79

79:                                               ; preds = %18, %31, %48, %61, %72, %65
  ret void
}

declare dso_local %struct.xfs_agf* @XFS_BUF_TO_AGF(i32) #1

declare dso_local i32 @xfs_alloc_lookup_le(i32, i32, i32, i32*) #1

declare dso_local i32 @xchk_should_check_xref(%struct.xfs_scrub*, i32*, i32*) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @xchk_block_xref_set_corrupt(%struct.xfs_scrub*, i32) #1

declare dso_local i32 @xfs_alloc_get_rec(i32, i32*, i64*, i32*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
