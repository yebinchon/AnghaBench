; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_apply_sido_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_apply_sido_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcd9335_codec = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@WCD9335_ANA_BUCK_VOUT_MASK = common dso_local global i32 0, align 4
@WCD9335_ANA_BUCK_VOUT_D = common dso_local global i32 0, align 4
@WCD9335_ANA_BUCK_CTL = common dso_local global i32 0, align 4
@WCD9335_ANA_BUCK_CTL_RAMP_START_MASK = common dso_local global i32 0, align 4
@WCD9335_ANA_BUCK_CTL_RAMP_START_ENABLE = common dso_local global i32 0, align 4
@WCD9335_ANA_BUCK_CTL_RAMP_START_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wcd9335_codec*, i32)* @wcd9335_codec_apply_sido_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wcd9335_codec_apply_sido_voltage(%struct.wcd9335_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.wcd9335_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  store %struct.wcd9335_codec* %0, %struct.wcd9335_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %8 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %7, i32 0, i32 1
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  store %struct.snd_soc_component* %9, %struct.snd_soc_component** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %12 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %39

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @WCD9335_CALCULATE_VOUT_D(i32 %17)
  %19 = load i32, i32* @WCD9335_ANA_BUCK_VOUT_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %22 = load i32, i32* @WCD9335_ANA_BUCK_VOUT_D, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %21, i32 %22, i32 %23)
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %26 = load i32, i32* @WCD9335_ANA_BUCK_CTL, align 4
  %27 = load i32, i32* @WCD9335_ANA_BUCK_CTL_RAMP_START_MASK, align 4
  %28 = load i32, i32* @WCD9335_ANA_BUCK_CTL_RAMP_START_ENABLE, align 4
  %29 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %25, i32 %26, i32 %27, i32 %28)
  %30 = call i32 @usleep_range(i32 1000, i32 1100)
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %33 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %35 = load i32, i32* @WCD9335_ANA_BUCK_CTL, align 4
  %36 = load i32, i32* @WCD9335_ANA_BUCK_CTL_RAMP_START_MASK, align 4
  %37 = load i32, i32* @WCD9335_ANA_BUCK_CTL_RAMP_START_DISABLE, align 4
  %38 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %34, i32 %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @WCD9335_CALCULATE_VOUT_D(i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
