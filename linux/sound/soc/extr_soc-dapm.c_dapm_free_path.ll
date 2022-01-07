; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_dapm_free_path.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_dapm_free_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_path = type { i32, i32, i32* }

@SND_SOC_DAPM_DIR_IN = common dso_local global i64 0, align 8
@SND_SOC_DAPM_DIR_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_dapm_path*)* @dapm_free_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dapm_free_path(%struct.snd_soc_dapm_path* %0) #0 {
  %2 = alloca %struct.snd_soc_dapm_path*, align 8
  store %struct.snd_soc_dapm_path* %0, %struct.snd_soc_dapm_path** %2, align 8
  %3 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %2, align 8
  %4 = getelementptr inbounds %struct.snd_soc_dapm_path, %struct.snd_soc_dapm_path* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* @SND_SOC_DAPM_DIR_IN, align 8
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  %8 = call i32 @list_del(i32* %7)
  %9 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %2, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dapm_path, %struct.snd_soc_dapm_path* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @SND_SOC_DAPM_DIR_OUT, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = call i32 @list_del(i32* %13)
  %15 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %2, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dapm_path, %struct.snd_soc_dapm_path* %15, i32 0, i32 1
  %17 = call i32 @list_del(i32* %16)
  %18 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %2, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dapm_path, %struct.snd_soc_dapm_path* %18, i32 0, i32 0
  %20 = call i32 @list_del(i32* %19)
  %21 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %2, align 8
  %22 = call i32 @kfree(%struct.snd_soc_dapm_path* %21)
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.snd_soc_dapm_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
