; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_kbl_da7219_max98357a.c_kabylake_audio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_kbl_da7219_max98357a.c_kabylake_audio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32* }
%struct.platform_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.kbl_codec_private = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@kabylake_audio_card = common dso_local global %struct.snd_soc_card* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @kabylake_audio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kabylake_audio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.kbl_codec_private*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.kbl_codec_private* @devm_kzalloc(i32* %6, i32 4, i32 %7)
  store %struct.kbl_codec_private* %8, %struct.kbl_codec_private** %4, align 8
  %9 = load %struct.kbl_codec_private*, %struct.kbl_codec_private** %4, align 8
  %10 = icmp ne %struct.kbl_codec_private* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %35

14:                                               ; preds = %1
  %15 = load %struct.kbl_codec_private*, %struct.kbl_codec_private** %4, align 8
  %16 = getelementptr inbounds %struct.kbl_codec_private, %struct.kbl_codec_private* %15, i32 0, i32 0
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.snd_soc_card*
  store %struct.snd_soc_card* %23, %struct.snd_soc_card** @kabylake_audio_card, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load %struct.snd_soc_card*, %struct.snd_soc_card** @kabylake_audio_card, align 8
  %27 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %26, i32 0, i32 0
  store i32* %25, i32** %27, align 8
  %28 = load %struct.snd_soc_card*, %struct.snd_soc_card** @kabylake_audio_card, align 8
  %29 = load %struct.kbl_codec_private*, %struct.kbl_codec_private** %4, align 8
  %30 = call i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card* %28, %struct.kbl_codec_private* %29)
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load %struct.snd_soc_card*, %struct.snd_soc_card** @kabylake_audio_card, align 8
  %34 = call i32 @devm_snd_soc_register_card(i32* %32, %struct.snd_soc_card* %33)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %14, %11
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.kbl_codec_private* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card*, %struct.kbl_codec_private*) #1

declare dso_local i32 @devm_snd_soc_register_card(i32*, %struct.snd_soc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
