; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_dg.c_set_cs4245_adc_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_dg.c_set_cs4245_adc_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.dg* }
%struct.dg = type { i8* }
%struct.snd_pcm_hw_params = type { i32 }

@CS4245_ADC_CTRL = common dso_local global i64 0, align 8
@CS4245_ADC_FM_MASK = common dso_local global i8 0, align 1
@CS4245_MCLK_FREQ = common dso_local global i64 0, align 8
@CS4245_MCLK2_MASK = common dso_local global i8 0, align 1
@CS4245_ADC_FM_SINGLE = common dso_local global i8 0, align 1
@CS4245_MCLK_1 = common dso_local global i8 0, align 1
@CS4245_MCLK2_SHIFT = common dso_local global i8 0, align 1
@CS4245_ADC_FM_DOUBLE = common dso_local global i8 0, align 1
@CS4245_ADC_FM_QUAD = common dso_local global i8 0, align 1
@CS4245_MCLK_2 = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_cs4245_adc_params(%struct.oxygen* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca %struct.oxygen*, align 8
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.dg*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.oxygen* %0, %struct.oxygen** %3, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %4, align 8
  %8 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %9 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %8, i32 0, i32 0
  %10 = load %struct.dg*, %struct.dg** %9, align 8
  store %struct.dg* %10, %struct.dg** %5, align 8
  %11 = load %struct.dg*, %struct.dg** %5, align 8
  %12 = getelementptr inbounds %struct.dg, %struct.dg* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i64, i64* @CS4245_ADC_CTRL, align 8
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* @CS4245_ADC_FM_MASK, align 1
  %19 = zext i8 %18 to i32
  %20 = xor i32 %19, -1
  %21 = and i32 %17, %20
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %6, align 1
  %23 = load %struct.dg*, %struct.dg** %5, align 8
  %24 = getelementptr inbounds %struct.dg, %struct.dg* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i64, i64* @CS4245_MCLK_FREQ, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* @CS4245_MCLK2_MASK, align 1
  %31 = zext i8 %30 to i32
  %32 = xor i32 %31, -1
  %33 = and i32 %29, %32
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %7, align 1
  %35 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %36 = call i32 @params_rate(%struct.snd_pcm_hw_params* %35)
  %37 = icmp sle i32 %36, 50000
  br i1 %37, label %38, label %54

38:                                               ; preds = %2
  %39 = load i8, i8* @CS4245_ADC_FM_SINGLE, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* %6, align 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %42, %40
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %6, align 1
  %45 = load i8, i8* @CS4245_MCLK_1, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8, i8* @CS4245_MCLK2_SHIFT, align 1
  %48 = zext i8 %47 to i32
  %49 = shl i32 %46, %48
  %50 = load i8, i8* %7, align 1
  %51 = zext i8 %50 to i32
  %52 = or i32 %51, %49
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %7, align 1
  br label %91

54:                                               ; preds = %2
  %55 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %56 = call i32 @params_rate(%struct.snd_pcm_hw_params* %55)
  %57 = icmp sle i32 %56, 100000
  br i1 %57, label %58, label %74

58:                                               ; preds = %54
  %59 = load i8, i8* @CS4245_ADC_FM_DOUBLE, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* %6, align 1
  %62 = zext i8 %61 to i32
  %63 = or i32 %62, %60
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %6, align 1
  %65 = load i8, i8* @CS4245_MCLK_1, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8, i8* @CS4245_MCLK2_SHIFT, align 1
  %68 = zext i8 %67 to i32
  %69 = shl i32 %66, %68
  %70 = load i8, i8* %7, align 1
  %71 = zext i8 %70 to i32
  %72 = or i32 %71, %69
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %7, align 1
  br label %90

74:                                               ; preds = %54
  %75 = load i8, i8* @CS4245_ADC_FM_QUAD, align 1
  %76 = zext i8 %75 to i32
  %77 = load i8, i8* %6, align 1
  %78 = zext i8 %77 to i32
  %79 = or i32 %78, %76
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %6, align 1
  %81 = load i8, i8* @CS4245_MCLK_2, align 1
  %82 = zext i8 %81 to i32
  %83 = load i8, i8* @CS4245_MCLK2_SHIFT, align 1
  %84 = zext i8 %83 to i32
  %85 = shl i32 %82, %84
  %86 = load i8, i8* %7, align 1
  %87 = zext i8 %86 to i32
  %88 = or i32 %87, %85
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %7, align 1
  br label %90

90:                                               ; preds = %74, %58
  br label %91

91:                                               ; preds = %90, %38
  %92 = load i8, i8* %6, align 1
  %93 = load %struct.dg*, %struct.dg** %5, align 8
  %94 = getelementptr inbounds %struct.dg, %struct.dg* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load i64, i64* @CS4245_ADC_CTRL, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  store i8 %92, i8* %97, align 1
  %98 = load i8, i8* %7, align 1
  %99 = load %struct.dg*, %struct.dg** %5, align 8
  %100 = getelementptr inbounds %struct.dg, %struct.dg* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = load i64, i64* @CS4245_MCLK_FREQ, align 8
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8 %98, i8* %103, align 1
  %104 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %105 = load i64, i64* @CS4245_ADC_CTRL, align 8
  %106 = call i32 @cs4245_write_spi(%struct.oxygen* %104, i64 %105)
  %107 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %108 = load i64, i64* @CS4245_MCLK_FREQ, align 8
  %109 = call i32 @cs4245_write_spi(%struct.oxygen* %107, i64 %108)
  ret void
}

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @cs4245_write_spi(%struct.oxygen*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
