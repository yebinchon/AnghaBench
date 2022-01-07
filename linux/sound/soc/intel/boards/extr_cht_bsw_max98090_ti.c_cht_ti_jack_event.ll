; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_cht_bsw_max98090_ti.c_cht_ti_jack_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_cht_bsw_max98090_ti.c_cht_ti_jack_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.snd_soc_jack = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_dapm_context }
%struct.snd_soc_dapm_context = type { i32 }

@SND_JACK_MICROPHONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"SHDN\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"MICBIAS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @cht_ti_jack_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cht_ti_jack_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.snd_soc_jack*, align 8
  %8 = alloca %struct.snd_soc_dapm_context*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.snd_soc_jack*
  store %struct.snd_soc_jack* %10, %struct.snd_soc_jack** %7, align 8
  %11 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %7, align 8
  %12 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.snd_soc_dapm_context* %14, %struct.snd_soc_dapm_context** %8, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @SND_JACK_MICROPHONE, align 8
  %17 = and i64 %15, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %21 = call i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %23 = call i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %25 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %24)
  br label %33

26:                                               ; preds = %3
  %27 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %28 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %30 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %32 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %31)
  br label %33

33:                                               ; preds = %26, %19
  ret i32 0
}

declare dso_local i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
