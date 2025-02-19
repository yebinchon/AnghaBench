; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_88pm860x-codec.c_pm860x_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_88pm860x-codec.c_pm860x_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.pm860x_priv = type { i32 }

@AUDIO_PLL = common dso_local global i32 0, align 4
@AUDIO_SECTION_ON = common dso_local global i32 0, align 4
@REG_MISC2 = common dso_local global i32 0, align 4
@AUDIO_SECTION_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @pm860x_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm860x_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pm860x_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = call %struct.pm860x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %7)
  store %struct.pm860x_priv* %8, %struct.pm860x_priv** %5, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %51 [
    i32 130, label %10
    i32 129, label %11
    i32 128, label %12
    i32 131, label %39
  ]

10:                                               ; preds = %2
  br label %51

11:                                               ; preds = %2
  br label %51

12:                                               ; preds = %2
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %14 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %13)
  %15 = icmp eq i32 %14, 131
  br i1 %15, label %16, label %38

16:                                               ; preds = %12
  %17 = load i32, i32* @AUDIO_PLL, align 4
  %18 = load i32, i32* @AUDIO_SECTION_ON, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load %struct.pm860x_priv*, %struct.pm860x_priv** %5, align 8
  %21 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @REG_MISC2, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @pm860x_reg_write(i32 %22, i32 %23, i32 %24)
  %26 = call i32 @udelay(i32 300)
  %27 = load i32, i32* @AUDIO_PLL, align 4
  %28 = load i32, i32* @AUDIO_SECTION_RESET, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @AUDIO_SECTION_ON, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %6, align 4
  %32 = load %struct.pm860x_priv*, %struct.pm860x_priv** %5, align 8
  %33 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @REG_MISC2, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @pm860x_reg_write(i32 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %16, %12
  br label %51

39:                                               ; preds = %2
  %40 = load i32, i32* @AUDIO_PLL, align 4
  %41 = load i32, i32* @AUDIO_SECTION_RESET, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @AUDIO_SECTION_ON, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %6, align 4
  %45 = load %struct.pm860x_priv*, %struct.pm860x_priv** %5, align 8
  %46 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @REG_MISC2, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @pm860x_set_bits(i32 %47, i32 %48, i32 %49, i32 0)
  br label %51

51:                                               ; preds = %2, %39, %38, %11, %10
  ret i32 0
}

declare dso_local %struct.pm860x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @pm860x_reg_write(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pm860x_set_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
