; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_fallback.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32* }
%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.device = type { i32 }

@rsnd_ssi_pio_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s fallback to PIO mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsnd_mod*, %struct.rsnd_dai_stream*, %struct.rsnd_priv*)* @rsnd_ssi_fallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_ssi_fallback(%struct.rsnd_mod* %0, %struct.rsnd_dai_stream* %1, %struct.rsnd_priv* %2) #0 {
  %4 = alloca %struct.rsnd_mod*, align 8
  %5 = alloca %struct.rsnd_dai_stream*, align 8
  %6 = alloca %struct.rsnd_priv*, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %4, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %5, align 8
  store %struct.rsnd_priv* %2, %struct.rsnd_priv** %6, align 8
  %8 = load %struct.rsnd_priv*, %struct.rsnd_priv** %6, align 8
  %9 = call %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv* %8)
  store %struct.device* %9, %struct.device** %7, align 8
  %10 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %11 = getelementptr inbounds %struct.rsnd_mod, %struct.rsnd_mod* %10, i32 0, i32 0
  store i32* @rsnd_ssi_pio_ops, i32** %11, align 8
  %12 = load %struct.device*, %struct.device** %7, align 8
  %13 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %14 = call i32 @rsnd_mod_name(%struct.rsnd_mod* %13)
  %15 = call i32 @dev_info(%struct.device* %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %14)
  ret i32 0
}

declare dso_local %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @rsnd_mod_name(%struct.rsnd_mod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
