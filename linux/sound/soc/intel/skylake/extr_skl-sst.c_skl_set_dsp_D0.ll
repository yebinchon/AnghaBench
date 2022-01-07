; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst.c_skl_set_dsp_D0.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst.c_skl_set_dsp_D0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32, %struct.TYPE_3__, %struct.skl_dev* }
%struct.TYPE_3__ = type { i32 (%struct.sst_dsp.0*, i32, i32)* }
%struct.sst_dsp.0 = type opaque
%struct.skl_dev = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.skl_ipc_dxstate_info = type { i32, i32 }

@SKL_DSP_CORE0_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unable to load firmware\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"reload libs failed: %d\0A\00", align 1
@SKL_INSTANCE_ID = common dso_local global i32 0, align 4
@SKL_BASE_FW_MODULE_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to set dsp to D0:core id= %d\0A\00", align 1
@SKL_DSP_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_dsp*, i32)* @skl_set_dsp_D0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_set_dsp_D0(%struct.sst_dsp* %0, i32 %1) #0 {
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
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SKL_DSP_CORE0_ID, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %59

18:                                               ; preds = %2
  %19 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %20 = call i32 @skl_load_base_firmware(%struct.sst_dsp* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %25 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i32, i8*, ...) @dev_err(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %102

29:                                               ; preds = %18
  %30 = load %struct.skl_dev*, %struct.skl_dev** %8, align 8
  %31 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %58

34:                                               ; preds = %29
  %35 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %36 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32 (%struct.sst_dsp.0*, i32, i32)*, i32 (%struct.sst_dsp.0*, i32, i32)** %37, align 8
  %39 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %40 = bitcast %struct.sst_dsp* %39 to %struct.sst_dsp.0*
  %41 = load %struct.skl_dev*, %struct.skl_dev** %8, align 8
  %42 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.skl_dev*, %struct.skl_dev** %8, align 8
  %45 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 %38(%struct.sst_dsp.0* %40, i32 %43, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %34
  %51 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %52 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 (i32, i8*, ...) @dev_err(i32 %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %102

57:                                               ; preds = %34
  br label %58

58:                                               ; preds = %57, %29
  br label %59

59:                                               ; preds = %58, %2
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @SKL_DSP_CORE0_ID, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %93

63:                                               ; preds = %59
  %64 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @skl_dsp_enable_core(%struct.sst_dsp* %64, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %102

71:                                               ; preds = %63
  %72 = load i32, i32* %9, align 4
  %73 = getelementptr inbounds %struct.skl_ipc_dxstate_info, %struct.skl_ipc_dxstate_info* %7, i32 0, i32 0
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* %9, align 4
  %75 = getelementptr inbounds %struct.skl_ipc_dxstate_info, %struct.skl_ipc_dxstate_info* %7, i32 0, i32 1
  store i32 %74, i32* %75, align 4
  %76 = load %struct.skl_dev*, %struct.skl_dev** %8, align 8
  %77 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %76, i32 0, i32 2
  %78 = load i32, i32* @SKL_INSTANCE_ID, align 4
  %79 = load i32, i32* @SKL_BASE_FW_MODULE_ID, align 4
  %80 = call i32 @skl_ipc_set_dx(i32* %77, i32 %78, i32 %79, %struct.skl_ipc_dxstate_info* %7)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %71
  %84 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %85 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 (i32, i8*, ...) @dev_err(i32 %86, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @skl_dsp_disable_core(%struct.sst_dsp* %89, i32 %90)
  br label %92

92:                                               ; preds = %83, %71
  br label %93

93:                                               ; preds = %92, %59
  %94 = load i32, i32* @SKL_DSP_RUNNING, align 4
  %95 = load %struct.skl_dev*, %struct.skl_dev** %8, align 8
  %96 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %94, i32* %101, align 4
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %93, %69, %50, %23
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @SKL_DSP_CORE_MASK(i32) #1

declare dso_local i32 @skl_load_base_firmware(%struct.sst_dsp*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @skl_dsp_enable_core(%struct.sst_dsp*, i32) #1

declare dso_local i32 @skl_ipc_set_dx(i32*, i32, i32, %struct.skl_ipc_dxstate_info*) #1

declare dso_local i32 @skl_dsp_disable_core(%struct.sst_dsp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
