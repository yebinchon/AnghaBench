; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_haswell_verify_D0.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_haswell_verify_D0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@AC_PWRST_D0 = common dso_local global i32 0, align 4
@AC_VERB_SET_POWER_STATE = common dso_local global i32 0, align 4
@AC_VERB_GET_POWER_STATE = common dso_local global i32 0, align 4
@AC_PWRST_ACTUAL = common dso_local global i32 0, align 4
@AC_PWRST_ACTUAL_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Haswell HDMI audio: Power for pin 0x%x is now D%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32, i32)* @haswell_verify_D0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @haswell_verify_D0(%struct.hda_codec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @AC_PWRST_D0, align 4
  %11 = call i32 @snd_hda_check_power_state(%struct.hda_codec* %8, i32 %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @AC_VERB_SET_POWER_STATE, align 4
  %17 = load i32, i32* @AC_PWRST_D0, align 4
  %18 = call i32 @snd_hda_codec_write(%struct.hda_codec* %14, i32 %15, i32 0, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %13, %3
  %20 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @AC_PWRST_D0, align 4
  %23 = call i32 @snd_hda_check_power_state(%struct.hda_codec* %20, i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %19
  %26 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @AC_VERB_SET_POWER_STATE, align 4
  %29 = load i32, i32* @AC_PWRST_D0, align 4
  %30 = call i32 @snd_hda_codec_write(%struct.hda_codec* %26, i32 %27, i32 0, i32 %28, i32 %29)
  %31 = call i32 @msleep(i32 40)
  %32 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @AC_VERB_GET_POWER_STATE, align 4
  %35 = call i32 @snd_hda_codec_read(%struct.hda_codec* %32, i32 %33, i32 0, i32 %34, i32 0)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @AC_PWRST_ACTUAL, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @AC_PWRST_ACTUAL_SHIFT, align 4
  %40 = ashr i32 %38, %39
  store i32 %40, i32* %7, align 4
  %41 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @codec_dbg(%struct.hda_codec* %41, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %25, %19
  ret void
}

declare dso_local i32 @snd_hda_check_power_state(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
