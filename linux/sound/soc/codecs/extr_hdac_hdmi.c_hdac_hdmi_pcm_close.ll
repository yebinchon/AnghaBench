; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_pcm_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_pcm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i64 }
%struct.hdac_hdmi_priv = type { %struct.hdac_hdmi_dai_port_map* }
%struct.hdac_hdmi_dai_port_map = type { i32*, i32 }
%struct.hdac_hdmi_pcm = type { i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @hdac_hdmi_pcm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdac_hdmi_pcm_close(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.hdac_hdmi_priv*, align 8
  %6 = alloca %struct.hdac_hdmi_dai_port_map*, align 8
  %7 = alloca %struct.hdac_hdmi_pcm*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %9 = call %struct.hdac_hdmi_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %8)
  store %struct.hdac_hdmi_priv* %9, %struct.hdac_hdmi_priv** %5, align 8
  %10 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %5, align 8
  %11 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %10, i32 0, i32 0
  %12 = load %struct.hdac_hdmi_dai_port_map*, %struct.hdac_hdmi_dai_port_map** %11, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.hdac_hdmi_dai_port_map, %struct.hdac_hdmi_dai_port_map* %12, i64 %15
  store %struct.hdac_hdmi_dai_port_map* %16, %struct.hdac_hdmi_dai_port_map** %6, align 8
  %17 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %5, align 8
  %18 = load %struct.hdac_hdmi_dai_port_map*, %struct.hdac_hdmi_dai_port_map** %6, align 8
  %19 = getelementptr inbounds %struct.hdac_hdmi_dai_port_map, %struct.hdac_hdmi_dai_port_map* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.hdac_hdmi_pcm* @hdac_hdmi_get_pcm_from_cvt(%struct.hdac_hdmi_priv* %17, i32 %20)
  store %struct.hdac_hdmi_pcm* %21, %struct.hdac_hdmi_pcm** %7, align 8
  %22 = load %struct.hdac_hdmi_pcm*, %struct.hdac_hdmi_pcm** %7, align 8
  %23 = icmp ne %struct.hdac_hdmi_pcm* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %2
  %25 = load %struct.hdac_hdmi_pcm*, %struct.hdac_hdmi_pcm** %7, align 8
  %26 = getelementptr inbounds %struct.hdac_hdmi_pcm, %struct.hdac_hdmi_pcm* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.hdac_hdmi_pcm*, %struct.hdac_hdmi_pcm** %7, align 8
  %29 = getelementptr inbounds %struct.hdac_hdmi_pcm, %struct.hdac_hdmi_pcm* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = load %struct.hdac_hdmi_pcm*, %struct.hdac_hdmi_pcm** %7, align 8
  %31 = getelementptr inbounds %struct.hdac_hdmi_pcm, %struct.hdac_hdmi_pcm* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @memset(i32 %32, i32 0, i32 4)
  %34 = load %struct.hdac_hdmi_pcm*, %struct.hdac_hdmi_pcm** %7, align 8
  %35 = getelementptr inbounds %struct.hdac_hdmi_pcm, %struct.hdac_hdmi_pcm* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.hdac_hdmi_pcm*, %struct.hdac_hdmi_pcm** %7, align 8
  %37 = getelementptr inbounds %struct.hdac_hdmi_pcm, %struct.hdac_hdmi_pcm* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  br label %39

39:                                               ; preds = %24, %2
  %40 = load %struct.hdac_hdmi_dai_port_map*, %struct.hdac_hdmi_dai_port_map** %6, align 8
  %41 = getelementptr inbounds %struct.hdac_hdmi_dai_port_map, %struct.hdac_hdmi_dai_port_map* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.hdac_hdmi_dai_port_map*, %struct.hdac_hdmi_dai_port_map** %6, align 8
  %46 = getelementptr inbounds %struct.hdac_hdmi_dai_port_map, %struct.hdac_hdmi_dai_port_map* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %44, %39
  ret void
}

declare dso_local %struct.hdac_hdmi_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local %struct.hdac_hdmi_pcm* @hdac_hdmi_get_pcm_from_cvt(%struct.hdac_hdmi_priv*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
