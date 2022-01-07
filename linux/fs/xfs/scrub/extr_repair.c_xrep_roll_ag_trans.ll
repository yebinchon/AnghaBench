; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_repair.c_xrep_roll_ag_trans.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_repair.c_xrep_roll_ag_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xrep_roll_ag_trans(%struct.xfs_scrub* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_scrub*, align 8
  %4 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %3, align 8
  %5 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %6 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %12 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %15 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @xfs_trans_bhold(i32 %13, i64 %17)
  br label %19

19:                                               ; preds = %10, %1
  %20 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %21 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %27 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %30 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @xfs_trans_bhold(i32 %28, i64 %32)
  br label %34

34:                                               ; preds = %25, %19
  %35 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %36 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %42 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %45 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @xfs_trans_bhold(i32 %43, i64 %47)
  br label %49

49:                                               ; preds = %40, %34
  %50 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %51 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %50, i32 0, i32 1
  %52 = call i32 @xfs_trans_roll(i32* %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %103

57:                                               ; preds = %49
  %58 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %59 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %65 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %68 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @xfs_trans_bjoin(i32 %66, i64 %70)
  br label %72

72:                                               ; preds = %63, %57
  %73 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %74 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %72
  %79 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %80 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %83 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @xfs_trans_bjoin(i32 %81, i64 %85)
  br label %87

87:                                               ; preds = %78, %72
  %88 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %89 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %87
  %94 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %95 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %98 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @xfs_trans_bjoin(i32 %96, i64 %100)
  br label %102

102:                                              ; preds = %93, %87
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %102, %55
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @xfs_trans_bhold(i32, i64) #1

declare dso_local i32 @xfs_trans_roll(i32*) #1

declare dso_local i32 @xfs_trans_bjoin(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
