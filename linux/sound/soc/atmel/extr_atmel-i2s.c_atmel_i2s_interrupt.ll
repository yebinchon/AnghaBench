; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-i2s.c_atmel_i2s_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-i2s.c_atmel_i2s_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_i2s_dev = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@ATMEL_I2SC_SR = common dso_local global i32 0, align 4
@ATMEL_I2SC_IMR = common dso_local global i32 0, align 4
@ATMEL_I2SC_INT_RXOR = common dso_local global i32 0, align 4
@ATMEL_I2SC_SR_RXOR = common dso_local global i32 0, align 4
@ATMEL_I2SC_MAX_TDM_CHANNELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"RX overrun on channel %d\0A\00", align 1
@ATMEL_I2SC_SCR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@ATMEL_I2SC_INT_TXUR = common dso_local global i32 0, align 4
@ATMEL_I2SC_SR_TXUR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"TX underrun on channel %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @atmel_i2s_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_i2s_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.atmel_i2s_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.atmel_i2s_dev*
  store %struct.atmel_i2s_dev* %14, %struct.atmel_i2s_dev** %6, align 8
  %15 = load i32, i32* @IRQ_NONE, align 4
  store i32 %15, i32* %12, align 4
  %16 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %6, align 8
  %17 = getelementptr inbounds %struct.atmel_i2s_dev, %struct.atmel_i2s_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ATMEL_I2SC_SR, align 4
  %20 = call i32 @regmap_read(i32 %18, i32 %19, i32* %7)
  %21 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %6, align 8
  %22 = getelementptr inbounds %struct.atmel_i2s_dev, %struct.atmel_i2s_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ATMEL_I2SC_IMR, align 4
  %25 = call i32 @regmap_read(i32 %23, i32 %24, i32* %8)
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* @IRQ_NONE, align 4
  store i32 %32, i32* %3, align 4
  br label %113

33:                                               ; preds = %2
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @ATMEL_I2SC_INT_RXOR, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %72

38:                                               ; preds = %33
  %39 = load i32, i32* @ATMEL_I2SC_SR_RXOR, align 4
  store i32 %39, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %61, %38
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @ATMEL_I2SC_MAX_TDM_CHANNELS, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @ATMEL_I2SC_SR_RXORCH(i32 %46)
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %44
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @ATMEL_I2SC_SR_RXORCH(i32 %51)
  %53 = load i32, i32* %11, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %11, align 4
  %55 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %6, align 8
  %56 = getelementptr inbounds %struct.atmel_i2s_dev, %struct.atmel_i2s_dev* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %50, %44
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %10, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %40

64:                                               ; preds = %40
  %65 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %6, align 8
  %66 = getelementptr inbounds %struct.atmel_i2s_dev, %struct.atmel_i2s_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @ATMEL_I2SC_SCR, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @regmap_write(i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %64, %33
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @ATMEL_I2SC_INT_TXUR, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %111

77:                                               ; preds = %72
  %78 = load i32, i32* @ATMEL_I2SC_SR_TXUR, align 4
  store i32 %78, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %100, %77
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @ATMEL_I2SC_MAX_TDM_CHANNELS, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %103

83:                                               ; preds = %79
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @ATMEL_I2SC_SR_TXURCH(i32 %85)
  %87 = and i32 %84, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %83
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @ATMEL_I2SC_SR_TXURCH(i32 %90)
  %92 = load i32, i32* %11, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %11, align 4
  %94 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %6, align 8
  %95 = getelementptr inbounds %struct.atmel_i2s_dev, %struct.atmel_i2s_dev* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @dev_err(i32 %96, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %89, %83
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %10, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %79

103:                                              ; preds = %79
  %104 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %6, align 8
  %105 = getelementptr inbounds %struct.atmel_i2s_dev, %struct.atmel_i2s_dev* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @ATMEL_I2SC_SCR, align 4
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @regmap_write(i32 %106, i32 %107, i32 %108)
  %110 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %110, i32* %12, align 4
  br label %111

111:                                              ; preds = %103, %72
  %112 = load i32, i32* %12, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %111, %31
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @ATMEL_I2SC_SR_RXORCH(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @ATMEL_I2SC_SR_TXURCH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
