; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_cnl-sst.c_cnl_set_dsp_D0.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_cnl-sst.c_cnl_set_dsp_D0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32, %struct.skl_dev* }
%struct.skl_dev = type { i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i8** }
%struct.skl_ipc_dxstate_info = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"fw reload failed: %d\0A\00", align 1
@SKL_DSP_RUNNING = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"enable dsp core %d failed: %d\0A\00", align 1
@SKL_DSP_CORE0_ID = common dso_local global i32 0, align 4
@SKL_IPC_BOOT_MSECS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"dsp boot timeout, status=%#x error=%#x\0A\00", align 1
@CNL_ADSP_FW_STATUS = common dso_local global i32 0, align 4
@CNL_ADSP_ERROR_CODE = common dso_local global i32 0, align 4
@CNL_INSTANCE_ID = common dso_local global i32 0, align 4
@CNL_BASE_FW_MODULE_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"set_dx failed, core: %d ret: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_dsp*, i32)* @cnl_set_dsp_D0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnl_set_dsp_D0(%struct.sst_dsp* %0, i32 %1) #0 {
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
  %15 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %16 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %43, label %19

19:                                               ; preds = %2
  %20 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %21 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %23 = call i32 @cnl_load_base_firmware(%struct.sst_dsp* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %28 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %3, align 4
  br label %124

33:                                               ; preds = %19
  %34 = load i8*, i8** @SKL_DSP_RUNNING, align 8
  %35 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %36 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i8**, i8*** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  store i8* %34, i8** %41, align 8
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %3, align 4
  br label %124

43:                                               ; preds = %2
  %44 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @cnl_dsp_enable_core(%struct.sst_dsp* %44, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %51 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54)
  br label %119

56:                                               ; preds = %43
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @SKL_DSP_CORE0_ID, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %90

60:                                               ; preds = %56
  %61 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %62 = call i32 @cnl_ipc_int_enable(%struct.sst_dsp* %61)
  %63 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %64 = call i32 @cnl_ipc_op_int_enable(%struct.sst_dsp* %63)
  %65 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %66 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  %67 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %68 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %71 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @SKL_IPC_BOOT_MSECS, align 4
  %74 = call i32 @msecs_to_jiffies(i32 %73)
  %75 = call i32 @wait_event_timeout(i32 %69, i32 %72, i32 %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %60
  %79 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %80 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %83 = load i32, i32* @CNL_ADSP_FW_STATUS, align 4
  %84 = call i32 @sst_dsp_shim_read(%struct.sst_dsp* %82, i32 %83)
  %85 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %86 = load i32, i32* @CNL_ADSP_ERROR_CODE, align 4
  %87 = call i32 @sst_dsp_shim_read(%struct.sst_dsp* %85, i32 %86)
  %88 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %81, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %87)
  br label %119

89:                                               ; preds = %60
  br label %110

90:                                               ; preds = %56
  %91 = load i32, i32* %7, align 4
  %92 = getelementptr inbounds %struct.skl_ipc_dxstate_info, %struct.skl_ipc_dxstate_info* %8, i32 0, i32 0
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* %7, align 4
  %94 = getelementptr inbounds %struct.skl_ipc_dxstate_info, %struct.skl_ipc_dxstate_info* %8, i32 0, i32 1
  store i32 %93, i32* %94, align 4
  %95 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %96 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %95, i32 0, i32 2
  %97 = load i32, i32* @CNL_INSTANCE_ID, align 4
  %98 = load i32, i32* @CNL_BASE_FW_MODULE_ID, align 4
  %99 = call i32 @skl_ipc_set_dx(i32* %96, i32 %97, i32 %98, %struct.skl_ipc_dxstate_info* %8)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %90
  %103 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %104 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %105, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %106, i32 %107)
  br label %119

109:                                              ; preds = %90
  br label %110

110:                                              ; preds = %109, %89
  %111 = load i8*, i8** @SKL_DSP_RUNNING, align 8
  %112 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %113 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i8**, i8*** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  store i8* %111, i8** %118, align 8
  store i32 0, i32* %3, align 4
  br label %124

119:                                              ; preds = %102, %78, %49
  %120 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @cnl_dsp_disable_core(%struct.sst_dsp* %120, i32 %121)
  %123 = load i32, i32* %9, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %119, %110, %33, %26
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @SKL_DSP_CORE_MASK(i32) #1

declare dso_local i32 @cnl_load_base_firmware(%struct.sst_dsp*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @cnl_dsp_enable_core(%struct.sst_dsp*, i32) #1

declare dso_local i32 @cnl_ipc_int_enable(%struct.sst_dsp*) #1

declare dso_local i32 @cnl_ipc_op_int_enable(%struct.sst_dsp*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @sst_dsp_shim_read(%struct.sst_dsp*, i32) #1

declare dso_local i32 @skl_ipc_set_dx(i32*, i32, i32, %struct.skl_ipc_dxstate_info*) #1

declare dso_local i32 @cnl_dsp_disable_core(%struct.sst_dsp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
