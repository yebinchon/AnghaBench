; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_sst_fill_ssp_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_sst_fill_ssp_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.sst_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i8* }

@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SSP_MODE_PCM = common dso_local global i8* null, align 8
@SSP_PCM_MODE_NETWORK = common dso_local global i32 0, align 4
@SSP_MODE_I2S = common dso_local global i8* null, align 8
@SSP_PCM_MODE_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"using default ssp configs\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_fill_ssp_config(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sst_data*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = call %struct.sst_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %9)
  store %struct.sst_data* %10, %struct.sst_data** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %115 [
    i32 130, label %15
    i32 131, label %38
    i32 129, label %61
    i32 128, label %88
  ]

15:                                               ; preds = %2
  %16 = load i8*, i8** @SSP_MODE_PCM, align 8
  %17 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %18 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 6
  store i8* %16, i8** %19, align 8
  %20 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @sst_get_ssp_mode(%struct.snd_soc_dai* %20, i32 %21)
  %23 = load i32, i32* @SSP_PCM_MODE_NETWORK, align 4
  %24 = shl i32 %23, 1
  %25 = or i32 %22, %24
  %26 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %27 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %30 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  %32 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %33 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i32 1, i32* %34, align 8
  %35 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %36 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  store i32 1, i32* %37, align 4
  br label %120

38:                                               ; preds = %2
  %39 = load i8*, i8** @SSP_MODE_PCM, align 8
  %40 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %41 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 6
  store i8* %39, i8** %42, align 8
  %43 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @sst_get_ssp_mode(%struct.snd_soc_dai* %43, i32 %44)
  %46 = load i32, i32* @SSP_PCM_MODE_NETWORK, align 4
  %47 = shl i32 %46, 1
  %48 = or i32 %45, %47
  %49 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %50 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %53 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  %55 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %56 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i32 1, i32* %57, align 8
  %58 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %59 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  store i32 1, i32* %60, align 4
  br label %120

61:                                               ; preds = %2
  %62 = load i8*, i8** @SSP_MODE_I2S, align 8
  %63 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %64 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 6
  store i8* %62, i8** %65, align 8
  %66 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @sst_get_ssp_mode(%struct.snd_soc_dai* %66, i32 %67)
  %69 = load i32, i32* @SSP_PCM_MODE_NORMAL, align 4
  %70 = shl i32 %69, 1
  %71 = or i32 %68, %70
  %72 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %73 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %76 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i32 1, i32* %77, align 4
  %78 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %79 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  store i32 0, i32* %80, align 8
  %81 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %82 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %86 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 3
  store i32 %84, i32* %87, align 4
  br label %120

88:                                               ; preds = %2
  %89 = load i8*, i8** @SSP_MODE_I2S, align 8
  %90 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %91 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 6
  store i8* %89, i8** %92, align 8
  %93 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @sst_get_ssp_mode(%struct.snd_soc_dai* %93, i32 %94)
  %96 = load i32, i32* @SSP_PCM_MODE_NORMAL, align 4
  %97 = shl i32 %96, 1
  %98 = or i32 %95, %97
  %99 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %100 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 8
  %102 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %103 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  store i32 0, i32* %104, align 4
  %105 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %106 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  store i32 0, i32* %107, align 8
  %108 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %109 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %113 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 3
  store i32 %111, i32* %114, align 4
  br label %120

115:                                              ; preds = %2
  %116 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %117 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @dev_dbg(i32 %118, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %120

120:                                              ; preds = %115, %88, %61, %38, %15
  %121 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @sst_get_frame_sync_polarity(%struct.snd_soc_dai* %121, i32 %122)
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %3, align 4
  br label %133

128:                                              ; preds = %120
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %131 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 5
  store i32 %129, i32* %132, align 4
  store i32 0, i32* %3, align 4
  br label %133

133:                                              ; preds = %128, %126
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local %struct.sst_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @sst_get_ssp_mode(%struct.snd_soc_dai*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @sst_get_frame_sync_polarity(%struct.snd_soc_dai*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
