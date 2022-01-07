; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wcd9335_codec = type { %struct.TYPE_2__*, %struct.snd_soc_component*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@CLS_H_HIFI = common dso_local global i32 0, align 4
@NUM_CODEC_DAIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wcd9335_codec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcd9335_codec_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.wcd9335_codec*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.wcd9335_codec* @dev_get_drvdata(i32 %8)
  store %struct.wcd9335_codec* %9, %struct.wcd9335_codec** %4, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %4, align 8
  %12 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @snd_soc_component_init_regmap(%struct.snd_soc_component* %10, i32 %13)
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %16 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %4, align 8
  %17 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @wcd_clsh_ctrl_alloc(%struct.snd_soc_component* %15, i32 %18)
  %20 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %4, align 8
  %21 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %4, align 8
  %23 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @IS_ERR(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %4, align 8
  %29 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @PTR_ERR(i32 %30)
  store i32 %31, i32* %2, align 4
  br label %60

32:                                               ; preds = %1
  %33 = load i32, i32* @CLS_H_HIFI, align 4
  %34 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %4, align 8
  %35 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %37 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %4, align 8
  %38 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %37, i32 0, i32 1
  store %struct.snd_soc_component* %36, %struct.snd_soc_component** %38, align 8
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %40 = call i32 @wcd9335_codec_init(%struct.snd_soc_component* %39)
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %54, %32
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @NUM_CODEC_DAIS, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %4, align 8
  %47 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  br label %54

54:                                               ; preds = %45
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %41

57:                                               ; preds = %41
  %58 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %4, align 8
  %59 = call i32 @wcd9335_setup_irqs(%struct.wcd9335_codec* %58)
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %57, %27
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.wcd9335_codec* @dev_get_drvdata(i32) #1

declare dso_local i32 @snd_soc_component_init_regmap(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @wcd_clsh_ctrl_alloc(%struct.snd_soc_component*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @wcd9335_codec_init(%struct.snd_soc_component*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @wcd9335_setup_irqs(%struct.wcd9335_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
