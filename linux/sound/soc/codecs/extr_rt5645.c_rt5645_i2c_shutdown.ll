; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5645.c_rt5645_i2c_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5645.c_rt5645_i2c_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.rt5645_priv = type { i32 }

@RT5645_GEN_CTRL3 = common dso_local global i32 0, align 4
@RT5645_RING2_SLEEVE_GND = common dso_local global i32 0, align 4
@RT5645_IN1_CTRL2 = common dso_local global i32 0, align 4
@RT5645_CBJ_MN_JD = common dso_local global i32 0, align 4
@RT5645_IN1_CTRL1 = common dso_local global i32 0, align 4
@RT5645_CBJ_BST1_EN = common dso_local global i32 0, align 4
@RT5645_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @rt5645_i2c_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt5645_i2c_shutdown(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.rt5645_priv*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.rt5645_priv* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.rt5645_priv* %5, %struct.rt5645_priv** %3, align 8
  %6 = load %struct.rt5645_priv*, %struct.rt5645_priv** %3, align 8
  %7 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @RT5645_GEN_CTRL3, align 4
  %10 = load i32, i32* @RT5645_RING2_SLEEVE_GND, align 4
  %11 = load i32, i32* @RT5645_RING2_SLEEVE_GND, align 4
  %12 = call i32 @regmap_update_bits(i32 %8, i32 %9, i32 %10, i32 %11)
  %13 = load %struct.rt5645_priv*, %struct.rt5645_priv** %3, align 8
  %14 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @RT5645_IN1_CTRL2, align 4
  %17 = load i32, i32* @RT5645_CBJ_MN_JD, align 4
  %18 = load i32, i32* @RT5645_CBJ_MN_JD, align 4
  %19 = call i32 @regmap_update_bits(i32 %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.rt5645_priv*, %struct.rt5645_priv** %3, align 8
  %21 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @RT5645_IN1_CTRL1, align 4
  %24 = load i32, i32* @RT5645_CBJ_BST1_EN, align 4
  %25 = call i32 @regmap_update_bits(i32 %22, i32 %23, i32 %24, i32 0)
  %26 = call i32 @msleep(i32 20)
  %27 = load %struct.rt5645_priv*, %struct.rt5645_priv** %3, align 8
  %28 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @RT5645_RESET, align 4
  %31 = call i32 @regmap_write(i32 %29, i32 %30, i32 0)
  ret void
}

declare dso_local %struct.rt5645_priv* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
