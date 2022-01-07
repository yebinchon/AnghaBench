; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-evm.c_evm_aic3x_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-evm.c_evm_aic3x_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_card* }
%struct.snd_soc_card = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@aic3x_dapm_widgets = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ti,audio-routing\00", align 1
@audio_map = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"MONO_LOUT\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"HPLCOM\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"HPRCOM\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @evm_aic3x_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evm_aic3x_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_soc_card*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %7 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %8 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %7, i32 0, i32 0
  %9 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  store %struct.snd_soc_card* %9, %struct.snd_soc_card** %4, align 8
  %10 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %5, align 8
  %15 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %16 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %15, i32 0, i32 0
  %17 = load i32, i32* @aic3x_dapm_widgets, align 4
  %18 = load i32, i32* @aic3x_dapm_widgets, align 4
  %19 = call i32 @ARRAY_SIZE(i32 %18)
  %20 = call i32 @snd_soc_dapm_new_controls(i32* %16, i32 %17, i32 %19)
  %21 = load %struct.device_node*, %struct.device_node** %5, align 8
  %22 = icmp ne %struct.device_node* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %25 = call i32 @snd_soc_of_parse_audio_routing(%struct.snd_soc_card* %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %48

30:                                               ; preds = %23
  br label %38

31:                                               ; preds = %1
  %32 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %33 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %32, i32 0, i32 0
  %34 = load i32, i32* @audio_map, align 4
  %35 = load i32, i32* @audio_map, align 4
  %36 = call i32 @ARRAY_SIZE(i32 %35)
  %37 = call i32 @snd_soc_dapm_add_routes(i32* %33, i32 %34, i32 %36)
  br label %38

38:                                               ; preds = %31, %30
  %39 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %40 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %39, i32 0, i32 0
  %41 = call i32 @snd_soc_dapm_nc_pin(i32* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %43 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %42, i32 0, i32 0
  %44 = call i32 @snd_soc_dapm_nc_pin(i32* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %46 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %45, i32 0, i32 0
  %47 = call i32 @snd_soc_dapm_nc_pin(i32* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %38, %28
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @snd_soc_dapm_new_controls(i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_of_parse_audio_routing(%struct.snd_soc_card*, i8*) #1

declare dso_local i32 @snd_soc_dapm_add_routes(i32*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_nc_pin(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
