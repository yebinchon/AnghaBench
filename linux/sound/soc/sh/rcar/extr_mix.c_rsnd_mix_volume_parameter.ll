; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_mix.c_rsnd_mix_volume_parameter.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_mix.c_rsnd_mix_volume_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_mod = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.device = type { i32 }
%struct.rsnd_mix = type { i32 }

@A = common dso_local global i32 0, align 4
@B = common dso_local global i32 0, align 4
@C = common dso_local global i32 0, align 4
@D = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"MIX A/B/C/D = %02x/%02x/%02x/%02x\0A\00", align 1
@MIX_MDBAR = common dso_local global i32 0, align 4
@MIX_MDBBR = common dso_local global i32 0, align 4
@MIX_MDBCR = common dso_local global i32 0, align 4
@MIX_MDBDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsnd_dai_stream*, %struct.rsnd_mod*)* @rsnd_mix_volume_parameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsnd_mix_volume_parameter(%struct.rsnd_dai_stream* %0, %struct.rsnd_mod* %1) #0 {
  %3 = alloca %struct.rsnd_dai_stream*, align 8
  %4 = alloca %struct.rsnd_mod*, align 8
  %5 = alloca %struct.rsnd_priv*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.rsnd_mix*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rsnd_dai_stream* %0, %struct.rsnd_dai_stream** %3, align 8
  store %struct.rsnd_mod* %1, %struct.rsnd_mod** %4, align 8
  %12 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %13 = call %struct.rsnd_priv* @rsnd_mod_to_priv(%struct.rsnd_mod* %12)
  store %struct.rsnd_priv* %13, %struct.rsnd_priv** %5, align 8
  %14 = load %struct.rsnd_priv*, %struct.rsnd_priv** %5, align 8
  %15 = call %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv* %14)
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %17 = call %struct.rsnd_mix* @rsnd_mod_to_mix(%struct.rsnd_mod* %16)
  store %struct.rsnd_mix* %17, %struct.rsnd_mix** %7, align 8
  %18 = load %struct.rsnd_mix*, %struct.rsnd_mix** %7, align 8
  %19 = load i32, i32* @A, align 4
  %20 = call i32 @rsnd_mix_get_vol(%struct.rsnd_mix* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.rsnd_mix*, %struct.rsnd_mix** %7, align 8
  %22 = load i32, i32* @B, align 4
  %23 = call i32 @rsnd_mix_get_vol(%struct.rsnd_mix* %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.rsnd_mix*, %struct.rsnd_mix** %7, align 8
  %25 = load i32, i32* @C, align 4
  %26 = call i32 @rsnd_mix_get_vol(%struct.rsnd_mix* %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.rsnd_mix*, %struct.rsnd_mix** %7, align 8
  %28 = load i32, i32* @D, align 4
  %29 = call i32 @rsnd_mix_get_vol(%struct.rsnd_mix* %27, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @dev_dbg(%struct.device* %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %37 = load i32, i32* @MIX_MDBAR, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %36, i32 %37, i32 %38)
  %40 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %41 = load i32, i32* @MIX_MDBBR, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %40, i32 %41, i32 %42)
  %44 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %45 = load i32, i32* @MIX_MDBCR, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %44, i32 %45, i32 %46)
  %48 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %49 = load i32, i32* @MIX_MDBDR, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %48, i32 %49, i32 %50)
  ret void
}

declare dso_local %struct.rsnd_priv* @rsnd_mod_to_priv(%struct.rsnd_mod*) #1

declare dso_local %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv*) #1

declare dso_local %struct.rsnd_mix* @rsnd_mod_to_mix(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_mix_get_vol(%struct.rsnd_mix*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @rsnd_mod_write(%struct.rsnd_mod*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
