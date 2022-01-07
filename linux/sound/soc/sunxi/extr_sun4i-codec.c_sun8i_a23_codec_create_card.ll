; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-codec.c_sun8i_a23_codec_create_card.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-codec.c_sun8i_a23_codec_create_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.snd_soc_card = type { i8*, i32, i32, %struct.TYPE_4__*, i8*, i8*, i8*, i8*, %struct.device*, i32, i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"allwinner,codec-analog-controls\00", align 1
@aux_dev = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Can't find analog controls for codec.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"A23 Audio Codec\00", align 1
@sun6i_codec_card_dapm_widgets = common dso_local global i8* null, align 8
@sun8i_codec_card_routes = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"allwinner,audio-routing\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"failed to parse audio-routing: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_soc_card* (%struct.device*)* @sun8i_a23_codec_create_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_soc_card* @sun8i_a23_codec_create_card(%struct.device* %0) #0 {
  %2 = alloca %struct.snd_soc_card*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.snd_soc_card*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.snd_soc_card* @devm_kzalloc(%struct.device* %6, i32 72, i32 %7)
  store %struct.snd_soc_card* %8, %struct.snd_soc_card** %4, align 8
  %9 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %10 = icmp ne %struct.snd_soc_card* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.snd_soc_card* @ERR_PTR(i32 %13)
  store %struct.snd_soc_card* %14, %struct.snd_soc_card** %2, align 8
  br label %79

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @of_parse_phandle(i32 %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aux_dev, i32 0, i32 0, i32 0), align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aux_dev, i32 0, i32 0, i32 0), align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %15
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.snd_soc_card* @ERR_PTR(i32 %26)
  store %struct.snd_soc_card* %27, %struct.snd_soc_card** %2, align 8
  br label %79

28:                                               ; preds = %15
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %31 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %30, i32 0, i32 10
  %32 = call i32 @sun4i_codec_create_link(%struct.device* %29, i32* %31)
  %33 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %34 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %33, i32 0, i32 9
  store i32 %32, i32* %34, align 8
  %35 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %36 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %28
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.snd_soc_card* @ERR_PTR(i32 %41)
  store %struct.snd_soc_card* %42, %struct.snd_soc_card** %2, align 8
  br label %79

43:                                               ; preds = %28
  %44 = load %struct.device*, %struct.device** %3, align 8
  %45 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %46 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %45, i32 0, i32 8
  store %struct.device* %44, %struct.device** %46, align 8
  %47 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %48 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %47, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %48, align 8
  %49 = load i8*, i8** @sun6i_codec_card_dapm_widgets, align 8
  %50 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %51 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %50, i32 0, i32 7
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** @sun6i_codec_card_dapm_widgets, align 8
  %53 = call i8* @ARRAY_SIZE(i8* %52)
  %54 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %55 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %54, i32 0, i32 6
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** @sun8i_codec_card_routes, align 8
  %57 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %58 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %57, i32 0, i32 5
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** @sun8i_codec_card_routes, align 8
  %60 = call i8* @ARRAY_SIZE(i8* %59)
  %61 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %62 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %61, i32 0, i32 4
  store i8* %60, i8** %62, align 8
  %63 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %64 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %63, i32 0, i32 3
  store %struct.TYPE_4__* @aux_dev, %struct.TYPE_4__** %64, align 8
  %65 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %66 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %65, i32 0, i32 1
  store i32 1, i32* %66, align 8
  %67 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %68 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %67, i32 0, i32 2
  store i32 1, i32* %68, align 4
  %69 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %70 = call i32 @snd_soc_of_parse_audio_routing(%struct.snd_soc_card* %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %43
  %74 = load %struct.device*, %struct.device** %3, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @dev_warn(%struct.device* %74, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %73, %43
  %78 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  store %struct.snd_soc_card* %78, %struct.snd_soc_card** %2, align 8
  br label %79

79:                                               ; preds = %77, %39, %22, %11
  %80 = load %struct.snd_soc_card*, %struct.snd_soc_card** %2, align 8
  ret %struct.snd_soc_card* %80
}

declare dso_local %struct.snd_soc_card* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.snd_soc_card* @ERR_PTR(i32) #1

declare dso_local i32 @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @sun4i_codec_create_link(%struct.device*, i32*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @snd_soc_of_parse_audio_routing(%struct.snd_soc_card*, i8*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
