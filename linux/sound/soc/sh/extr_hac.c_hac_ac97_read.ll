; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_hac.c_hac_ac97_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_hac.c_hac_ac97_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hac_priv = type { i32 }
%struct.snd_ac97 = type { i32 }

@hac_cpu_data = common dso_local global %struct.hac_priv* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.snd_ac97*, i16)* @hac_ac97_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @hac_ac97_read(%struct.snd_ac97* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.snd_ac97*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca %struct.hac_priv*, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %3, align 8
  store i16 %1, i16* %4, align 2
  store i32 0, i32* %5, align 4
  %7 = load %struct.hac_priv*, %struct.hac_priv** @hac_cpu_data, align 8
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.hac_priv, %struct.hac_priv* %7, i64 %9
  store %struct.hac_priv* %10, %struct.hac_priv** %6, align 8
  %11 = load %struct.hac_priv*, %struct.hac_priv** %6, align 8
  %12 = load i16, i16* %4, align 2
  %13 = call zeroext i16 @hac_read_codec_aux(%struct.hac_priv* %11, i16 zeroext %12)
  ret i16 %13
}

declare dso_local zeroext i16 @hac_read_codec_aux(%struct.hac_priv*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
