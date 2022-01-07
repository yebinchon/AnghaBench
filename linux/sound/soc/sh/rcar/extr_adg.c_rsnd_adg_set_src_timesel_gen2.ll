; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_adg.c_rsnd_adg_set_src_timesel_gen2.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_adg.c_rsnd_adg_set_src_timesel_gen2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.rsnd_adg = type { i32 }

@DIV_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsnd_adg_set_src_timesel_gen2(%struct.rsnd_mod* %0, %struct.rsnd_dai_stream* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rsnd_mod*, align 8
  %6 = alloca %struct.rsnd_dai_stream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rsnd_priv*, align 8
  %10 = alloca %struct.rsnd_adg*, align 8
  %11 = alloca %struct.rsnd_mod*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %5, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %19 = call %struct.rsnd_priv* @rsnd_mod_to_priv(%struct.rsnd_mod* %18)
  store %struct.rsnd_priv* %19, %struct.rsnd_priv** %9, align 8
  %20 = load %struct.rsnd_priv*, %struct.rsnd_priv** %9, align 8
  %21 = call %struct.rsnd_adg* @rsnd_priv_to_adg(%struct.rsnd_priv* %20)
  store %struct.rsnd_adg* %21, %struct.rsnd_adg** %10, align 8
  %22 = load %struct.rsnd_adg*, %struct.rsnd_adg** %10, align 8
  %23 = call %struct.rsnd_mod* @rsnd_mod_get(%struct.rsnd_adg* %22)
  store %struct.rsnd_mod* %23, %struct.rsnd_mod** %11, align 8
  %24 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %25 = call i32 @rsnd_mod_id(%struct.rsnd_mod* %24)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %16, align 4
  %27 = srem i32 %26, 2
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 16, i32 0
  store i32 %30, i32* %17, align 4
  %31 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %32 = call i32 @rsnd_mod_confirm_src(%struct.rsnd_mod* %31)
  %33 = load %struct.rsnd_priv*, %struct.rsnd_priv** %9, align 8
  %34 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @rsnd_adg_get_timesel_ratio(%struct.rsnd_priv* %33, %struct.rsnd_dai_stream* %34, i32 %35, i32 %36, i32* %12, i32* %13, i32* %15)
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %17, align 4
  %40 = shl i32 %38, %39
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %17, align 4
  %43 = shl i32 %41, %42
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %17, align 4
  %45 = shl i32 3871, %44
  store i32 %45, i32* %14, align 4
  %46 = load %struct.rsnd_mod*, %struct.rsnd_mod** %11, align 8
  %47 = load i32, i32* %16, align 4
  %48 = sdiv i32 %47, 2
  %49 = call i32 @SRCIN_TIMSEL(i32 %48)
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @rsnd_mod_bset(%struct.rsnd_mod* %46, i32 %49, i32 %50, i32 %51)
  %53 = load %struct.rsnd_mod*, %struct.rsnd_mod** %11, align 8
  %54 = load i32, i32* %16, align 4
  %55 = sdiv i32 %54, 2
  %56 = call i32 @SRCOUT_TIMSEL(i32 %55)
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @rsnd_mod_bset(%struct.rsnd_mod* %53, i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %4
  %63 = load %struct.rsnd_mod*, %struct.rsnd_mod** %11, align 8
  %64 = load i32, i32* @DIV_EN, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @rsnd_mod_bset(%struct.rsnd_mod* %63, i32 %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %62, %4
  ret i32 0
}

declare dso_local %struct.rsnd_priv* @rsnd_mod_to_priv(%struct.rsnd_mod*) #1

declare dso_local %struct.rsnd_adg* @rsnd_priv_to_adg(%struct.rsnd_priv*) #1

declare dso_local %struct.rsnd_mod* @rsnd_mod_get(%struct.rsnd_adg*) #1

declare dso_local i32 @rsnd_mod_id(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_mod_confirm_src(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_adg_get_timesel_ratio(%struct.rsnd_priv*, %struct.rsnd_dai_stream*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @rsnd_mod_bset(%struct.rsnd_mod*, i32, i32, i32) #1

declare dso_local i32 @SRCIN_TIMSEL(i32) #1

declare dso_local i32 @SRCOUT_TIMSEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
