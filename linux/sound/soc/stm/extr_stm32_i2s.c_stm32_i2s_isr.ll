; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_i2s.c_stm32_i2s_isr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_i2s.c_stm32_i2s_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_i2s_data = type { i32, i64, i32, %struct.platform_device* }
%struct.platform_device = type { i32 }

@STM32_I2S_SR_REG = common dso_local global i32 0, align 4
@STM32_I2S_IER_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Spurious IRQ sr=0x%08x, ier=0x%08x\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@STM32_I2S_IFCR_REG = common dso_local global i32 0, align 4
@I2S_IFCR_MASK = common dso_local global i32 0, align 4
@I2S_SR_OVR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"Overrun\0A\00", align 1
@I2S_SR_UDR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"Underrun\0A\00", align 1
@I2S_SR_TIFRE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"Frame error\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @stm32_i2s_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_i2s_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stm32_i2s_data*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.stm32_i2s_data*
  store %struct.stm32_i2s_data* %13, %struct.stm32_i2s_data** %6, align 8
  %14 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %6, align 8
  %15 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %14, i32 0, i32 3
  %16 = load %struct.platform_device*, %struct.platform_device** %15, align 8
  store %struct.platform_device* %16, %struct.platform_device** %7, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %6, align 8
  %18 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @STM32_I2S_SR_REG, align 4
  %21 = call i32 @regmap_read(i32 %19, i32 %20, i64* %8)
  %22 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %6, align 8
  %23 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @STM32_I2S_IER_REG, align 4
  %26 = call i32 @regmap_read(i32 %24, i32 %25, i64* %9)
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = and i64 %27, %28
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %2
  %33 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %35, i64 %36)
  %38 = load i32, i32* @IRQ_NONE, align 4
  store i32 %38, i32* %3, align 4
  br label %94

39:                                               ; preds = %2
  %40 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %6, align 8
  %41 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @STM32_I2S_IFCR_REG, align 4
  %44 = load i32, i32* @I2S_IFCR_MASK, align 4
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @regmap_write_bits(i32 %42, i32 %43, i32 %44, i64 %45)
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* @I2S_SR_OVR, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %39
  %52 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %55

55:                                               ; preds = %51, %39
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* @I2S_SR_UDR, align 8
  %58 = and i64 %56, %57
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %64

64:                                               ; preds = %60, %55
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* @I2S_SR_TIFRE, align 8
  %67 = and i64 %65, %66
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %73

73:                                               ; preds = %69, %64
  %74 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %6, align 8
  %75 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %74, i32 0, i32 0
  %76 = call i32 @spin_lock(i32* %75)
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %73
  %80 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %6, align 8
  %81 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %6, align 8
  %86 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @snd_pcm_stop_xrun(i64 %87)
  br label %89

89:                                               ; preds = %84, %79, %73
  %90 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %6, align 8
  %91 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %90, i32 0, i32 0
  %92 = call i32 @spin_unlock(i32* %91)
  %93 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %89, %32
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @regmap_read(i32, i32, i64*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_pcm_stop_xrun(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
