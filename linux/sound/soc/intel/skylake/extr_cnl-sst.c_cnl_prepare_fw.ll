; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_cnl-sst.c_cnl_prepare_fw.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_cnl-sst.c_cnl_prepare_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (i32, i32, i32, %struct.TYPE_5__*)*, i32, i32 (i32, %struct.TYPE_5__*, i32)* }

@.str = private unnamed_addr constant [26 x i8] c"dma prepare failed: 0%#x\0A\00", align 1
@CNL_ADSP_REG_HIPCIDR = common dso_local global i32 0, align 4
@CNL_ADSP_REG_HIPCIDR_BUSY = common dso_local global i32 0, align 4
@CNL_IPC_PURGE = common dso_local global i32 0, align 4
@CNL_ROM_CTRL_DMA_ID = common dso_local global i32 0, align 4
@SKL_DSP_CORE0_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"dsp boot core failed ret: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@CNL_ADSP_FW_STATUS = common dso_local global i32 0, align 4
@CNL_FW_STS_MASK = common dso_local global i32 0, align 4
@CNL_FW_ROM_INIT = common dso_local global i32 0, align 4
@CNL_INIT_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"rom load\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"rom init timeout, ret: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_dsp*, i8*, i32)* @cnl_prepare_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnl_prepare_fw(%struct.sst_dsp* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sst_dsp*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %11 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32 (i32, i32, i32, %struct.TYPE_5__*)*, i32 (i32, i32, i32, %struct.TYPE_5__*)** %12, align 8
  %14 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %15 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %19 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %18, i32 0, i32 0
  %20 = call i32 %13(i32 %16, i32 64, i32 %17, %struct.TYPE_5__* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %25 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %4, align 4
  br label %102

30:                                               ; preds = %3
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %33 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 8
  %35 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %36 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @memcpy(i32 %38, i8* %39, i32 %40)
  %42 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %43 = load i32, i32* @CNL_ADSP_REG_HIPCIDR, align 4
  %44 = load i32, i32* @CNL_ADSP_REG_HIPCIDR_BUSY, align 4
  %45 = load i32, i32* @CNL_IPC_PURGE, align 4
  %46 = load i32, i32* %9, align 4
  %47 = sub nsw i32 %46, 1
  %48 = load i32, i32* @CNL_ROM_CTRL_DMA_ID, align 4
  %49 = shl i32 %47, %48
  %50 = or i32 %45, %49
  %51 = or i32 %44, %50
  %52 = call i32 @sst_dsp_shim_write(%struct.sst_dsp* %42, i32 %43, i32 %51)
  %53 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %54 = load i32, i32* @SKL_DSP_CORE0_MASK, align 4
  %55 = call i32 @cnl_dsp_enable_core(%struct.sst_dsp* %53, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %30
  %59 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %60 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %8, align 4
  br label %86

66:                                               ; preds = %30
  %67 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %68 = call i32 @cnl_ipc_int_enable(%struct.sst_dsp* %67)
  %69 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %70 = call i32 @cnl_ipc_op_int_enable(%struct.sst_dsp* %69)
  %71 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %72 = load i32, i32* @CNL_ADSP_FW_STATUS, align 4
  %73 = load i32, i32* @CNL_FW_STS_MASK, align 4
  %74 = load i32, i32* @CNL_FW_ROM_INIT, align 4
  %75 = load i32, i32* @CNL_INIT_TIMEOUT, align 4
  %76 = call i32 @sst_dsp_register_poll(%struct.sst_dsp* %71, i32 %72, i32 %73, i32 %74, i32 %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %66
  %80 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %81 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  br label %86

85:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %102

86:                                               ; preds = %79, %58
  %87 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %88 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i32 (i32, %struct.TYPE_5__*, i32)*, i32 (i32, %struct.TYPE_5__*, i32)** %89, align 8
  %91 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %92 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %95 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %94, i32 0, i32 0
  %96 = load i32, i32* %9, align 4
  %97 = call i32 %90(i32 %93, %struct.TYPE_5__* %95, i32 %96)
  %98 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %99 = load i32, i32* @SKL_DSP_CORE0_MASK, align 4
  %100 = call i32 @cnl_dsp_disable_core(%struct.sst_dsp* %98, i32 %99)
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %86, %85, %23
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @sst_dsp_shim_write(%struct.sst_dsp*, i32, i32) #1

declare dso_local i32 @cnl_dsp_enable_core(%struct.sst_dsp*, i32) #1

declare dso_local i32 @cnl_ipc_int_enable(%struct.sst_dsp*) #1

declare dso_local i32 @cnl_ipc_op_int_enable(%struct.sst_dsp*) #1

declare dso_local i32 @sst_dsp_register_poll(%struct.sst_dsp*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @cnl_dsp_disable_core(%struct.sst_dsp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
