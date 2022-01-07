; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-dsp.c_hda_dsp_core_run.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-dsp.c_hda_dsp_core_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"unstall/run core: core_mask = %x\0A\00", align 1
@HDA_DSP_BAR = common dso_local global i32 0, align 4
@HDA_DSP_REG_ADSPCS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"error: DSP start core failed: core_mask %x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hda_dsp_core_run(%struct.snd_sof_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_sof_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @hda_dsp_core_reset_leave(%struct.snd_sof_dev* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %43

14:                                               ; preds = %2
  %15 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %16 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @dev_dbg(i32 %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %21 = load i32, i32* @HDA_DSP_BAR, align 4
  %22 = load i32, i32* @HDA_DSP_REG_ADSPCS, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @HDA_DSP_ADSPCS_CSTALL_MASK(i32 %23)
  %25 = call i32 @snd_sof_dsp_update_bits_unlocked(%struct.snd_sof_dev* %20, i32 %21, i32 %22, i32 %24, i32 0)
  %26 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @hda_dsp_core_is_enabled(%struct.snd_sof_dev* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %14
  %31 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @hda_dsp_core_stall_reset(%struct.snd_sof_dev* %31, i32 %32)
  %34 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %35 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %30, %14
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %12
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @hda_dsp_core_reset_leave(%struct.snd_sof_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @snd_sof_dsp_update_bits_unlocked(%struct.snd_sof_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @HDA_DSP_ADSPCS_CSTALL_MASK(i32) #1

declare dso_local i32 @hda_dsp_core_is_enabled(%struct.snd_sof_dev*, i32) #1

declare dso_local i32 @hda_dsp_core_stall_reset(%struct.snd_sof_dev*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
