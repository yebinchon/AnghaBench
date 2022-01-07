; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda.c_hda_ipc_irq_dump.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda.c_hda_ipc_irq_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32 }
%struct.hdac_bus = type { i32 }

@HDA_DSP_BAR = common dso_local global i32 0, align 4
@HDA_DSP_REG_ADSPIS = common dso_local global i32 0, align 4
@HDA_DSP_HDA_BAR = common dso_local global i32 0, align 4
@SOF_HDA_INTSTS = common dso_local global i32 0, align 4
@SOF_HDA_INTCTL = common dso_local global i32 0, align 4
@HDA_DSP_PP_BAR = common dso_local global i32 0, align 4
@SOF_HDA_REG_PP_PPSTS = common dso_local global i32 0, align 4
@RIRBSTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"error: hda irq intsts 0x%8.8x intlctl 0x%8.8x rirb %2.2x\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"error: dsp irq ppsts 0x%8.8x adspis 0x%8.8x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hda_ipc_irq_dump(%struct.snd_sof_dev* %0) #0 {
  %2 = alloca %struct.snd_sof_dev*, align 8
  %3 = alloca %struct.hdac_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %2, align 8
  %9 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %10 = call %struct.hdac_bus* @sof_to_bus(%struct.snd_sof_dev* %9)
  store %struct.hdac_bus* %10, %struct.hdac_bus** %3, align 8
  %11 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %12 = load i32, i32* @HDA_DSP_BAR, align 4
  %13 = load i32, i32* @HDA_DSP_REG_ADSPIS, align 4
  %14 = call i32 @snd_sof_dsp_read(%struct.snd_sof_dev* %11, i32 %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %16 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %17 = load i32, i32* @SOF_HDA_INTSTS, align 4
  %18 = call i32 @snd_sof_dsp_read(%struct.snd_sof_dev* %15, i32 %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %20 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %21 = load i32, i32* @SOF_HDA_INTCTL, align 4
  %22 = call i32 @snd_sof_dsp_read(%struct.snd_sof_dev* %19, i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %24 = load i32, i32* @HDA_DSP_PP_BAR, align 4
  %25 = load i32, i32* @SOF_HDA_REG_PP_PPSTS, align 4
  %26 = call i32 @snd_sof_dsp_read(%struct.snd_sof_dev* %23, i32 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %28 = load i32, i32* @RIRBSTS, align 4
  %29 = call i32 @snd_hdac_chip_readb(%struct.hdac_bus* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %31 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 (i32, i8*, i32, i32, ...) @dev_err(i32 %32, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34, i32 %35)
  %37 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %38 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 (i32, i8*, i32, i32, ...) @dev_err(i32 %39, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %41)
  ret void
}

declare dso_local %struct.hdac_bus* @sof_to_bus(%struct.snd_sof_dev*) #1

declare dso_local i32 @snd_sof_dsp_read(%struct.snd_sof_dev*, i32, i32) #1

declare dso_local i32 @snd_hdac_chip_readb(%struct.hdac_bus*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
