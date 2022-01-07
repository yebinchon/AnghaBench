; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5651.c_rt5651_jack_inserted.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5651.c_rt5651_jack_inserted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt5651_priv = type { i32, i64, i64 }

@.str = private unnamed_addr constant [21 x i8] c"jack-detect gpio %d\0A\00", align 1
@RT5651_INT_IRQ_ST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"irq status %#04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @rt5651_jack_inserted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5651_jack_inserted(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.rt5651_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.rt5651_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.rt5651_priv* %7, %struct.rt5651_priv** %4, align 8
  %8 = load %struct.rt5651_priv*, %struct.rt5651_priv** %4, align 8
  %9 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.rt5651_priv*, %struct.rt5651_priv** %4, align 8
  %14 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @gpiod_get_value_cansleep(i64 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %18 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %58

23:                                               ; preds = %1
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %25 = load i32, i32* @RT5651_INT_IRQ_ST, align 4
  %26 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %28 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @dev_dbg(i32 %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.rt5651_priv*, %struct.rt5651_priv** %4, align 8
  %33 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %44 [
    i32 130, label %35
    i32 129, label %38
    i32 128, label %41
  ]

35:                                               ; preds = %23
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 4096
  store i32 %37, i32* %5, align 4
  br label %45

38:                                               ; preds = %23
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, 8192
  store i32 %40, i32* %5, align 4
  br label %45

41:                                               ; preds = %23
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, 16384
  store i32 %43, i32* %5, align 4
  br label %45

44:                                               ; preds = %23
  br label %45

45:                                               ; preds = %44, %41, %38, %35
  %46 = load %struct.rt5651_priv*, %struct.rt5651_priv** %4, align 8
  %47 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %2, align 4
  br label %58

54:                                               ; preds = %45
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %54, %50, %12
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.rt5651_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @gpiod_get_value_cansleep(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
