; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap3pandora.c_omap3pandora_in_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap3pandora.c_omap3pandora_in_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_dapm_context }
%struct.snd_soc_dapm_context = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"HSMIC\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"CARKITMIC\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"DIGIMIC0\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"DIGIMIC1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @omap3pandora_in_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap3pandora_in_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %3 = alloca %struct.snd_soc_dapm_context*, align 8
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %2, align 8
  %4 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %2, align 8
  %5 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.snd_soc_dapm_context* %7, %struct.snd_soc_dapm_context** %3, align 8
  %8 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %3, align 8
  %9 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_dapm_context* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %3, align 8
  %11 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_dapm_context* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %12 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %3, align 8
  %13 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_dapm_context* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %14 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %3, align 8
  %15 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_dapm_context* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_dapm_context*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
