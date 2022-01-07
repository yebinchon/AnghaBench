; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-loader.c_cl_dsp_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-loader.c_cl_dsp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sof_intel_hda_dev* }
%struct.sof_intel_hda_dev = type { %struct.sof_intel_dsp_desc* }
%struct.sof_intel_dsp_desc = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [37 x i8] c"error: dsp core 0/1 power up failed\0A\00", align 1
@HDA_DSP_BAR = common dso_local global i32 0, align 4
@SSP_DEV_MEM_SIZE = common dso_local global i32 0, align 4
@SSP_SSC1_OFFSET = common dso_local global i64 0, align 8
@SSP_SET_SLAVE = common dso_local global i32 0, align 4
@HDA_DSP_IPC_PURGE_FW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"error: dsp core start failed %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@HDA_DSP_REG_POLL_INTERVAL_US = common dso_local global i32 0, align 4
@HDA_DSP_INIT_TIMEOUT_US = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"error: waiting for HIPCIE done\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"error: dsp core x power down failed\0A\00", align 1
@HDA_DSP_SRAM_REG_ROM_STATUS = common dso_local global i32 0, align 4
@HDA_DSP_ROM_STS_MASK = common dso_local global i32 0, align 4
@HDA_DSP_ROM_INIT = common dso_local global i32 0, align 4
@USEC_PER_MSEC = common dso_local global i32 0, align 4
@SOF_DBG_REGS = common dso_local global i32 0, align 4
@SOF_DBG_PCI = common dso_local global i32 0, align 4
@SOF_DBG_MBOX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sof_dev*, i8*, i32, i32)* @cl_dsp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cl_dsp_init(%struct.snd_sof_dev* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_sof_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sof_intel_hda_dev*, align 8
  %11 = alloca %struct.sof_intel_dsp_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %16 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.sof_intel_hda_dev*, %struct.sof_intel_hda_dev** %18, align 8
  store %struct.sof_intel_hda_dev* %19, %struct.sof_intel_hda_dev** %10, align 8
  %20 = load %struct.sof_intel_hda_dev*, %struct.sof_intel_hda_dev** %10, align 8
  %21 = getelementptr inbounds %struct.sof_intel_hda_dev, %struct.sof_intel_hda_dev* %20, i32 0, i32 0
  %22 = load %struct.sof_intel_dsp_desc*, %struct.sof_intel_dsp_desc** %21, align 8
  store %struct.sof_intel_dsp_desc* %22, %struct.sof_intel_dsp_desc** %11, align 8
  %23 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %24 = load %struct.sof_intel_dsp_desc*, %struct.sof_intel_dsp_desc** %11, align 8
  %25 = getelementptr inbounds %struct.sof_intel_dsp_desc, %struct.sof_intel_dsp_desc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @hda_dsp_core_power_up(%struct.snd_sof_dev* %23, i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %4
  %31 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %32 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i32, i8*, ...) @dev_err(i32 %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %157

35:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  br label %36

36:                                               ; preds = %58, %35
  %37 = load i32, i32* %14, align 4
  %38 = load %struct.sof_intel_dsp_desc*, %struct.sof_intel_dsp_desc** %11, align 8
  %39 = getelementptr inbounds %struct.sof_intel_dsp_desc, %struct.sof_intel_dsp_desc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %36
  %43 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %44 = load i32, i32* @HDA_DSP_BAR, align 4
  %45 = load %struct.sof_intel_dsp_desc*, %struct.sof_intel_dsp_desc** %11, align 8
  %46 = getelementptr inbounds %struct.sof_intel_dsp_desc, %struct.sof_intel_dsp_desc* %45, i32 0, i32 7
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* @SSP_DEV_MEM_SIZE, align 4
  %50 = mul nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %47, %51
  %53 = load i64, i64* @SSP_SSC1_OFFSET, align 8
  %54 = add nsw i64 %52, %53
  %55 = load i32, i32* @SSP_SET_SLAVE, align 4
  %56 = load i32, i32* @SSP_SET_SLAVE, align 4
  %57 = call i32 @snd_sof_dsp_update_bits_unlocked(%struct.snd_sof_dev* %43, i32 %44, i64 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %42
  %59 = load i32, i32* %14, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %14, align 4
  br label %36

61:                                               ; preds = %36
  %62 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %63 = load i32, i32* @HDA_DSP_BAR, align 4
  %64 = load %struct.sof_intel_dsp_desc*, %struct.sof_intel_dsp_desc** %11, align 8
  %65 = getelementptr inbounds %struct.sof_intel_dsp_desc, %struct.sof_intel_dsp_desc* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.sof_intel_dsp_desc*, %struct.sof_intel_dsp_desc** %11, align 8
  %68 = getelementptr inbounds %struct.sof_intel_dsp_desc, %struct.sof_intel_dsp_desc* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @HDA_DSP_IPC_PURGE_FW, align 4
  %71 = load i32, i32* %9, align 4
  %72 = sub nsw i32 %71, 1
  %73 = shl i32 %72, 9
  %74 = or i32 %70, %73
  %75 = or i32 %69, %74
  %76 = call i32 @snd_sof_dsp_write(%struct.snd_sof_dev* %62, i32 %63, i32 %66, i32 %75)
  %77 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %78 = call i32 @HDA_DSP_CORE_MASK(i32 0)
  %79 = call i32 @hda_dsp_core_run(%struct.snd_sof_dev* %77, i32 %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %61
  %83 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %84 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %13, align 4
  %87 = call i32 (i32, i8*, ...) @dev_err(i32 %85, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %13, align 4
  br label %157

90:                                               ; preds = %61
  %91 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %92 = load i32, i32* @HDA_DSP_BAR, align 4
  %93 = load %struct.sof_intel_dsp_desc*, %struct.sof_intel_dsp_desc** %11, align 8
  %94 = getelementptr inbounds %struct.sof_intel_dsp_desc, %struct.sof_intel_dsp_desc* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.sof_intel_dsp_desc*, %struct.sof_intel_dsp_desc** %11, align 8
  %99 = getelementptr inbounds %struct.sof_intel_dsp_desc, %struct.sof_intel_dsp_desc* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %97, %100
  %102 = load %struct.sof_intel_dsp_desc*, %struct.sof_intel_dsp_desc** %11, align 8
  %103 = getelementptr inbounds %struct.sof_intel_dsp_desc, %struct.sof_intel_dsp_desc* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %101, %104
  %106 = zext i1 %105 to i32
  %107 = load i32, i32* @HDA_DSP_REG_POLL_INTERVAL_US, align 4
  %108 = load i32, i32* @HDA_DSP_INIT_TIMEOUT_US, align 4
  %109 = call i32 @snd_sof_dsp_read_poll_timeout(%struct.snd_sof_dev* %91, i32 %92, i32 %95, i32 %96, i32 %106, i32 %107, i32 %108)
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %90
  %113 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %114 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 (i32, i8*, ...) @dev_err(i32 %115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %157

117:                                              ; preds = %90
  %118 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %119 = load %struct.sof_intel_dsp_desc*, %struct.sof_intel_dsp_desc** %11, align 8
  %120 = getelementptr inbounds %struct.sof_intel_dsp_desc, %struct.sof_intel_dsp_desc* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @HDA_DSP_CORE_MASK(i32 0)
  %123 = xor i32 %122, -1
  %124 = and i32 %121, %123
  %125 = call i32 @hda_dsp_core_power_down(%struct.snd_sof_dev* %118, i32 %124)
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %13, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %117
  %129 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %130 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 (i32, i8*, ...) @dev_err(i32 %131, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %157

133:                                              ; preds = %117
  %134 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %135 = call i32 @hda_dsp_ipc_int_enable(%struct.snd_sof_dev* %134)
  %136 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %137 = load i32, i32* @HDA_DSP_BAR, align 4
  %138 = load i32, i32* @HDA_DSP_SRAM_REG_ROM_STATUS, align 4
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* @HDA_DSP_ROM_STS_MASK, align 4
  %142 = and i32 %140, %141
  %143 = load i32, i32* @HDA_DSP_ROM_INIT, align 4
  %144 = icmp eq i32 %142, %143
  %145 = zext i1 %144 to i32
  %146 = load i32, i32* @HDA_DSP_REG_POLL_INTERVAL_US, align 4
  %147 = load %struct.sof_intel_dsp_desc*, %struct.sof_intel_dsp_desc** %11, align 8
  %148 = getelementptr inbounds %struct.sof_intel_dsp_desc, %struct.sof_intel_dsp_desc* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @USEC_PER_MSEC, align 4
  %151 = mul nsw i32 %149, %150
  %152 = call i32 @snd_sof_dsp_read_poll_timeout(%struct.snd_sof_dev* %136, i32 %137, i32 %138, i32 %139, i32 %145, i32 %146, i32 %151)
  store i32 %152, i32* %13, align 4
  %153 = load i32, i32* %13, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %133
  store i32 0, i32* %5, align 4
  br label %171

156:                                              ; preds = %133
  br label %157

157:                                              ; preds = %156, %128, %112, %82, %30
  %158 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %159 = load i32, i32* @SOF_DBG_REGS, align 4
  %160 = load i32, i32* @SOF_DBG_PCI, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @SOF_DBG_MBOX, align 4
  %163 = or i32 %161, %162
  %164 = call i32 @hda_dsp_dump(%struct.snd_sof_dev* %158, i32 %163)
  %165 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %166 = load %struct.sof_intel_dsp_desc*, %struct.sof_intel_dsp_desc** %11, align 8
  %167 = getelementptr inbounds %struct.sof_intel_dsp_desc, %struct.sof_intel_dsp_desc* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @hda_dsp_core_reset_power_down(%struct.snd_sof_dev* %165, i32 %168)
  %170 = load i32, i32* %13, align 4
  store i32 %170, i32* %5, align 4
  br label %171

171:                                              ; preds = %157, %155
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local i32 @hda_dsp_core_power_up(%struct.snd_sof_dev*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @snd_sof_dsp_update_bits_unlocked(%struct.snd_sof_dev*, i32, i64, i32, i32) #1

declare dso_local i32 @snd_sof_dsp_write(%struct.snd_sof_dev*, i32, i32, i32) #1

declare dso_local i32 @hda_dsp_core_run(%struct.snd_sof_dev*, i32) #1

declare dso_local i32 @HDA_DSP_CORE_MASK(i32) #1

declare dso_local i32 @snd_sof_dsp_read_poll_timeout(%struct.snd_sof_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hda_dsp_core_power_down(%struct.snd_sof_dev*, i32) #1

declare dso_local i32 @hda_dsp_ipc_int_enable(%struct.snd_sof_dev*) #1

declare dso_local i32 @hda_dsp_dump(%struct.snd_sof_dev*, i32) #1

declare dso_local i32 @hda_dsp_core_reset_power_down(%struct.snd_sof_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
