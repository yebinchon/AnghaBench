; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_bxt-sst.c_sst_bxt_prepare_fw.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_bxt-sst.c_sst_bxt_prepare_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (i32, i32, i32, %struct.TYPE_5__*)*, i32, i32 (i32, %struct.TYPE_5__*, i32)* }

@.str = private unnamed_addr constant [42 x i8] c"Failed to prepare DMA FW loading err: %x\0A\00", align 1
@SKL_DSP_CORE0_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"dsp core0/1 power up failed\0A\00", align 1
@SKL_ADSP_REG_HIPCI = common dso_local global i32 0, align 4
@SKL_ADSP_REG_HIPCI_BUSY = common dso_local global i32 0, align 4
@BXT_IPC_PURGE_FW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Start dsp core failed ret: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SKL_ADSP_REG_HIPCIE = common dso_local global i32 0, align 4
@SKL_ADSP_REG_HIPCIE_DONE = common dso_local global i32 0, align 4
@BXT_INIT_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"HIPCIE Done\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Timeout for Purge Request%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"dsp core1 power down failed\0A\00", align 1
@BXT_ADSP_FW_STATUS = common dso_local global i32 0, align 4
@SKL_FW_STS_MASK = common dso_local global i32 0, align 4
@SKL_FW_INIT = common dso_local global i32 0, align 4
@BXT_ROM_INIT_TIMEOUT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"ROM Load\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Timeout for ROM init, ret:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_dsp*, i8*, i32)* @sst_bxt_prepare_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_bxt_prepare_fw(%struct.sst_dsp* %0, i8* %1, i32 %2) #0 {
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
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %25 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 (i32, i8*, ...) @dev_err(i32 %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %144

30:                                               ; preds = %3
  %31 = load i32, i32* %8, align 4
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
  %43 = load i32, i32* @SKL_DSP_CORE0_MASK, align 4
  %44 = call i32 @SKL_DSP_CORE_MASK(i32 1)
  %45 = or i32 %43, %44
  %46 = call i32 @skl_dsp_core_power_up(%struct.sst_dsp* %42, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %30
  %50 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %51 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i8*, ...) @dev_err(i32 %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %125

54:                                               ; preds = %30
  %55 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %56 = load i32, i32* @SKL_ADSP_REG_HIPCI, align 4
  %57 = load i32, i32* @SKL_ADSP_REG_HIPCI_BUSY, align 4
  %58 = load i32, i32* @BXT_IPC_PURGE_FW, align 4
  %59 = load i32, i32* %8, align 4
  %60 = sub nsw i32 %59, 1
  %61 = shl i32 %60, 9
  %62 = or i32 %58, %61
  %63 = or i32 %57, %62
  %64 = call i32 @sst_dsp_shim_write(%struct.sst_dsp* %55, i32 %56, i32 %63)
  %65 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %66 = load i32, i32* @SKL_DSP_CORE0_MASK, align 4
  %67 = call i32 @skl_dsp_start_core(%struct.sst_dsp* %65, i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %54
  %71 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %72 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 (i32, i8*, ...) @dev_err(i32 %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %9, align 4
  br label %125

78:                                               ; preds = %54
  %79 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %80 = load i32, i32* @SKL_ADSP_REG_HIPCIE, align 4
  %81 = load i32, i32* @SKL_ADSP_REG_HIPCIE_DONE, align 4
  %82 = load i32, i32* @SKL_ADSP_REG_HIPCIE_DONE, align 4
  %83 = load i32, i32* @BXT_INIT_TIMEOUT, align 4
  %84 = call i32 @sst_dsp_register_poll(%struct.sst_dsp* %79, i32 %80, i32 %81, i32 %82, i32 %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %78
  %88 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %89 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 (i32, i8*, ...) @dev_err(i32 %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  br label %125

93:                                               ; preds = %78
  %94 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %95 = call i32 @SKL_DSP_CORE_MASK(i32 1)
  %96 = call i32 @skl_dsp_core_power_down(%struct.sst_dsp* %94, i32 %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %101 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i32, i8*, ...) @dev_err(i32 %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %125

104:                                              ; preds = %93
  %105 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %106 = call i32 @skl_ipc_int_enable(%struct.sst_dsp* %105)
  %107 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %108 = call i32 @skl_ipc_op_int_enable(%struct.sst_dsp* %107)
  %109 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %110 = load i32, i32* @BXT_ADSP_FW_STATUS, align 4
  %111 = load i32, i32* @SKL_FW_STS_MASK, align 4
  %112 = load i32, i32* @SKL_FW_INIT, align 4
  %113 = load i32, i32* @BXT_ROM_INIT_TIMEOUT, align 4
  %114 = call i32 @sst_dsp_register_poll(%struct.sst_dsp* %109, i32 %110, i32 %111, i32 %112, i32 %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %104
  %118 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %119 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %9, align 4
  %122 = call i32 (i32, i8*, ...) @dev_err(i32 %120, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %121)
  br label %125

123:                                              ; preds = %104
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* %4, align 4
  br label %144

125:                                              ; preds = %117, %99, %87, %70, %49
  %126 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %127 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  %129 = load i32 (i32, %struct.TYPE_5__*, i32)*, i32 (i32, %struct.TYPE_5__*, i32)** %128, align 8
  %130 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %131 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %134 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %133, i32 0, i32 0
  %135 = load i32, i32* %8, align 4
  %136 = call i32 %129(i32 %132, %struct.TYPE_5__* %134, i32 %135)
  %137 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %138 = call i32 @SKL_DSP_CORE_MASK(i32 1)
  %139 = call i32 @skl_dsp_core_power_down(%struct.sst_dsp* %137, i32 %138)
  %140 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %141 = load i32, i32* @SKL_DSP_CORE0_MASK, align 4
  %142 = call i32 @skl_dsp_disable_core(%struct.sst_dsp* %140, i32 %141)
  %143 = load i32, i32* %9, align 4
  store i32 %143, i32* %4, align 4
  br label %144

144:                                              ; preds = %125, %123, %23
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @skl_dsp_core_power_up(%struct.sst_dsp*, i32) #1

declare dso_local i32 @SKL_DSP_CORE_MASK(i32) #1

declare dso_local i32 @sst_dsp_shim_write(%struct.sst_dsp*, i32, i32) #1

declare dso_local i32 @skl_dsp_start_core(%struct.sst_dsp*, i32) #1

declare dso_local i32 @sst_dsp_register_poll(%struct.sst_dsp*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @skl_dsp_core_power_down(%struct.sst_dsp*, i32) #1

declare dso_local i32 @skl_ipc_int_enable(%struct.sst_dsp*) #1

declare dso_local i32 @skl_ipc_op_int_enable(%struct.sst_dsp*) #1

declare dso_local i32 @skl_dsp_disable_core(%struct.sst_dsp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
