; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_cnl-sst.c_cnl_set_dsp_D3.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_cnl-sst.c_cnl_set_dsp_D3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32, %struct.skl_dev* }
%struct.skl_dev = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.skl_ipc_dxstate_info = type { i32, i32 }

@SKL_IPC_D3_MASK = common dso_local global i32 0, align 4
@CNL_INSTANCE_ID = common dso_local global i32 0, align 4
@CNL_BASE_FW_MODULE_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"dsp core %d to d3 failed; continue reset\0A\00", align 1
@SKL_DSP_CORE0_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"disable dsp core %d failed: %d\0A\00", align 1
@SKL_DSP_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_dsp*, i32)* @cnl_set_dsp_D3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnl_set_dsp_D3(%struct.sst_dsp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sst_dsp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.skl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.skl_ipc_dxstate_info, align 4
  %9 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %11 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %10, i32 0, i32 1
  %12 = load %struct.skl_dev*, %struct.skl_dev** %11, align 8
  store %struct.skl_dev* %12, %struct.skl_dev** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @SKL_DSP_CORE_MASK(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = getelementptr inbounds %struct.skl_ipc_dxstate_info, %struct.skl_ipc_dxstate_info* %8, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @SKL_IPC_D3_MASK, align 4
  %18 = getelementptr inbounds %struct.skl_ipc_dxstate_info, %struct.skl_ipc_dxstate_info* %8, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %20 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %19, i32 0, i32 2
  %21 = load i32, i32* @CNL_INSTANCE_ID, align 4
  %22 = load i32, i32* @CNL_BASE_FW_MODULE_ID, align 4
  %23 = call i32 @skl_ipc_set_dx(i32* %20, i32 %21, i32 %22, %struct.skl_ipc_dxstate_info* %8)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %2
  %27 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %28 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %29, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %33 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  br label %34

34:                                               ; preds = %26, %2
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SKL_DSP_CORE0_ID, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %40 = call i32 @skl_ipc_op_int_disable(%struct.sst_dsp* %39)
  %41 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %42 = call i32 @skl_ipc_int_disable(%struct.sst_dsp* %41)
  br label %43

43:                                               ; preds = %38, %34
  %44 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @cnl_dsp_disable_core(%struct.sst_dsp* %44, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %51 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %3, align 4
  br label %67

57:                                               ; preds = %43
  %58 = load i32, i32* @SKL_DSP_RESET, align 4
  %59 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %60 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %58, i32* %65, align 4
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %57, %49
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @SKL_DSP_CORE_MASK(i32) #1

declare dso_local i32 @skl_ipc_set_dx(i32*, i32, i32, %struct.skl_ipc_dxstate_info*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @skl_ipc_op_int_disable(%struct.sst_dsp*) #1

declare dso_local i32 @skl_ipc_int_disable(%struct.sst_dsp*) #1

declare dso_local i32 @cnl_dsp_disable_core(%struct.sst_dsp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
