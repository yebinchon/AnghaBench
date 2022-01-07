; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/zte/extr_zx-i2s.c_zx_i2s_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/zte/extr_zx-i2s.c_zx_i2s_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.zx_i2s_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @zx_i2s_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zx_i2s_shutdown(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.zx_i2s_info*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %6 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %7 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.zx_i2s_info* @dev_get_drvdata(i32 %8)
  store %struct.zx_i2s_info* %9, %struct.zx_i2s_info** %5, align 8
  %10 = load %struct.zx_i2s_info*, %struct.zx_i2s_info** %5, align 8
  %11 = getelementptr inbounds %struct.zx_i2s_info, %struct.zx_i2s_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @clk_disable_unprepare(i32 %12)
  %14 = load %struct.zx_i2s_info*, %struct.zx_i2s_info** %5, align 8
  %15 = getelementptr inbounds %struct.zx_i2s_info, %struct.zx_i2s_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @clk_disable_unprepare(i32 %16)
  ret void
}

declare dso_local %struct.zx_i2s_info* @dev_get_drvdata(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
