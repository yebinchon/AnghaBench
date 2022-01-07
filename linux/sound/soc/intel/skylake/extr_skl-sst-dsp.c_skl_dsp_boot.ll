; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-dsp.c_skl_dsp_boot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-dsp.c_skl_dsp_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32 }

@SKL_DSP_CORE0_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"dsp core0 reset fail: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"dsp core0 start fail: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"dsp core0 disable fail: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skl_dsp_boot(%struct.sst_dsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sst_dsp*, align 8
  %4 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %3, align 8
  %5 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %6 = load i32, i32* @SKL_DSP_CORE0_MASK, align 4
  %7 = call i64 @is_skl_dsp_core_enable(%struct.sst_dsp* %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %1
  %10 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %11 = load i32, i32* @SKL_DSP_CORE0_MASK, align 4
  %12 = call i32 @skl_dsp_reset_core(%struct.sst_dsp* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %9
  %16 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %17 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %55

22:                                               ; preds = %9
  %23 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %24 = load i32, i32* @SKL_DSP_CORE0_MASK, align 4
  %25 = call i32 @skl_dsp_start_core(%struct.sst_dsp* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %30 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %55

35:                                               ; preds = %22
  br label %53

36:                                               ; preds = %1
  %37 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %38 = load i32, i32* @SKL_DSP_CORE0_MASK, align 4
  %39 = call i32 @skl_dsp_disable_core(%struct.sst_dsp* %37, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %44 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %55

49:                                               ; preds = %36
  %50 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %51 = load i32, i32* @SKL_DSP_CORE0_MASK, align 4
  %52 = call i32 @skl_dsp_enable_core(%struct.sst_dsp* %50, i32 %51)
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %49, %35
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %42, %28, %15
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @is_skl_dsp_core_enable(%struct.sst_dsp*, i32) #1

declare dso_local i32 @skl_dsp_reset_core(%struct.sst_dsp*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @skl_dsp_start_core(%struct.sst_dsp*, i32) #1

declare dso_local i32 @skl_dsp_disable_core(%struct.sst_dsp*, i32) #1

declare dso_local i32 @skl_dsp_enable_core(%struct.sst_dsp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
