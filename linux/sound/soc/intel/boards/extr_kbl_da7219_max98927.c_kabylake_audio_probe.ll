; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_kbl_da7219_max98927.c_kabylake_audio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_kbl_da7219_max98927.c_kabylake_audio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32, i32*, %struct.snd_soc_dai_link* }
%struct.snd_soc_dai_link = type { i32, %struct.snd_soc_dai_link_component*, i32 }
%struct.snd_soc_dai_link_component = type { i32 }
%struct.platform_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.kbl_codec_private = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@kabylake_audio_card = common dso_local global %struct.snd_soc_card* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"kbl_da7219_max98373\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"kbl_max98373\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"SSP0-Codec\00", align 1
@max98373_ssp0_codec_components = common dso_local global %struct.snd_soc_dai_link_component* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @kabylake_audio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kabylake_audio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.kbl_codec_private*, align 8
  %5 = alloca %struct.snd_soc_dai_link*, align 8
  %6 = alloca %struct.snd_soc_dai_link_component**, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.kbl_codec_private* @devm_kzalloc(i32* %9, i32 4, i32 %10)
  store %struct.kbl_codec_private* %11, %struct.kbl_codec_private** %4, align 8
  %12 = load %struct.kbl_codec_private*, %struct.kbl_codec_private** %4, align 8
  %13 = icmp ne %struct.kbl_codec_private* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %89

17:                                               ; preds = %1
  %18 = load %struct.kbl_codec_private*, %struct.kbl_codec_private** %4, align 8
  %19 = getelementptr inbounds %struct.kbl_codec_private, %struct.kbl_codec_private* %18, i32 0, i32 0
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.snd_soc_card*
  store %struct.snd_soc_card* %26, %struct.snd_soc_card** @kabylake_audio_card, align 8
  %27 = load %struct.snd_soc_card*, %struct.snd_soc_card** @kabylake_audio_card, align 8
  %28 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %27, i32 0, i32 2
  %29 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %28, align 8
  store %struct.snd_soc_dai_link* %29, %struct.snd_soc_dai_link** %5, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @strcmp(i32 %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %17
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @strcmp(i32 %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %77, label %41

41:                                               ; preds = %35, %17
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %73, %41
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.snd_soc_card*, %struct.snd_soc_card** @kabylake_audio_card, align 8
  %45 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %76

48:                                               ; preds = %42
  %49 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %49, i64 %51
  %53 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @strcmp(i32 %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %73

58:                                               ; preds = %48
  %59 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %59, i64 %61
  %63 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %62, i32 0, i32 1
  store %struct.snd_soc_dai_link_component** %63, %struct.snd_soc_dai_link_component*** %6, align 8
  %64 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** @max98373_ssp0_codec_components, align 8
  %65 = load %struct.snd_soc_dai_link_component**, %struct.snd_soc_dai_link_component*** %6, align 8
  store %struct.snd_soc_dai_link_component* %64, %struct.snd_soc_dai_link_component** %65, align 8
  %66 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** @max98373_ssp0_codec_components, align 8
  %67 = call i32 @ARRAY_SIZE(%struct.snd_soc_dai_link_component* %66)
  %68 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %68, i64 %70
  %72 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %71, i32 0, i32 0
  store i32 %67, i32* %72, align 8
  br label %76

73:                                               ; preds = %57
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %42

76:                                               ; preds = %58, %42
  br label %77

77:                                               ; preds = %76, %35
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = load %struct.snd_soc_card*, %struct.snd_soc_card** @kabylake_audio_card, align 8
  %81 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %80, i32 0, i32 1
  store i32* %79, i32** %81, align 8
  %82 = load %struct.snd_soc_card*, %struct.snd_soc_card** @kabylake_audio_card, align 8
  %83 = load %struct.kbl_codec_private*, %struct.kbl_codec_private** %4, align 8
  %84 = call i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card* %82, %struct.kbl_codec_private* %83)
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = load %struct.snd_soc_card*, %struct.snd_soc_card** @kabylake_audio_card, align 8
  %88 = call i32 @devm_snd_soc_register_card(i32* %86, %struct.snd_soc_card* %87)
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %77, %14
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.kbl_codec_private* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.snd_soc_dai_link_component*) #1

declare dso_local i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card*, %struct.kbl_codec_private*) #1

declare dso_local i32 @devm_snd_soc_register_card(i32*, %struct.snd_soc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
