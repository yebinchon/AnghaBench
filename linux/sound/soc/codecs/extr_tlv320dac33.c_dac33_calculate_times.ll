; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_calculate_times.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_calculate_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.snd_soc_component = type { i32 }
%struct.tlv320dac33_priv = type { i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i32 }

@DAC33_MODE7_MARGIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_soc_component*)* @dac33_calculate_times to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dac33_calculate_times(%struct.snd_pcm_substream* %0, %struct.snd_soc_component* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.tlv320dac33_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_component* %1, %struct.snd_soc_component** %4, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %10 = call %struct.tlv320dac33_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.tlv320dac33_priv* %10, %struct.tlv320dac33_priv** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %22 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %153

26:                                               ; preds = %2
  %27 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %28 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %152 [
    i32 129, label %30
    i32 128, label %96
  ]

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %33 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %32, i32 0, i32 10
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @US_TO_SAMPLES(i32 %31, i32 %34)
  %36 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %37 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %39 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %42 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sub i32 %40, %43
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %47 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ule i32 %45, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %30
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %53 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = udiv i32 %54, %55
  %57 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %58 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = urem i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 1, i32 0
  %65 = add i32 %56, %64
  %66 = mul i32 %51, %65
  %67 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %68 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  br label %82

69:                                               ; preds = %30
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ugt i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %76 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  br label %81

77:                                               ; preds = %69
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %80 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %77, %73
  br label %82

82:                                               ; preds = %81, %50
  %83 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %84 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %87 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @SAMPLES_TO_US(i32 %85, i32 %88)
  %90 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %91 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %90, i32 0, i32 9
  store i8* %89, i8** %91, align 8
  %92 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %93 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %92, i32 0, i32 6
  store i32 0, i32* %93, align 8
  %94 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %95 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %94, i32 0, i32 8
  store i32 0, i32* %95, align 8
  br label %153

96:                                               ; preds = %26
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %100 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @UTHR_FROM_PERIOD_SIZE(i32 %97, i32 %98, i32 %101)
  %103 = add nsw i32 %102, 9
  %104 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %105 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 4
  %106 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %107 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %110 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @DAC33_MODE7_MARGIN, align 4
  %113 = sub i32 %111, %112
  %114 = icmp ugt i32 %108, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %96
  %116 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %117 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @DAC33_MODE7_MARGIN, align 4
  %120 = sub i32 %118, %119
  %121 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %122 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %121, i32 0, i32 5
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %115, %96
  %124 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %125 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @DAC33_MODE7_MARGIN, align 4
  %128 = add i32 %127, 10
  %129 = icmp ult i32 %126, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %123
  %131 = load i32, i32* @DAC33_MODE7_MARGIN, align 4
  %132 = add i32 %131, 10
  %133 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %134 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %133, i32 0, i32 5
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %130, %123
  %136 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %137 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %136, i32 0, i32 0
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %142 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @DAC33_MODE7_MARGIN, align 4
  %145 = sub i32 %143, %144
  %146 = add i32 %145, 1
  %147 = call i8* @SAMPLES_TO_US(i32 %140, i32 %146)
  %148 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %149 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %148, i32 0, i32 7
  store i8* %147, i8** %149, align 8
  %150 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %151 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %150, i32 0, i32 6
  store i32 0, i32* %151, align 8
  br label %153

152:                                              ; preds = %26
  br label %153

153:                                              ; preds = %25, %152, %135, %82
  ret void
}

declare dso_local %struct.tlv320dac33_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @US_TO_SAMPLES(i32, i32) #1

declare dso_local i8* @SAMPLES_TO_US(i32, i32) #1

declare dso_local i32 @UTHR_FROM_PERIOD_SIZE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
