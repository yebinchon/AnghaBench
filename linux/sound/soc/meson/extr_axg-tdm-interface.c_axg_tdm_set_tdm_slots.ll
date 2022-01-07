; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-tdm-interface.c_axg_tdm_set_tdm_slots.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-tdm-interface.c_axg_tdm_set_tdm_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.TYPE_6__*, i32, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.axg_tdm_iface = type { i32, i32 }
%struct.axg_tdm_stream = type { i32* }

@.str = private unnamed_addr constant [23 x i8] c"interface has no slot\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S32_LE = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S24_LE = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S20_LE = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S16_LE = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S8 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unsupported slot width: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @axg_tdm_set_tdm_slots(%struct.snd_soc_dai* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.axg_tdm_iface*, align 8
  %13 = alloca %struct.axg_tdm_stream*, align 8
  %14 = alloca %struct.axg_tdm_stream*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %19 = call %struct.axg_tdm_iface* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %18)
  store %struct.axg_tdm_iface* %19, %struct.axg_tdm_iface** %12, align 8
  %20 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %21 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.axg_tdm_stream*
  store %struct.axg_tdm_stream* %23, %struct.axg_tdm_stream** %13, align 8
  %24 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %25 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.axg_tdm_stream*
  store %struct.axg_tdm_stream* %27, %struct.axg_tdm_stream** %14, align 8
  store i32 0, i32* %17, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @axg_tdm_slots_total(i32* %28)
  store i32 %29, i32* %15, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @axg_tdm_slots_total(i32* %30)
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %5
  %35 = load i32, i32* %16, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %39 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i32, i8*, ...) @dev_err(i32 %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %119

44:                                               ; preds = %34, %5
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %12, align 8
  %47 = getelementptr inbounds %struct.axg_tdm_iface, %struct.axg_tdm_iface* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %11, align 4
  switch i32 %48, label %69 [
    i32 0, label %49
    i32 32, label %50
    i32 24, label %54
    i32 16, label %61
    i32 8, label %65
  ]

49:                                               ; preds = %44
  store i32 32, i32* %11, align 4
  br label %50

50:                                               ; preds = %44, %49
  %51 = load i32, i32* @SNDRV_PCM_FMTBIT_S32_LE, align 4
  %52 = load i32, i32* %17, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %17, align 4
  br label %54

54:                                               ; preds = %44, %50
  %55 = load i32, i32* @SNDRV_PCM_FMTBIT_S24_LE, align 4
  %56 = load i32, i32* %17, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* @SNDRV_PCM_FMTBIT_S20_LE, align 4
  %59 = load i32, i32* %17, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %17, align 4
  br label %61

61:                                               ; preds = %44, %54
  %62 = load i32, i32* @SNDRV_PCM_FMTBIT_S16_LE, align 4
  %63 = load i32, i32* %17, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %17, align 4
  br label %65

65:                                               ; preds = %44, %61
  %66 = load i32, i32* @SNDRV_PCM_FMTBIT_S8, align 4
  %67 = load i32, i32* %17, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %17, align 4
  br label %77

69:                                               ; preds = %44
  %70 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %71 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i32 (i32, i8*, ...) @dev_err(i32 %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %6, align 4
  br label %119

77:                                               ; preds = %65
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %12, align 8
  %80 = getelementptr inbounds %struct.axg_tdm_iface, %struct.axg_tdm_iface* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %13, align 8
  %82 = icmp ne %struct.axg_tdm_stream* %81, null
  br i1 %82, label %83, label %99

83:                                               ; preds = %77
  %84 = load i32*, i32** %8, align 8
  %85 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %13, align 8
  %86 = getelementptr inbounds %struct.axg_tdm_stream, %struct.axg_tdm_stream* %85, i32 0, i32 0
  store i32* %84, i32** %86, align 8
  %87 = load i32, i32* %15, align 4
  %88 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %89 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i32 %87, i32* %92, align 4
  %93 = load i32, i32* %17, align 4
  %94 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %95 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  store i32 %93, i32* %98, align 4
  br label %99

99:                                               ; preds = %83, %77
  %100 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %14, align 8
  %101 = icmp ne %struct.axg_tdm_stream* %100, null
  br i1 %101, label %102, label %118

102:                                              ; preds = %99
  %103 = load i32*, i32** %9, align 8
  %104 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %14, align 8
  %105 = getelementptr inbounds %struct.axg_tdm_stream, %struct.axg_tdm_stream* %104, i32 0, i32 0
  store i32* %103, i32** %105, align 8
  %106 = load i32, i32* %16, align 4
  %107 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %108 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  store i32 %106, i32* %111, align 4
  %112 = load i32, i32* %17, align 4
  %113 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %114 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %113, i32 0, i32 0
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  store i32 %112, i32* %117, align 4
  br label %118

118:                                              ; preds = %102, %99
  store i32 0, i32* %6, align 4
  br label %119

119:                                              ; preds = %118, %69, %37
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local %struct.axg_tdm_iface* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @axg_tdm_slots_total(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
