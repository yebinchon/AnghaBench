; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_mix.c_rsnd_mix_volume_update.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_mix.c_rsnd_mix_volume_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_mod = type { i32 }

@MIX_MDBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsnd_dai_stream*, %struct.rsnd_mod*)* @rsnd_mix_volume_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsnd_mix_volume_update(%struct.rsnd_dai_stream* %0, %struct.rsnd_mod* %1) #0 {
  %3 = alloca %struct.rsnd_dai_stream*, align 8
  %4 = alloca %struct.rsnd_mod*, align 8
  store %struct.rsnd_dai_stream* %0, %struct.rsnd_dai_stream** %3, align 8
  store %struct.rsnd_mod* %1, %struct.rsnd_mod** %4, align 8
  %5 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %6 = load i32, i32* @MIX_MDBER, align 4
  %7 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %5, i32 %6, i32 0)
  %8 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %3, align 8
  %9 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %10 = call i32 @rsnd_mix_volume_parameter(%struct.rsnd_dai_stream* %8, %struct.rsnd_mod* %9)
  %11 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %12 = load i32, i32* @MIX_MDBER, align 4
  %13 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %11, i32 %12, i32 1)
  ret void
}

declare dso_local i32 @rsnd_mod_write(%struct.rsnd_mod*, i32, i32) #1

declare dso_local i32 @rsnd_mix_volume_parameter(%struct.rsnd_dai_stream*, %struct.rsnd_mod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
