; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau17x1.c_adau17x1_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau17x1.c_adau17x1_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.adau = type { i32, i32, i32, i64, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ADAU17X1_CONVERTER0 = common dso_local global i32 0, align 4
@ADAU17X1_CONVERTER0_CONVSR_MASK = common dso_local global i32 0, align 4
@ADAU17X1_SERIAL_SAMPLING_RATE = common dso_local global i32 0, align 4
@ADAU17X1_DSP_SAMPLING_RATE = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_RIGHT_J = common dso_local global i64 0, align 8
@ADAU17X1_SERIAL_PORT1_DELAY16 = common dso_local global i32 0, align 4
@ADAU17X1_SERIAL_PORT1_DELAY8 = common dso_local global i32 0, align 4
@ADAU17X1_SERIAL_PORT1_DELAY0 = common dso_local global i32 0, align 4
@ADAU17X1_SERIAL_PORT1 = common dso_local global i32 0, align 4
@ADAU17X1_SERIAL_PORT1_DELAY_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @adau17x1_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau17x1_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.adau*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %16, align 8
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %8, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %19 = call %struct.adau* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %18)
  store %struct.adau* %19, %struct.adau** %9, align 8
  %20 = load %struct.adau*, %struct.adau** %9, align 8
  %21 = getelementptr inbounds %struct.adau, %struct.adau* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %36 [
    i32 128, label %23
    i32 129, label %32
  ]

23:                                               ; preds = %3
  %24 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %25 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %26 = call i32 @adau17x1_auto_pll(%struct.snd_soc_dai* %24, %struct.snd_pcm_hw_params* %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %4, align 4
  br label %130

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %3, %31
  %33 = load %struct.adau*, %struct.adau** %9, align 8
  %34 = getelementptr inbounds %struct.adau, %struct.adau* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %13, align 4
  br label %40

36:                                               ; preds = %3
  %37 = load %struct.adau*, %struct.adau** %9, align 8
  %38 = getelementptr inbounds %struct.adau, %struct.adau* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %13, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %13, align 4
  %42 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %43 = call i32 @params_rate(%struct.snd_pcm_hw_params* %42)
  %44 = urem i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %130

49:                                               ; preds = %40
  %50 = load i32, i32* %13, align 4
  %51 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %52 = call i32 @params_rate(%struct.snd_pcm_hw_params* %51)
  %53 = udiv i32 %50, %52
  switch i32 %53, label %61 [
    i32 1024, label %54
    i32 6144, label %55
    i32 4096, label %56
    i32 3072, label %57
    i32 2048, label %58
    i32 1536, label %59
    i32 512, label %60
  ]

54:                                               ; preds = %49
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %64

55:                                               ; preds = %49
  store i32 1, i32* %11, align 4
  store i32 6, i32* %12, align 4
  br label %64

56:                                               ; preds = %49
  store i32 2, i32* %11, align 4
  store i32 5, i32* %12, align 4
  br label %64

57:                                               ; preds = %49
  store i32 3, i32* %11, align 4
  store i32 4, i32* %12, align 4
  br label %64

58:                                               ; preds = %49
  store i32 4, i32* %11, align 4
  store i32 3, i32* %12, align 4
  br label %64

59:                                               ; preds = %49
  store i32 5, i32* %11, align 4
  store i32 2, i32* %12, align 4
  br label %64

60:                                               ; preds = %49
  store i32 6, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %64

61:                                               ; preds = %49
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %130

64:                                               ; preds = %60, %59, %58, %57, %56, %55, %54
  %65 = load %struct.adau*, %struct.adau** %9, align 8
  %66 = getelementptr inbounds %struct.adau, %struct.adau* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @ADAU17X1_CONVERTER0, align 4
  %69 = load i32, i32* @ADAU17X1_CONVERTER0_CONVSR_MASK, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @regmap_update_bits(i32 %67, i32 %68, i32 %69, i32 %70)
  %72 = load %struct.adau*, %struct.adau** %9, align 8
  %73 = call i64 @adau17x1_has_dsp(%struct.adau* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %64
  %76 = load %struct.adau*, %struct.adau** %9, align 8
  %77 = getelementptr inbounds %struct.adau, %struct.adau* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @ADAU17X1_SERIAL_SAMPLING_RATE, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @regmap_write(i32 %78, i32 %79, i32 %80)
  %82 = load %struct.adau*, %struct.adau** %9, align 8
  %83 = getelementptr inbounds %struct.adau, %struct.adau* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @ADAU17X1_DSP_SAMPLING_RATE, align 4
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @regmap_write(i32 %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %75, %64
  %89 = load %struct.adau*, %struct.adau** %9, align 8
  %90 = getelementptr inbounds %struct.adau, %struct.adau* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %88
  %94 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %95 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %96 = call i32 @params_rate(%struct.snd_pcm_hw_params* %95)
  %97 = call i32 @adau17x1_setup_firmware(%struct.snd_soc_component* %94, i32 %96)
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i32, i32* %14, align 4
  store i32 %101, i32* %4, align 4
  br label %130

102:                                              ; preds = %93
  br label %103

103:                                              ; preds = %102, %88
  %104 = load %struct.adau*, %struct.adau** %9, align 8
  %105 = getelementptr inbounds %struct.adau, %struct.adau* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @SND_SOC_DAIFMT_RIGHT_J, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  store i32 0, i32* %4, align 4
  br label %130

110:                                              ; preds = %103
  %111 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %112 = call i32 @params_width(%struct.snd_pcm_hw_params* %111)
  switch i32 %112, label %119 [
    i32 16, label %113
    i32 24, label %115
    i32 32, label %117
  ]

113:                                              ; preds = %110
  %114 = load i32, i32* @ADAU17X1_SERIAL_PORT1_DELAY16, align 4
  store i32 %114, i32* %10, align 4
  br label %122

115:                                              ; preds = %110
  %116 = load i32, i32* @ADAU17X1_SERIAL_PORT1_DELAY8, align 4
  store i32 %116, i32* %10, align 4
  br label %122

117:                                              ; preds = %110
  %118 = load i32, i32* @ADAU17X1_SERIAL_PORT1_DELAY0, align 4
  store i32 %118, i32* %10, align 4
  br label %122

119:                                              ; preds = %110
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  br label %130

122:                                              ; preds = %117, %115, %113
  %123 = load %struct.adau*, %struct.adau** %9, align 8
  %124 = getelementptr inbounds %struct.adau, %struct.adau* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @ADAU17X1_SERIAL_PORT1, align 4
  %127 = load i32, i32* @ADAU17X1_SERIAL_PORT1_DELAY_MASK, align 4
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @regmap_update_bits(i32 %125, i32 %126, i32 %127, i32 %128)
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %122, %119, %109, %100, %61, %46, %29
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local %struct.adau* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @adau17x1_auto_pll(%struct.snd_soc_dai*, %struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i64 @adau17x1_has_dsp(%struct.adau*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @adau17x1_setup_firmware(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
