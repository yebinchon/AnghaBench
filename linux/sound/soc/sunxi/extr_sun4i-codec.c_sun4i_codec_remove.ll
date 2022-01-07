; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-codec.c_sun4i_codec_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-codec.c_sun4i_codec_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.snd_soc_card = type { i32 }
%struct.sun4i_codec = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sun4i_codec_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_codec_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.snd_soc_card*, align 8
  %4 = alloca %struct.sun4i_codec*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.snd_soc_card* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.snd_soc_card* %6, %struct.snd_soc_card** %3, align 8
  %7 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %8 = call %struct.sun4i_codec* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %7)
  store %struct.sun4i_codec* %8, %struct.sun4i_codec** %4, align 8
  %9 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %10 = call i32 @snd_soc_unregister_card(%struct.snd_soc_card* %9)
  %11 = load %struct.sun4i_codec*, %struct.sun4i_codec** %4, align 8
  %12 = getelementptr inbounds %struct.sun4i_codec, %struct.sun4i_codec* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.sun4i_codec*, %struct.sun4i_codec** %4, align 8
  %17 = getelementptr inbounds %struct.sun4i_codec, %struct.sun4i_codec* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @reset_control_assert(i64 %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.sun4i_codec*, %struct.sun4i_codec** %4, align 8
  %22 = getelementptr inbounds %struct.sun4i_codec, %struct.sun4i_codec* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @clk_disable_unprepare(i32 %23)
  ret i32 0
}

declare dso_local %struct.snd_soc_card* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.sun4i_codec* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local i32 @snd_soc_unregister_card(%struct.snd_soc_card*) #1

declare dso_local i32 @reset_control_assert(i64) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
