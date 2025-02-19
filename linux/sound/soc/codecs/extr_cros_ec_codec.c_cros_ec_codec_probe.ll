; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cros_ec_codec.c_cros_ec_codec_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cros_ec_codec.c_cros_ec_codec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.cros_ec_codec_data = type { i32 }

@mic_gain_control = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @cros_ec_codec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_codec_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cros_ec_codec_data*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.cros_ec_codec_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.cros_ec_codec_data* %7, %struct.cros_ec_codec_data** %5, align 8
  %8 = load %struct.cros_ec_codec_data*, %struct.cros_ec_codec_data** %5, align 8
  %9 = getelementptr inbounds %struct.cros_ec_codec_data, %struct.cros_ec_codec_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @cros_ec_set_gain_range(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %19

16:                                               ; preds = %1
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %18 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %17, i32* @mic_gain_control, i32 1)
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %16, %14
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local %struct.cros_ec_codec_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @cros_ec_set_gain_range(i32) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
