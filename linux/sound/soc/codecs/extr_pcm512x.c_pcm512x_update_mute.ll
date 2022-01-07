; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm512x.c_pcm512x_update_mute.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm512x.c_pcm512x_update_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm512x_priv = type { i32, i32 }

@PCM512x_MUTE = common dso_local global i32 0, align 4
@PCM512x_RQML = common dso_local global i32 0, align 4
@PCM512x_RQMR = common dso_local global i32 0, align 4
@PCM512x_RQML_SHIFT = common dso_local global i32 0, align 4
@PCM512x_RQMR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcm512x_priv*)* @pcm512x_update_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm512x_update_mute(%struct.pcm512x_priv* %0) #0 {
  %2 = alloca %struct.pcm512x_priv*, align 8
  store %struct.pcm512x_priv* %0, %struct.pcm512x_priv** %2, align 8
  %3 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %2, align 8
  %4 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @PCM512x_MUTE, align 4
  %7 = load i32, i32* @PCM512x_RQML, align 4
  %8 = load i32, i32* @PCM512x_RQMR, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %2, align 8
  %11 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 5
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* @PCM512x_RQML_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %2, align 8
  %21 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 3
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* @PCM512x_RQMR_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = or i32 %19, %29
  %31 = call i32 @regmap_update_bits(i32 %5, i32 %6, i32 %9, i32 %30)
  ret i32 %31
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
