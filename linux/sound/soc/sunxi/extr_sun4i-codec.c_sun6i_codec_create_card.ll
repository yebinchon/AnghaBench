; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-codec.c_sun6i_codec_create_card.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-codec.c_sun6i_codec_create_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i8*, i32, i32, i32, %struct.device*, i32, i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"A31 Audio Codec\00", align 1
@sun6i_codec_card_dapm_widgets = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"allwinner,audio-routing\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to parse audio-routing: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_soc_card* (%struct.device*)* @sun6i_codec_create_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_soc_card* @sun6i_codec_create_card(%struct.device* %0) #0 {
  %2 = alloca %struct.snd_soc_card*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.snd_soc_card*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.snd_soc_card* @devm_kzalloc(%struct.device* %6, i32 40, i32 %7)
  store %struct.snd_soc_card* %8, %struct.snd_soc_card** %4, align 8
  %9 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %10 = icmp ne %struct.snd_soc_card* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.snd_soc_card* @ERR_PTR(i32 %13)
  store %struct.snd_soc_card* %14, %struct.snd_soc_card** %2, align 8
  br label %55

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %18 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %17, i32 0, i32 6
  %19 = call i32 @sun4i_codec_create_link(%struct.device* %16, i32* %18)
  %20 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %21 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 8
  %22 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %23 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %15
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.snd_soc_card* @ERR_PTR(i32 %28)
  store %struct.snd_soc_card* %29, %struct.snd_soc_card** %2, align 8
  br label %55

30:                                               ; preds = %15
  %31 = load %struct.device*, %struct.device** %3, align 8
  %32 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %33 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %32, i32 0, i32 4
  store %struct.device* %31, %struct.device** %33, align 8
  %34 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %35 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %35, align 8
  %36 = load i32, i32* @sun6i_codec_card_dapm_widgets, align 4
  %37 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %38 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @sun6i_codec_card_dapm_widgets, align 4
  %40 = call i32 @ARRAY_SIZE(i32 %39)
  %41 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %42 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %44 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %43, i32 0, i32 1
  store i32 1, i32* %44, align 8
  %45 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %46 = call i32 @snd_soc_of_parse_audio_routing(%struct.snd_soc_card* %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %30
  %50 = load %struct.device*, %struct.device** %3, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @dev_warn(%struct.device* %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %49, %30
  %54 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  store %struct.snd_soc_card* %54, %struct.snd_soc_card** %2, align 8
  br label %55

55:                                               ; preds = %53, %26, %11
  %56 = load %struct.snd_soc_card*, %struct.snd_soc_card** %2, align 8
  ret %struct.snd_soc_card* %56
}

declare dso_local %struct.snd_soc_card* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.snd_soc_card* @ERR_PTR(i32) #1

declare dso_local i32 @sun4i_codec_create_link(%struct.device*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_of_parse_audio_routing(%struct.snd_soc_card*, i8*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
