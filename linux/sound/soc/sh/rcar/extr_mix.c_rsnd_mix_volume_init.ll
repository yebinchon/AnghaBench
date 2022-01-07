; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_mix.c_rsnd_mix_volume_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_mix.c_rsnd_mix_volume_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_mod = type { i32 }
%struct.rsnd_mix = type { i32, i32, i32 }

@MIX_MIXIR = common dso_local global i32 0, align 4
@MIX_ADINR = common dso_local global i32 0, align 4
@MIX_MIXMR = common dso_local global i32 0, align 4
@MIX_MVPDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsnd_dai_stream*, %struct.rsnd_mod*)* @rsnd_mix_volume_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsnd_mix_volume_init(%struct.rsnd_dai_stream* %0, %struct.rsnd_mod* %1) #0 {
  %3 = alloca %struct.rsnd_dai_stream*, align 8
  %4 = alloca %struct.rsnd_mod*, align 8
  %5 = alloca %struct.rsnd_mix*, align 8
  store %struct.rsnd_dai_stream* %0, %struct.rsnd_dai_stream** %3, align 8
  store %struct.rsnd_mod* %1, %struct.rsnd_mod** %4, align 8
  %6 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %7 = call %struct.rsnd_mix* @rsnd_mod_to_mix(%struct.rsnd_mod* %6)
  store %struct.rsnd_mix* %7, %struct.rsnd_mix** %5, align 8
  %8 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %9 = load i32, i32* @MIX_MIXIR, align 4
  %10 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %8, i32 %9, i32 1)
  %11 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %12 = load i32, i32* @MIX_ADINR, align 4
  %13 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %3, align 8
  %14 = call i32 @rsnd_runtime_channel_after_ctu(%struct.rsnd_dai_stream* %13)
  %15 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %11, i32 %12, i32 %14)
  %16 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %17 = load i32, i32* @MIX_MIXMR, align 4
  %18 = load %struct.rsnd_mix*, %struct.rsnd_mix** %5, align 8
  %19 = getelementptr inbounds %struct.rsnd_mix, %struct.rsnd_mix* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @rsnd_kctrl_vals(i32 %20)
  %22 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %16, i32 %17, i32 %21)
  %23 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %24 = load i32, i32* @MIX_MVPDR, align 4
  %25 = load %struct.rsnd_mix*, %struct.rsnd_mix** %5, align 8
  %26 = getelementptr inbounds %struct.rsnd_mix, %struct.rsnd_mix* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @rsnd_kctrl_vals(i32 %27)
  %29 = shl i32 %28, 8
  %30 = load %struct.rsnd_mix*, %struct.rsnd_mix** %5, align 8
  %31 = getelementptr inbounds %struct.rsnd_mix, %struct.rsnd_mix* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @rsnd_kctrl_vals(i32 %32)
  %34 = or i32 %29, %33
  %35 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %23, i32 %24, i32 %34)
  %36 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %3, align 8
  %37 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %38 = call i32 @rsnd_mix_volume_parameter(%struct.rsnd_dai_stream* %36, %struct.rsnd_mod* %37)
  %39 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %40 = load i32, i32* @MIX_MIXIR, align 4
  %41 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %39, i32 %40, i32 0)
  ret void
}

declare dso_local %struct.rsnd_mix* @rsnd_mod_to_mix(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_mod_write(%struct.rsnd_mod*, i32, i32) #1

declare dso_local i32 @rsnd_runtime_channel_after_ctu(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_kctrl_vals(i32) #1

declare dso_local i32 @rsnd_mix_volume_parameter(%struct.rsnd_dai_stream*, %struct.rsnd_mod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
