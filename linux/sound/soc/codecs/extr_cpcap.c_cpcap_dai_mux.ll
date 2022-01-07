; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cpcap.c_cpcap_dai_mux.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cpcap.c_cpcap_dai_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpcap_audio = type { i32 }

@CPCAP_BIT_DIG_AUD_IN_ST_DAC = common dso_local global i32 0, align 4
@CPCAP_BIT_DIG_AUD_IN = common dso_local global i32 0, align 4
@CPCAP_REG_CDI = common dso_local global i32 0, align 4
@CPCAP_REG_SDACDI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpcap_audio*, i32)* @cpcap_dai_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_dai_mux(%struct.cpcap_audio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpcap_audio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.cpcap_audio* %0, %struct.cpcap_audio** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @CPCAP_BIT_DIG_AUD_IN_ST_DAC, align 4
  %12 = call i64 @BIT(i32 %11)
  store i64 %12, i64* %8, align 8
  %13 = load i32, i32* @CPCAP_BIT_DIG_AUD_IN, align 4
  %14 = call i64 @BIT(i32 %13)
  store i64 %14, i64* %9, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  %18 = load i64, i64* %8, align 8
  store i64 %18, i64* %6, align 8
  br label %21

19:                                               ; preds = %2
  %20 = load i64, i64* %9, align 8
  store i64 %20, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %21

21:                                               ; preds = %19, %17
  %22 = load %struct.cpcap_audio*, %struct.cpcap_audio** %4, align 8
  %23 = getelementptr inbounds %struct.cpcap_audio, %struct.cpcap_audio* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CPCAP_REG_CDI, align 4
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @regmap_update_bits(i32 %24, i32 %25, i64 %26, i64 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %3, align 4
  br label %46

33:                                               ; preds = %21
  %34 = load %struct.cpcap_audio*, %struct.cpcap_audio** %4, align 8
  %35 = getelementptr inbounds %struct.cpcap_audio, %struct.cpcap_audio* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CPCAP_REG_SDACDI, align 4
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @regmap_update_bits(i32 %36, i32 %37, i64 %38, i64 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %3, align 4
  br label %46

45:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %43, %31
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
