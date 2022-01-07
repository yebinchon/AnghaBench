; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_mc13783.c_mc13783_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_mc13783.c_mc13783_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mc13783_priv = type { i64, i64, i32 }

@MC13783_AUDIO_RX0 = common dso_local global i32 0, align 4
@MC13783_AUDIO_RX1 = common dso_local global i32 0, align 4
@MC13783_AUDIO_TX = common dso_local global i32 0, align 4
@MC13783_SSI_NETWORK = common dso_local global i32 0, align 4
@MC13783_AUDIO_CODEC = common dso_local global i32 0, align 4
@MC13783_AUDIO_DAC = common dso_local global i32 0, align 4
@MC13783_SSI1_PORT = common dso_local global i64 0, align 8
@AUDIO_SSI_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @mc13783_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc13783_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.mc13783_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = call %struct.mc13783_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %4)
  store %struct.mc13783_priv* %5, %struct.mc13783_priv** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %8 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dev_get_regmap(i32 %11, i32* null)
  %13 = call i32 @snd_soc_component_init_regmap(%struct.snd_soc_component* %6, i32 %12)
  %14 = load %struct.mc13783_priv*, %struct.mc13783_priv** %3, align 8
  %15 = getelementptr inbounds %struct.mc13783_priv, %struct.mc13783_priv* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @MC13783_AUDIO_RX0, align 4
  %18 = call i32 @mc13xxx_reg_write(i32 %16, i32 %17, i32 153747)
  %19 = load %struct.mc13783_priv*, %struct.mc13783_priv** %3, align 8
  %20 = getelementptr inbounds %struct.mc13783_priv, %struct.mc13783_priv* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MC13783_AUDIO_RX1, align 4
  %23 = call i32 @mc13xxx_reg_write(i32 %21, i32 %22, i32 54106)
  %24 = load %struct.mc13783_priv*, %struct.mc13783_priv** %3, align 8
  %25 = getelementptr inbounds %struct.mc13783_priv, %struct.mc13783_priv* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MC13783_AUDIO_TX, align 4
  %28 = call i32 @mc13xxx_reg_write(i32 %26, i32 %27, i32 4325376)
  %29 = load %struct.mc13783_priv*, %struct.mc13783_priv** %3, align 8
  %30 = getelementptr inbounds %struct.mc13783_priv, %struct.mc13783_priv* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @MC13783_SSI_NETWORK, align 4
  %33 = call i32 @mc13xxx_reg_write(i32 %31, i32 %32, i32 77920)
  %34 = load %struct.mc13783_priv*, %struct.mc13783_priv** %3, align 8
  %35 = getelementptr inbounds %struct.mc13783_priv, %struct.mc13783_priv* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @MC13783_AUDIO_CODEC, align 4
  %38 = call i32 @mc13xxx_reg_write(i32 %36, i32 %37, i32 1572903)
  %39 = load %struct.mc13783_priv*, %struct.mc13783_priv** %3, align 8
  %40 = getelementptr inbounds %struct.mc13783_priv, %struct.mc13783_priv* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @MC13783_AUDIO_DAC, align 4
  %43 = call i32 @mc13xxx_reg_write(i32 %41, i32 %42, i32 917508)
  %44 = load %struct.mc13783_priv*, %struct.mc13783_priv** %3, align 8
  %45 = getelementptr inbounds %struct.mc13783_priv, %struct.mc13783_priv* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MC13783_SSI1_PORT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %1
  %50 = load %struct.mc13783_priv*, %struct.mc13783_priv** %3, align 8
  %51 = getelementptr inbounds %struct.mc13783_priv, %struct.mc13783_priv* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @MC13783_AUDIO_CODEC, align 4
  %54 = load i32, i32* @AUDIO_SSI_SEL, align 4
  %55 = call i32 @mc13xxx_reg_rmw(i32 %52, i32 %53, i32 %54, i32 0)
  br label %64

56:                                               ; preds = %1
  %57 = load %struct.mc13783_priv*, %struct.mc13783_priv** %3, align 8
  %58 = getelementptr inbounds %struct.mc13783_priv, %struct.mc13783_priv* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @MC13783_AUDIO_CODEC, align 4
  %61 = load i32, i32* @AUDIO_SSI_SEL, align 4
  %62 = load i32, i32* @AUDIO_SSI_SEL, align 4
  %63 = call i32 @mc13xxx_reg_rmw(i32 %59, i32 %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %56, %49
  %65 = load %struct.mc13783_priv*, %struct.mc13783_priv** %3, align 8
  %66 = getelementptr inbounds %struct.mc13783_priv, %struct.mc13783_priv* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @MC13783_SSI1_PORT, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load %struct.mc13783_priv*, %struct.mc13783_priv** %3, align 8
  %72 = getelementptr inbounds %struct.mc13783_priv, %struct.mc13783_priv* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @MC13783_AUDIO_DAC, align 4
  %75 = load i32, i32* @AUDIO_SSI_SEL, align 4
  %76 = call i32 @mc13xxx_reg_rmw(i32 %73, i32 %74, i32 %75, i32 0)
  br label %85

77:                                               ; preds = %64
  %78 = load %struct.mc13783_priv*, %struct.mc13783_priv** %3, align 8
  %79 = getelementptr inbounds %struct.mc13783_priv, %struct.mc13783_priv* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @MC13783_AUDIO_DAC, align 4
  %82 = load i32, i32* @AUDIO_SSI_SEL, align 4
  %83 = load i32, i32* @AUDIO_SSI_SEL, align 4
  %84 = call i32 @mc13xxx_reg_rmw(i32 %80, i32 %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %77, %70
  ret i32 0
}

declare dso_local %struct.mc13783_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_init_regmap(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dev_get_regmap(i32, i32*) #1

declare dso_local i32 @mc13xxx_reg_write(i32, i32, i32) #1

declare dso_local i32 @mc13xxx_reg_rmw(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
