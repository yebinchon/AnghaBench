; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98095.c_max98095_jack_detect_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98095.c_max98095_jack_detect_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.max98095_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@M98095_JDEN = common dso_local global i32 0, align 4
@M98095_DEFAULT_SLEW_DELAY = common dso_local global i32 0, align 4
@M98095_PIN5EN = common dso_local global i32 0, align 4
@M98095_08E_JACK_DC_SLEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to cfg auto detect %d\0A\00", align 1
@M98095_089_JACK_DET_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @max98095_jack_detect_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98095_jack_detect_enable(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.max98095_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.max98095_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.max98095_priv* %9, %struct.max98095_priv** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* @M98095_JDEN, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @M98095_DEFAULT_SLEW_DELAY, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.max98095_priv*, %struct.max98095_priv** %4, align 8
  %13 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @M98095_PIN5EN, align 4
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %18, %1
  %23 = load %struct.max98095_priv*, %struct.max98095_priv** %4, align 8
  %24 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.max98095_priv*, %struct.max98095_priv** %4, align 8
  %31 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %29, %22
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %37 = load i32, i32* @M98095_08E_JACK_DC_SLEW, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %36, i32 %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %44 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %65

49:                                               ; preds = %35
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %51 = load i32, i32* @M98095_089_JACK_DET_AUTO, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %50, i32 %51, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %49
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %58 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %65

63:                                               ; preds = %49
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %56, %42
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.max98095_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
