; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_adg.c_rsnd_adg_set_cmd_timsel_gen2.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_adg.c_rsnd_adg_set_cmd_timsel_gen2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.rsnd_adg = type { i32 }

@CMDOUT_TIMSEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsnd_adg_set_cmd_timsel_gen2(%struct.rsnd_mod* %0, %struct.rsnd_dai_stream* %1) #0 {
  %3 = alloca %struct.rsnd_mod*, align 8
  %4 = alloca %struct.rsnd_dai_stream*, align 8
  %5 = alloca %struct.rsnd_priv*, align 8
  %6 = alloca %struct.rsnd_adg*, align 8
  %7 = alloca %struct.rsnd_mod*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %3, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %4, align 8
  %12 = load %struct.rsnd_mod*, %struct.rsnd_mod** %3, align 8
  %13 = call %struct.rsnd_priv* @rsnd_mod_to_priv(%struct.rsnd_mod* %12)
  store %struct.rsnd_priv* %13, %struct.rsnd_priv** %5, align 8
  %14 = load %struct.rsnd_priv*, %struct.rsnd_priv** %5, align 8
  %15 = call %struct.rsnd_adg* @rsnd_priv_to_adg(%struct.rsnd_priv* %14)
  store %struct.rsnd_adg* %15, %struct.rsnd_adg** %6, align 8
  %16 = load %struct.rsnd_adg*, %struct.rsnd_adg** %6, align 8
  %17 = call %struct.rsnd_mod* @rsnd_mod_get(%struct.rsnd_adg* %16)
  store %struct.rsnd_mod* %17, %struct.rsnd_mod** %7, align 8
  %18 = load %struct.rsnd_mod*, %struct.rsnd_mod** %3, align 8
  %19 = call i32 @rsnd_mod_id(%struct.rsnd_mod* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = srem i32 %20, 2
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 16, i32 0
  store i32 %24, i32* %9, align 4
  %25 = load %struct.rsnd_priv*, %struct.rsnd_priv** %5, align 8
  %26 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %4, align 8
  %27 = load %struct.rsnd_priv*, %struct.rsnd_priv** %5, align 8
  %28 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %4, align 8
  %29 = call i32 @rsnd_src_get_in_rate(%struct.rsnd_priv* %27, %struct.rsnd_dai_stream* %28)
  %30 = load %struct.rsnd_priv*, %struct.rsnd_priv** %5, align 8
  %31 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %4, align 8
  %32 = call i32 @rsnd_src_get_out_rate(%struct.rsnd_priv* %30, %struct.rsnd_dai_stream* %31)
  %33 = call i32 @rsnd_adg_get_timesel_ratio(%struct.rsnd_priv* %25, %struct.rsnd_dai_stream* %26, i32 %29, i32 %32, i32* null, i32* %11, i32* null)
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %9, align 4
  %36 = shl i32 %34, %35
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %9, align 4
  %38 = shl i32 3871, %37
  store i32 %38, i32* %10, align 4
  %39 = load %struct.rsnd_mod*, %struct.rsnd_mod** %7, align 8
  %40 = load i32, i32* @CMDOUT_TIMSEL, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @rsnd_mod_bset(%struct.rsnd_mod* %39, i32 %40, i32 %41, i32 %42)
  ret i32 0
}

declare dso_local %struct.rsnd_priv* @rsnd_mod_to_priv(%struct.rsnd_mod*) #1

declare dso_local %struct.rsnd_adg* @rsnd_priv_to_adg(%struct.rsnd_priv*) #1

declare dso_local %struct.rsnd_mod* @rsnd_mod_get(%struct.rsnd_adg*) #1

declare dso_local i32 @rsnd_mod_id(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_adg_get_timesel_ratio(%struct.rsnd_priv*, %struct.rsnd_dai_stream*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @rsnd_src_get_in_rate(%struct.rsnd_priv*, %struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_src_get_out_rate(%struct.rsnd_priv*, %struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_mod_bset(%struct.rsnd_mod*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
