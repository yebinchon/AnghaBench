; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-dsp.c_hda_dsp_core_power_up.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-dsp.c_hda_dsp_core_power_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32 }

@HDA_DSP_BAR = common dso_local global i32 0, align 4
@HDA_DSP_REG_ADSPCS = common dso_local global i32 0, align 4
@HDA_DSP_REG_POLL_INTERVAL_US = common dso_local global i32 0, align 4
@HDA_DSP_RESET_TIMEOUT_US = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"error: timeout on core powerup\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"error: power up core failed core_mask %xadspcs 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hda_dsp_core_power_up(%struct.snd_sof_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_sof_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %9 = load i32, i32* @HDA_DSP_BAR, align 4
  %10 = load i32, i32* @HDA_DSP_REG_ADSPCS, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @HDA_DSP_ADSPCS_SPA_MASK(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @HDA_DSP_ADSPCS_SPA_MASK(i32 %13)
  %15 = call i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev* %8, i32 %9, i32 %10, i32 %12, i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @HDA_DSP_ADSPCS_CPA_MASK(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %19 = load i32, i32* @HDA_DSP_BAR, align 4
  %20 = load i32, i32* @HDA_DSP_REG_ADSPCS, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* @HDA_DSP_REG_POLL_INTERVAL_US, align 4
  %29 = load i32, i32* @HDA_DSP_RESET_TIMEOUT_US, align 4
  %30 = call i32 @snd_sof_dsp_read_poll_timeout(%struct.snd_sof_dev* %18, i32 %19, i32 %20, i32 %21, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %35 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, ...) @dev_err(i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %33, %2
  %39 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %40 = load i32, i32* @HDA_DSP_BAR, align 4
  %41 = load i32, i32* @HDA_DSP_REG_ADSPCS, align 4
  %42 = call i32 @snd_sof_dsp_read(%struct.snd_sof_dev* %39, i32 %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @HDA_DSP_ADSPCS_CPA_MASK(i32 %44)
  %46 = and i32 %43, %45
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @HDA_DSP_ADSPCS_CPA_MASK(i32 %47)
  %49 = icmp ne i32 %46, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %38
  %51 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %52 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 (i32, i8*, ...) @dev_err(i32 %53, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %50, %38
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @HDA_DSP_ADSPCS_SPA_MASK(i32) #1

declare dso_local i32 @HDA_DSP_ADSPCS_CPA_MASK(i32) #1

declare dso_local i32 @snd_sof_dsp_read_poll_timeout(%struct.snd_sof_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @snd_sof_dsp_read(%struct.snd_sof_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
