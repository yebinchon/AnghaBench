; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_88pm860x-codec.c_pm860x_hs_jack_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_88pm860x-codec.c_pm860x_hs_jack_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_jack = type { i32 }
%struct.pm860x_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, %struct.snd_soc_jack* }

@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@REG_HS_DET = common dso_local global i32 0, align 4
@EN_HS_DET = common dso_local global i32 0, align 4
@CLR_SHORT_HS2 = common dso_local global i32 0, align 4
@CLR_SHORT_HS1 = common dso_local global i32 0, align 4
@REG_SHORTS = common dso_local global i32 0, align 4
@CLR_SHORT_LO2 = common dso_local global i32 0, align 4
@CLR_SHORT_LO1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm860x_hs_jack_detect(%struct.snd_soc_component* %0, %struct.snd_soc_jack* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.snd_soc_jack*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pm860x_priv*, align 8
  %14 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store %struct.snd_soc_jack* %1, %struct.snd_soc_jack** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %16 = call %struct.pm860x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.pm860x_priv* %16, %struct.pm860x_priv** %13, align 8
  %17 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %8, align 8
  %18 = load %struct.pm860x_priv*, %struct.pm860x_priv** %13, align 8
  %19 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 4
  store %struct.snd_soc_jack* %17, %struct.snd_soc_jack** %20, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.pm860x_priv*, %struct.pm860x_priv** %13, align 8
  %23 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.pm860x_priv*, %struct.pm860x_priv** %13, align 8
  %27 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.pm860x_priv*, %struct.pm860x_priv** %13, align 8
  %31 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store i32 %29, i32* %32, align 8
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.pm860x_priv*, %struct.pm860x_priv** %13, align 8
  %35 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %6
  %42 = load %struct.pm860x_priv*, %struct.pm860x_priv** %13, align 8
  %43 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @REG_HS_DET, align 4
  %46 = load i32, i32* @EN_HS_DET, align 4
  %47 = load i32, i32* @EN_HS_DET, align 4
  %48 = call i32 @pm860x_set_bits(i32 %44, i32 %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %41, %6
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load i32, i32* @CLR_SHORT_HS2, align 4
  %54 = load i32, i32* @CLR_SHORT_HS1, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %14, align 4
  %56 = load %struct.pm860x_priv*, %struct.pm860x_priv** %13, align 8
  %57 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @REG_SHORTS, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @pm860x_set_bits(i32 %58, i32 %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %52, %49
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load i32, i32* @CLR_SHORT_LO2, align 4
  %68 = load i32, i32* @CLR_SHORT_LO1, align 4
  %69 = or i32 %67, %68
  store i32 %69, i32* %14, align 4
  %70 = load %struct.pm860x_priv*, %struct.pm860x_priv** %13, align 8
  %71 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @REG_SHORTS, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @pm860x_set_bits(i32 %72, i32 %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %66, %63
  %78 = load %struct.pm860x_priv*, %struct.pm860x_priv** %13, align 8
  %79 = call i32 @pm860x_component_handler(i32 0, %struct.pm860x_priv* %78)
  ret i32 0
}

declare dso_local %struct.pm860x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @pm860x_set_bits(i32, i32, i32, i32) #1

declare dso_local i32 @pm860x_component_handler(i32, %struct.pm860x_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
