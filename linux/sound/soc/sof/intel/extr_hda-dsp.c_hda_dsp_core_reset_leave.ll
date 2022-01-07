; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-dsp.c_hda_dsp_core_reset_leave.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-dsp.c_hda_dsp_core_reset_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32 }

@HDA_DSP_BAR = common dso_local global i32 0, align 4
@HDA_DSP_REG_ADSPCS = common dso_local global i32 0, align 4
@HDA_DSP_REG_POLL_INTERVAL_US = common dso_local global i32 0, align 4
@HDA_DSP_RESET_TIMEOUT_US = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"error: reset leave failed: core_mask %x adspcs 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hda_dsp_core_reset_leave(%struct.snd_sof_dev* %0, i32 %1) #0 {
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
  %12 = call i32 @HDA_DSP_ADSPCS_CRST_MASK(i32 %11)
  %13 = call i32 @snd_sof_dsp_update_bits_unlocked(%struct.snd_sof_dev* %8, i32 %9, i32 %10, i32 %12, i32 0)
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @HDA_DSP_ADSPCS_CRST_MASK(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %17 = load i32, i32* @HDA_DSP_BAR, align 4
  %18 = load i32, i32* @HDA_DSP_REG_ADSPCS, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* @HDA_DSP_REG_POLL_INTERVAL_US, align 4
  %27 = load i32, i32* @HDA_DSP_RESET_TIMEOUT_US, align 4
  %28 = call i32 @snd_sof_dsp_read_poll_timeout(%struct.snd_sof_dev* %16, i32 %17, i32 %18, i32 %19, i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %30 = load i32, i32* @HDA_DSP_BAR, align 4
  %31 = load i32, i32* @HDA_DSP_REG_ADSPCS, align 4
  %32 = call i32 @snd_sof_dsp_read(%struct.snd_sof_dev* %29, i32 %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @HDA_DSP_ADSPCS_CRST_MASK(i32 %34)
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %2
  %39 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %40 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %38, %2
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local i32 @snd_sof_dsp_update_bits_unlocked(%struct.snd_sof_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @HDA_DSP_ADSPCS_CRST_MASK(i32) #1

declare dso_local i32 @snd_sof_dsp_read_poll_timeout(%struct.snd_sof_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @snd_sof_dsp_read(%struct.snd_sof_dev*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
