; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdmi-codec.c_hdmi_dai_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdmi-codec.c_hdmi_dai_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.hdmi_codec_daifmt*, i32, %struct.TYPE_4__* }
%struct.hdmi_codec_daifmt = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.snd_soc_dapm_route = type { i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*)* @hdmi_dai_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_dai_probe(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  %5 = alloca %struct.hdmi_codec_daifmt*, align 8
  %6 = alloca %struct.snd_soc_dapm_route, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  %8 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %6, i32 0, i32 1
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 8
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(i32 %18)
  store %struct.snd_soc_dapm_context* %19, %struct.snd_soc_dapm_context** %4, align 8
  %20 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %21 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %20, %struct.snd_soc_dapm_route* %6, i32 1)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %2, align 4
  br label %38

26:                                               ; preds = %1
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.hdmi_codec_daifmt* @kzalloc(i32 4, i32 %27)
  store %struct.hdmi_codec_daifmt* %28, %struct.hdmi_codec_daifmt** %5, align 8
  %29 = load %struct.hdmi_codec_daifmt*, %struct.hdmi_codec_daifmt** %5, align 8
  %30 = icmp ne %struct.hdmi_codec_daifmt* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %38

34:                                               ; preds = %26
  %35 = load %struct.hdmi_codec_daifmt*, %struct.hdmi_codec_daifmt** %5, align 8
  %36 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %37 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %36, i32 0, i32 0
  store %struct.hdmi_codec_daifmt* %35, %struct.hdmi_codec_daifmt** %37, align 8
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %34, %31, %24
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_route*, i32) #1

declare dso_local %struct.hdmi_codec_daifmt* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
