; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_msm8916-wcd-digital.c_get_iir_band_coeff.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_msm8916-wcd-digital.c_get_iir_band_coeff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@LPASS_CDC_IIR1_COEF_B1_CTL = common dso_local global i64 0, align 8
@BAND_MAX = common dso_local global i32 0, align 4
@LPASS_CDC_IIR1_COEF_B2_CTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32)* @get_iir_band_coeff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_iir_band_coeff(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %11 = load i64, i64* @LPASS_CDC_IIR1_COEF_B1_CTL, align 8
  %12 = load i32, i32* %6, align 4
  %13 = mul nsw i32 64, %12
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %11, %14
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @BAND_MAX, align 4
  %18 = mul nsw i32 %16, %17
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = and i64 %22, 127
  %24 = trunc i64 %23 to i32
  %25 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %10, i64 %15, i32 %24)
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %27 = load i64, i64* @LPASS_CDC_IIR1_COEF_B2_CTL, align 8
  %28 = load i32, i32* %6, align 4
  %29 = mul nsw i32 64, %28
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %27, %30
  %32 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %26, i64 %31)
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %36 = load i64, i64* @LPASS_CDC_IIR1_COEF_B1_CTL, align 8
  %37 = load i32, i32* %6, align 4
  %38 = mul nsw i32 64, %37
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %36, %39
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @BAND_MAX, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = add i64 %47, 1
  %49 = and i64 %48, 127
  %50 = trunc i64 %49 to i32
  %51 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %35, i64 %40, i32 %50)
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %53 = load i64, i64* @LPASS_CDC_IIR1_COEF_B2_CTL, align 8
  %54 = load i32, i32* %6, align 4
  %55 = mul nsw i32 64, %54
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %53, %56
  %58 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %52, i64 %57)
  %59 = shl i32 %58, 8
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %9, align 4
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %63 = load i64, i64* @LPASS_CDC_IIR1_COEF_B1_CTL, align 8
  %64 = load i32, i32* %6, align 4
  %65 = mul nsw i32 64, %64
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %63, %66
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @BAND_MAX, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 4
  %75 = add i64 %74, 2
  %76 = and i64 %75, 127
  %77 = trunc i64 %76 to i32
  %78 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %62, i64 %67, i32 %77)
  %79 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %80 = load i64, i64* @LPASS_CDC_IIR1_COEF_B2_CTL, align 8
  %81 = load i32, i32* %6, align 4
  %82 = mul nsw i32 64, %81
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %80, %83
  %85 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %79, i64 %84)
  %86 = shl i32 %85, 16
  %87 = load i32, i32* %9, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %9, align 4
  %89 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %90 = load i64, i64* @LPASS_CDC_IIR1_COEF_B1_CTL, align 8
  %91 = load i32, i32* %6, align 4
  %92 = mul nsw i32 64, %91
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %90, %93
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @BAND_MAX, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = mul i64 %100, 4
  %102 = add i64 %101, 3
  %103 = and i64 %102, 127
  %104 = trunc i64 %103 to i32
  %105 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %89, i64 %94, i32 %104)
  %106 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %107 = load i64, i64* @LPASS_CDC_IIR1_COEF_B2_CTL, align 8
  %108 = load i32, i32* %6, align 4
  %109 = mul nsw i32 64, %108
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %107, %110
  %112 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %106, i64 %111)
  %113 = and i32 %112, 63
  %114 = shl i32 %113, 24
  %115 = load i32, i32* %9, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  ret i32 %117
}

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i64, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
