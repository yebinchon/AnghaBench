; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-dsp.c_hda_dsp_enable_core.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-dsp.c_hda_dsp_enable_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"error: dsp core power up failed: core_mask %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hda_dsp_enable_core(%struct.snd_sof_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_sof_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @hda_dsp_core_is_enabled(%struct.snd_sof_dev* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

12:                                               ; preds = %2
  %13 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @hda_dsp_core_power_up(%struct.snd_sof_dev* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %20 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %29

25:                                               ; preds = %12
  %26 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @hda_dsp_core_run(%struct.snd_sof_dev* %26, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %18, %11
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i64 @hda_dsp_core_is_enabled(%struct.snd_sof_dev*, i32) #1

declare dso_local i32 @hda_dsp_core_power_up(%struct.snd_sof_dev*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @hda_dsp_core_run(%struct.snd_sof_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
