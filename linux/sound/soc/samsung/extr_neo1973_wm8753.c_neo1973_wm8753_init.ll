; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_neo1973_wm8753.c_neo1973_wm8753_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_neo1973_wm8753.c_neo1973_wm8753_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_card* }
%struct.snd_soc_card = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"GSM Line Out\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"GSM Line In\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Headset Mic\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Handset Mic\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Stereo Out\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Handset Spk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @neo1973_wm8753_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neo1973_wm8753_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %3 = alloca %struct.snd_soc_card*, align 8
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %2, align 8
  %4 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %2, align 8
  %5 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %4, i32 0, i32 0
  %6 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  store %struct.snd_soc_card* %6, %struct.snd_soc_card** %3, align 8
  %7 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %8 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %7, i32 0, i32 0
  %9 = call i32 @snd_soc_dapm_disable_pin(i32* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %10, i32 0, i32 0
  %12 = call i32 @snd_soc_dapm_disable_pin(i32* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %14 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %13, i32 0, i32 0
  %15 = call i32 @snd_soc_dapm_disable_pin(i32* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %16 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %17 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %16, i32 0, i32 0
  %18 = call i32 @snd_soc_dapm_disable_pin(i32* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %19 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %20 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %19, i32 0, i32 0
  %21 = call i32 @snd_soc_dapm_disable_pin(i32* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %22 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %23 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %22, i32 0, i32 0
  %24 = call i32 @snd_soc_dapm_disable_pin(i32* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %25 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %26 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %25, i32 0, i32 0
  %27 = call i32 @snd_soc_dapm_ignore_suspend(i32* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %29 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %28, i32 0, i32 0
  %30 = call i32 @snd_soc_dapm_ignore_suspend(i32* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %32 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %31, i32 0, i32 0
  %33 = call i32 @snd_soc_dapm_ignore_suspend(i32* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %35 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %34, i32 0, i32 0
  %36 = call i32 @snd_soc_dapm_ignore_suspend(i32* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %37 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %38 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %37, i32 0, i32 0
  %39 = call i32 @snd_soc_dapm_ignore_suspend(i32* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %40 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %41 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %40, i32 0, i32 0
  %42 = call i32 @snd_soc_dapm_ignore_suspend(i32* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @snd_soc_dapm_disable_pin(i32*, i8*) #1

declare dso_local i32 @snd_soc_dapm_ignore_suspend(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
