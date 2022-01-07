; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_set_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_set_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32, %struct.TYPE_6__*, %struct.snd_soc_component* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.madera_priv = type { i32*, i32* }

@MADERA_MAX_AIF = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@MADERA_AIF_FRAME_CTRL_3 = common dso_local global i64 0, align 8
@MADERA_AIF_FRAME_CTRL_11 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @madera_set_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_set_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca %struct.madera_priv*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %17, i32 0, i32 2
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %18, align 8
  store %struct.snd_soc_component* %19, %struct.snd_soc_component** %12, align 8
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %21 = call %struct.madera_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %20)
  store %struct.madera_priv* %21, %struct.madera_priv** %13, align 8
  %22 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %23 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %14, align 4
  %27 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %28 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %15, align 4
  %33 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %34 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %16, align 4
  %39 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %40 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @MADERA_MAX_AIF, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %5
  %45 = load i32, i32* @ENOTSUPP, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %94

47:                                               ; preds = %5
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i32, i32* %16, align 4
  %52 = shl i32 1, %51
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %15, align 4
  %55 = shl i32 1, %54
  %56 = sub nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %50, %47
  %58 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* @MADERA_AIF_FRAME_CTRL_3, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @madera_set_channels_to_mask(%struct.snd_soc_dai* %58, i64 %62, i32 %63, i32 %64)
  %66 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* @MADERA_AIF_FRAME_CTRL_11, align 8
  %70 = add nsw i64 %68, %69
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @madera_set_channels_to_mask(%struct.snd_soc_dai* %66, i64 %70, i32 %71, i32 %72)
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.madera_priv*, %struct.madera_priv** %13, align 8
  %76 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %79 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %77, i64 %82
  store i32 %74, i32* %83, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.madera_priv*, %struct.madera_priv** %13, align 8
  %86 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %89 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %87, i64 %92
  store i32 %84, i32* %93, align 4
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %57, %44
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local %struct.madera_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @madera_set_channels_to_mask(%struct.snd_soc_dai*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
