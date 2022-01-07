; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_adg.c_rsnd_adg_get_clkin.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_adg.c_rsnd_adg_get_clkin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_priv = type { i32 }
%struct.rsnd_adg = type { %struct.clk** }
%struct.clk = type { i32 }
%struct.device = type { i32 }

@CLKMAX = common dso_local global i32 0, align 4
@clk_name = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsnd_priv*, %struct.rsnd_adg*)* @rsnd_adg_get_clkin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsnd_adg_get_clkin(%struct.rsnd_priv* %0, %struct.rsnd_adg* %1) #0 {
  %3 = alloca %struct.rsnd_priv*, align 8
  %4 = alloca %struct.rsnd_adg*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca i32, align 4
  store %struct.rsnd_priv* %0, %struct.rsnd_priv** %3, align 8
  store %struct.rsnd_adg* %1, %struct.rsnd_adg** %4, align 8
  %8 = load %struct.rsnd_priv*, %struct.rsnd_priv** %3, align 8
  %9 = call %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv* %8)
  store %struct.device* %9, %struct.device** %5, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %36, %2
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @CLKMAX, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %39

14:                                               ; preds = %10
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = load i32*, i32** @clk_name, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.clk* @devm_clk_get(%struct.device* %15, i32 %20)
  store %struct.clk* %21, %struct.clk** %6, align 8
  %22 = load %struct.clk*, %struct.clk** %6, align 8
  %23 = call i64 @IS_ERR(%struct.clk* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %28

26:                                               ; preds = %14
  %27 = load %struct.clk*, %struct.clk** %6, align 8
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi %struct.clk* [ null, %25 ], [ %27, %26 ]
  %30 = load %struct.rsnd_adg*, %struct.rsnd_adg** %4, align 8
  %31 = getelementptr inbounds %struct.rsnd_adg, %struct.rsnd_adg* %30, i32 0, i32 0
  %32 = load %struct.clk**, %struct.clk*** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.clk*, %struct.clk** %32, i64 %34
  store %struct.clk* %29, %struct.clk** %35, align 8
  br label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %10

39:                                               ; preds = %10
  ret void
}

declare dso_local %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv*) #1

declare dso_local %struct.clk* @devm_clk_get(%struct.device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
