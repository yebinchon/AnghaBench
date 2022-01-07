; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_set_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_device = type { i32 }

@AC_WCAP_POWER = common dso_local global i32 0, align 4
@AC_VERB_SET_POWER_STATE = common dso_local global i32 0, align 4
@AC_PWRST_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdac_device*, i32, i32)* @hdac_hdmi_set_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdac_hdmi_set_power_state(%struct.hdac_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hdac_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hdac_device* %0, %struct.hdac_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.hdac_device*, %struct.hdac_device** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @get_wcaps(%struct.hdac_device* %9, i32 %10)
  %12 = load i32, i32* @AC_WCAP_POWER, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %46

15:                                               ; preds = %3
  %16 = load %struct.hdac_device*, %struct.hdac_device** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @snd_hdac_check_power_state(%struct.hdac_device* %16, i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %45, label %21

21:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %41, %21
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 10
  br i1 %24, label %25, label %44

25:                                               ; preds = %22
  %26 = load %struct.hdac_device*, %struct.hdac_device** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @AC_VERB_SET_POWER_STATE, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @snd_hdac_codec_read(%struct.hdac_device* %26, i32 %27, i32 0, i32 %28, i32 %29)
  %31 = load %struct.hdac_device*, %struct.hdac_device** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @snd_hdac_sync_power_state(%struct.hdac_device* %31, i32 %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @AC_PWRST_ERROR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %25
  br label %44

40:                                               ; preds = %25
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %22

44:                                               ; preds = %39, %22
  br label %45

45:                                               ; preds = %44, %15
  br label %46

46:                                               ; preds = %45, %3
  ret void
}

declare dso_local i32 @get_wcaps(%struct.hdac_device*, i32) #1

declare dso_local i32 @snd_hdac_check_power_state(%struct.hdac_device*, i32, i32) #1

declare dso_local i32 @snd_hdac_codec_read(%struct.hdac_device*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hdac_sync_power_state(%struct.hdac_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
