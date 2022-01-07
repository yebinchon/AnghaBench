; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst.c_skl_set_dsp_D3.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst.c_skl_set_dsp_D3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { %struct.TYPE_5__, i32, %struct.skl_dev* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.sst_dsp.0*)* }
%struct.sst_dsp.0 = type opaque
%struct.skl_dev = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.skl_ipc_dxstate_info = type { i32, i32 }

@SKL_IPC_D3_MASK = common dso_local global i32 0, align 4
@SKL_INSTANCE_ID = common dso_local global i32 0, align 4
@SKL_BASE_FW_MODULE_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"set Dx core %d fail: %d\0A\00", align 1
@SKL_DSP_CORE0_ID = common dso_local global i32 0, align 4
@SKL_DSP_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_dsp*, i32)* @skl_set_dsp_D3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_set_dsp_D3(%struct.sst_dsp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sst_dsp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.skl_ipc_dxstate_info, align 4
  %8 = alloca %struct.skl_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %11 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %10, i32 0, i32 2
  %12 = load %struct.skl_dev*, %struct.skl_dev** %11, align 8
  store %struct.skl_dev* %12, %struct.skl_dev** %8, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @SKL_DSP_CORE_MASK(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = getelementptr inbounds %struct.skl_ipc_dxstate_info, %struct.skl_ipc_dxstate_info* %7, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @SKL_IPC_D3_MASK, align 4
  %18 = getelementptr inbounds %struct.skl_ipc_dxstate_info, %struct.skl_ipc_dxstate_info* %7, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load %struct.skl_dev*, %struct.skl_dev** %8, align 8
  %20 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %19, i32 0, i32 1
  %21 = load i32, i32* @SKL_INSTANCE_ID, align 4
  %22 = load i32, i32* @SKL_BASE_FW_MODULE_ID, align 4
  %23 = call i32 @skl_ipc_set_dx(i32* %20, i32 %21, i32 %22, %struct.skl_ipc_dxstate_info* %7)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %28 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %26, %2
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @SKL_DSP_CORE0_ID, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %39 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32 (%struct.sst_dsp.0*)*, i32 (%struct.sst_dsp.0*)** %41, align 8
  %43 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %44 = bitcast %struct.sst_dsp* %43 to %struct.sst_dsp.0*
  %45 = call i32 %42(%struct.sst_dsp.0* %44)
  %46 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %47 = call i32 @skl_cldma_int_disable(%struct.sst_dsp* %46)
  %48 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %49 = call i32 @skl_ipc_op_int_disable(%struct.sst_dsp* %48)
  %50 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %51 = call i32 @skl_ipc_int_disable(%struct.sst_dsp* %50)
  br label %52

52:                                               ; preds = %37, %33
  %53 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @skl_dsp_disable_core(%struct.sst_dsp* %53, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %70

60:                                               ; preds = %52
  %61 = load i32, i32* @SKL_DSP_RESET, align 4
  %62 = load %struct.skl_dev*, %struct.skl_dev** %8, align 8
  %63 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %61, i32* %68, align 4
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %60, %58
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @SKL_DSP_CORE_MASK(i32) #1

declare dso_local i32 @skl_ipc_set_dx(i32*, i32, i32, %struct.skl_ipc_dxstate_info*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @skl_cldma_int_disable(%struct.sst_dsp*) #1

declare dso_local i32 @skl_ipc_op_int_disable(%struct.sst_dsp*) #1

declare dso_local i32 @skl_ipc_int_disable(%struct.sst_dsp*) #1

declare dso_local i32 @skl_dsp_disable_core(%struct.sst_dsp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
