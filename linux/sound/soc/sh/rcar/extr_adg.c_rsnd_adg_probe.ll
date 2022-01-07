; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_adg.c_rsnd_adg_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_adg.c_rsnd_adg_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_priv = type { %struct.rsnd_adg* }
%struct.rsnd_adg = type { i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@adg_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsnd_adg_probe(%struct.rsnd_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rsnd_priv*, align 8
  %4 = alloca %struct.rsnd_adg*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.rsnd_priv* %0, %struct.rsnd_priv** %3, align 8
  %7 = load %struct.rsnd_priv*, %struct.rsnd_priv** %3, align 8
  %8 = call %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv* %7)
  store %struct.device* %8, %struct.device** %5, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.rsnd_adg* @devm_kzalloc(%struct.device* %9, i32 4, i32 %10)
  store %struct.rsnd_adg* %11, %struct.rsnd_adg** %4, align 8
  %12 = load %struct.rsnd_adg*, %struct.rsnd_adg** %4, align 8
  %13 = icmp ne %struct.rsnd_adg* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %41

17:                                               ; preds = %1
  %18 = load %struct.rsnd_priv*, %struct.rsnd_priv** %3, align 8
  %19 = load %struct.rsnd_adg*, %struct.rsnd_adg** %4, align 8
  %20 = getelementptr inbounds %struct.rsnd_adg, %struct.rsnd_adg* %19, i32 0, i32 0
  %21 = call i32 @rsnd_mod_init(%struct.rsnd_priv* %18, i32* %20, i32* @adg_ops, i32* null, i32 0, i32 0)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %41

26:                                               ; preds = %17
  %27 = load %struct.rsnd_priv*, %struct.rsnd_priv** %3, align 8
  %28 = load %struct.rsnd_adg*, %struct.rsnd_adg** %4, align 8
  %29 = call i32 @rsnd_adg_get_clkin(%struct.rsnd_priv* %27, %struct.rsnd_adg* %28)
  %30 = load %struct.rsnd_priv*, %struct.rsnd_priv** %3, align 8
  %31 = load %struct.rsnd_adg*, %struct.rsnd_adg** %4, align 8
  %32 = call i32 @rsnd_adg_get_clkout(%struct.rsnd_priv* %30, %struct.rsnd_adg* %31)
  %33 = load %struct.rsnd_priv*, %struct.rsnd_priv** %3, align 8
  %34 = load %struct.rsnd_adg*, %struct.rsnd_adg** %4, align 8
  %35 = call i32 @rsnd_adg_clk_dbg_info(%struct.rsnd_priv* %33, %struct.rsnd_adg* %34)
  %36 = load %struct.rsnd_adg*, %struct.rsnd_adg** %4, align 8
  %37 = load %struct.rsnd_priv*, %struct.rsnd_priv** %3, align 8
  %38 = getelementptr inbounds %struct.rsnd_priv, %struct.rsnd_priv* %37, i32 0, i32 0
  store %struct.rsnd_adg* %36, %struct.rsnd_adg** %38, align 8
  %39 = load %struct.rsnd_priv*, %struct.rsnd_priv** %3, align 8
  %40 = call i32 @rsnd_adg_clk_enable(%struct.rsnd_priv* %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %26, %24, %14
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv*) #1

declare dso_local %struct.rsnd_adg* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @rsnd_mod_init(%struct.rsnd_priv*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @rsnd_adg_get_clkin(%struct.rsnd_priv*, %struct.rsnd_adg*) #1

declare dso_local i32 @rsnd_adg_get_clkout(%struct.rsnd_priv*, %struct.rsnd_adg*) #1

declare dso_local i32 @rsnd_adg_clk_dbg_info(%struct.rsnd_priv*, %struct.rsnd_adg*) #1

declare dso_local i32 @rsnd_adg_clk_enable(%struct.rsnd_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
