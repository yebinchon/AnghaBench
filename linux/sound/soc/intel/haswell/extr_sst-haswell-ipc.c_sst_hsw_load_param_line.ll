; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_load_param_line.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_load_param_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_hsw = type { i32, i64**, i32 }

@WAVES_PARAM_LINES = common dso_local global i32 0, align 4
@WAVES_PARAM_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"end of buffer, roll to the beginning\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_hsw_load_param_line(%struct.sst_hsw* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sst_hsw*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store %struct.sst_hsw* %0, %struct.sst_hsw** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %47, %2
  %8 = load %struct.sst_hsw*, %struct.sst_hsw** %4, align 8
  %9 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @WAVES_PARAM_LINES, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %48

13:                                               ; preds = %7
  %14 = load %struct.sst_hsw*, %struct.sst_hsw** %4, align 8
  %15 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %14, i32 0, i32 1
  %16 = load i64**, i64*** %15, align 8
  %17 = load %struct.sst_hsw*, %struct.sst_hsw** %4, align 8
  %18 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64*, i64** %16, i64 %20
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %6, align 8
  %25 = load %struct.sst_hsw*, %struct.sst_hsw** %4, align 8
  %26 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  %29 = load i64*, i64** %5, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %13
  %35 = load i64*, i64** %5, align 8
  %36 = load %struct.sst_hsw*, %struct.sst_hsw** %4, align 8
  %37 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %36, i32 0, i32 1
  %38 = load i64**, i64*** %37, align 8
  %39 = load %struct.sst_hsw*, %struct.sst_hsw** %4, align 8
  %40 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64*, i64** %38, i64 %42
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* @WAVES_PARAM_COUNT, align 4
  %46 = call i32 @memcpy(i64* %35, i64* %44, i32 %45)
  br label %48

47:                                               ; preds = %13
  br label %7

48:                                               ; preds = %34, %7
  %49 = load %struct.sst_hsw*, %struct.sst_hsw** %4, align 8
  %50 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @WAVES_PARAM_LINES, align 4
  %53 = sub nsw i32 %52, 1
  %54 = icmp sgt i32 %51, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load %struct.sst_hsw*, %struct.sst_hsw** %4, align 8
  %57 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @dev_dbg(i32 %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.sst_hsw*, %struct.sst_hsw** %4, align 8
  %61 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  store i32 0, i32* %3, align 4
  br label %63

62:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %55
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
