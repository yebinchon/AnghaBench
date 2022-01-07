; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_src.c_rsnd_src_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_src.c_rsnd_src_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.rsnd_src = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsnd_mod*, %struct.rsnd_dai_stream*, %struct.rsnd_priv*)* @rsnd_src_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_src_init(%struct.rsnd_mod* %0, %struct.rsnd_dai_stream* %1, %struct.rsnd_priv* %2) #0 {
  %4 = alloca %struct.rsnd_mod*, align 8
  %5 = alloca %struct.rsnd_dai_stream*, align 8
  %6 = alloca %struct.rsnd_priv*, align 8
  %7 = alloca %struct.rsnd_src*, align 8
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %4, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %5, align 8
  store %struct.rsnd_priv* %2, %struct.rsnd_priv** %6, align 8
  %8 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %9 = call %struct.rsnd_src* @rsnd_mod_to_src(%struct.rsnd_mod* %8)
  store %struct.rsnd_src* %9, %struct.rsnd_src** %7, align 8
  %10 = load %struct.rsnd_src*, %struct.rsnd_src** %7, align 8
  %11 = getelementptr inbounds %struct.rsnd_src, %struct.rsnd_src* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %14 = call i32 @rsnd_mod_power_on(%struct.rsnd_mod* %13)
  %15 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %16 = call i32 @rsnd_src_activation(%struct.rsnd_mod* %15)
  %17 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %18 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %19 = call i32 @rsnd_src_set_convert_rate(%struct.rsnd_dai_stream* %17, %struct.rsnd_mod* %18)
  %20 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %21 = call i32 @rsnd_src_status_clear(%struct.rsnd_mod* %20)
  ret i32 0
}

declare dso_local %struct.rsnd_src* @rsnd_mod_to_src(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_mod_power_on(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_src_activation(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_src_set_convert_rate(%struct.rsnd_dai_stream*, %struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_src_status_clear(%struct.rsnd_mod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
