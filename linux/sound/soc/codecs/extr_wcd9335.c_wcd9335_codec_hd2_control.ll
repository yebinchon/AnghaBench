; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_hd2_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_hd2_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@WCD9335_CDC_RX1_RX_PATH_CTL = common dso_local global i64 0, align 8
@WCD9335_CDC_RX1_RX_PATH_SEC3 = common dso_local global i64 0, align 8
@WCD9335_CDC_RX1_RX_PATH_CFG0 = common dso_local global i64 0, align 8
@WCD9335_CDC_RX2_RX_PATH_CTL = common dso_local global i64 0, align 8
@WCD9335_CDC_RX2_RX_PATH_SEC3 = common dso_local global i64 0, align 8
@WCD9335_CDC_RX2_RX_PATH_CFG0 = common dso_local global i64 0, align 8
@WCD9335_CDC_RX_PATH_SEC_HD2_ALPHA_MASK = common dso_local global i32 0, align 4
@WCD9335_CDC_RX_PATH_SEC_HD2_ALPHA_0P2500 = common dso_local global i32 0, align 4
@WCD9335_CDC_RX_PATH_SEC_HD2_SCALE_MASK = common dso_local global i32 0, align 4
@WCD9335_CDC_RX_PATH_SEC_HD2_SCALE_2 = common dso_local global i32 0, align 4
@WCD9335_CDC_RX_PATH_CFG_HD2_EN_MASK = common dso_local global i32 0, align 4
@WCD9335_CDC_RX_PATH_CFG_HD2_ENABLE = common dso_local global i32 0, align 4
@WCD9335_CDC_RX_PATH_CFG_HD2_DISABLE = common dso_local global i32 0, align 4
@WCD9335_CDC_RX_PATH_SEC_HD2_SCALE_1 = common dso_local global i32 0, align 4
@WCD9335_CDC_RX_PATH_SEC_HD2_ALPHA_0P0000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i64, i32)* @wcd9335_codec_hd2_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wcd9335_codec_hd2_control(%struct.snd_soc_component* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %8, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @WCD9335_CDC_RX1_RX_PATH_CTL, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i64, i64* @WCD9335_CDC_RX1_RX_PATH_SEC3, align 8
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* @WCD9335_CDC_RX1_RX_PATH_CFG0, align 8
  store i64 %14, i64* %8, align 8
  br label %15

15:                                               ; preds = %12, %3
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @WCD9335_CDC_RX2_RX_PATH_CTL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i64, i64* @WCD9335_CDC_RX2_RX_PATH_SEC3, align 8
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* @WCD9335_CDC_RX2_RX_PATH_CFG0, align 8
  store i64 %21, i64* %8, align 8
  br label %22

22:                                               ; preds = %19, %15
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @SND_SOC_DAPM_EVENT_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i32, i32* @WCD9335_CDC_RX_PATH_SEC_HD2_ALPHA_MASK, align 4
  %33 = load i32, i32* @WCD9335_CDC_RX_PATH_SEC_HD2_ALPHA_0P2500, align 4
  %34 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %30, i64 %31, i32 %32, i32 %33)
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i32, i32* @WCD9335_CDC_RX_PATH_SEC_HD2_SCALE_MASK, align 4
  %38 = load i32, i32* @WCD9335_CDC_RX_PATH_SEC_HD2_SCALE_2, align 4
  %39 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %35, i64 %36, i32 %37, i32 %38)
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i32, i32* @WCD9335_CDC_RX_PATH_CFG_HD2_EN_MASK, align 4
  %43 = load i32, i32* @WCD9335_CDC_RX_PATH_CFG_HD2_ENABLE, align 4
  %44 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %40, i64 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %29, %25, %22
  %46 = load i64, i64* %8, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = call i64 @SND_SOC_DAPM_EVENT_OFF(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %48
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i32, i32* @WCD9335_CDC_RX_PATH_CFG_HD2_EN_MASK, align 4
  %56 = load i32, i32* @WCD9335_CDC_RX_PATH_CFG_HD2_DISABLE, align 4
  %57 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %53, i64 %54, i32 %55, i32 %56)
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i32, i32* @WCD9335_CDC_RX_PATH_SEC_HD2_SCALE_MASK, align 4
  %61 = load i32, i32* @WCD9335_CDC_RX_PATH_SEC_HD2_SCALE_1, align 4
  %62 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %58, i64 %59, i32 %60, i32 %61)
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load i32, i32* @WCD9335_CDC_RX_PATH_SEC_HD2_ALPHA_MASK, align 4
  %66 = load i32, i32* @WCD9335_CDC_RX_PATH_SEC_HD2_ALPHA_0P0000, align 4
  %67 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %63, i64 %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %52, %48, %45
  ret void
}

declare dso_local i64 @SND_SOC_DAPM_EVENT_ON(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i64, i32, i32) #1

declare dso_local i64 @SND_SOC_DAPM_EVENT_OFF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
