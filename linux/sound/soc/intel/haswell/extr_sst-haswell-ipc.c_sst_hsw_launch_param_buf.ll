; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_launch_param_buf.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_launch_param_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_hsw = type { i32, i32**, i32 }

@SST_HSW_MODULE_WAVES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"module waves is not active\0A\00", align 1
@WAVES_PARAM_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_hsw_launch_param_buf(%struct.sst_hsw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sst_hsw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sst_hsw* %0, %struct.sst_hsw** %3, align 8
  %6 = load %struct.sst_hsw*, %struct.sst_hsw** %3, align 8
  %7 = load i32, i32* @SST_HSW_MODULE_WAVES, align 4
  %8 = call i32 @sst_hsw_is_module_active(%struct.sst_hsw* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.sst_hsw*, %struct.sst_hsw** %3, align 8
  %12 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @dev_dbg(i32 %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %52

15:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %48, %15
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.sst_hsw*, %struct.sst_hsw** %3, align 8
  %19 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %51

22:                                               ; preds = %16
  %23 = load %struct.sst_hsw*, %struct.sst_hsw** %3, align 8
  %24 = load i32, i32* @SST_HSW_MODULE_WAVES, align 4
  %25 = load %struct.sst_hsw*, %struct.sst_hsw** %3, align 8
  %26 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %25, i32 0, i32 1
  %27 = load i32**, i32*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @WAVES_PARAM_COUNT, align 4
  %35 = load %struct.sst_hsw*, %struct.sst_hsw** %3, align 8
  %36 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %35, i32 0, i32 1
  %37 = load i32**, i32*** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @sst_hsw_module_set_param(%struct.sst_hsw* %23, i32 %24, i32 0, i32 %33, i32 %34, i32* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %22
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %52

47:                                               ; preds = %22
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %16

51:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %45, %10
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @sst_hsw_is_module_active(%struct.sst_hsw*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @sst_hsw_module_set_param(%struct.sst_hsw*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
