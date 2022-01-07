; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_hw_adc_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_hw_adc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.adc_conf = type { i32 }

@GPIO_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failure to acquire I2C!!!\0A\00", align 1
@GPIO_DATA = common dso_local global i32 0, align 4
@CTSB1270 = common dso_local global i64 0, align 8
@WM8775_IC = common dso_local global i32 0, align 4
@WM8775_MMC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Invalid master sampling rate (msr %d)!!!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ADC_LINEIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*, %struct.adc_conf*)* @hw_adc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_adc_init(%struct.hw* %0, %struct.adc_conf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hw*, align 8
  %5 = alloca %struct.adc_conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hw* %0, %struct.hw** %4, align 8
  store %struct.adc_conf* %1, %struct.adc_conf** %5, align 8
  %9 = load %struct.hw*, %struct.hw** %4, align 8
  %10 = load i32, i32* @GPIO_CTRL, align 4
  %11 = call i32 @hw_read_20kx(%struct.hw* %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = or i32 %12, 32768
  store i32 %13, i32* %7, align 4
  %14 = load %struct.hw*, %struct.hw** %4, align 8
  %15 = load i32, i32* @GPIO_CTRL, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @hw_write_20kx(%struct.hw* %14, i32 %15, i32 %16)
  %18 = load %struct.hw*, %struct.hw** %4, align 8
  %19 = call i32 @hw20k2_i2c_init(%struct.hw* %18, i32 26, i32 1, i32 1)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.hw*, %struct.hw** %4, align 8
  %24 = getelementptr inbounds %struct.hw, %struct.hw* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i8*, ...) @dev_alert(i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %146

29:                                               ; preds = %2
  %30 = load %struct.hw*, %struct.hw** %4, align 8
  %31 = load i32, i32* @GPIO_DATA, align 4
  %32 = call i32 @hw_read_20kx(%struct.hw* %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, -32769
  store i32 %34, i32* %7, align 4
  %35 = load %struct.hw*, %struct.hw** %4, align 8
  %36 = load i32, i32* @GPIO_DATA, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @hw_write_20kx(%struct.hw* %35, i32 %36, i32 %37)
  %39 = load %struct.hw*, %struct.hw** %4, align 8
  %40 = getelementptr inbounds %struct.hw, %struct.hw* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CTSB1270, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %70

44:                                               ; preds = %29
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, -13
  store i32 %46, i32* %7, align 4
  %47 = load %struct.adc_conf*, %struct.adc_conf** %5, align 8
  %48 = getelementptr inbounds %struct.adc_conf, %struct.adc_conf* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 1, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %7, align 4
  br label %65

53:                                               ; preds = %44
  %54 = load %struct.adc_conf*, %struct.adc_conf** %5, align 8
  %55 = getelementptr inbounds %struct.adc_conf, %struct.adc_conf* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 2, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, 8
  store i32 %60, i32* %7, align 4
  br label %64

61:                                               ; preds = %53
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, 4
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %61, %58
  br label %65

65:                                               ; preds = %64, %51
  %66 = load %struct.hw*, %struct.hw** %4, align 8
  %67 = load i32, i32* @GPIO_DATA, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @hw_write_20kx(%struct.hw* %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %29
  %71 = call i32 @usleep_range(i32 10000, i32 11000)
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %72, 32768
  store i32 %73, i32* %7, align 4
  %74 = load %struct.hw*, %struct.hw** %4, align 8
  %75 = load i32, i32* @GPIO_DATA, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @hw_write_20kx(%struct.hw* %74, i32 %75, i32 %76)
  %78 = call i32 @msleep(i32 50)
  %79 = load %struct.hw*, %struct.hw** %4, align 8
  %80 = load i32, i32* @WM8775_IC, align 4
  %81 = call i32 @MAKE_WM8775_ADDR(i32 %80, i32 38)
  %82 = call i32 @MAKE_WM8775_DATA(i32 38)
  %83 = call i32 @hw20k2_i2c_write(%struct.hw* %79, i32 %81, i32 %82)
  %84 = load %struct.adc_conf*, %struct.adc_conf** %5, align 8
  %85 = getelementptr inbounds %struct.adc_conf, %struct.adc_conf* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 1, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %70
  %89 = load %struct.hw*, %struct.hw** %4, align 8
  %90 = load i32, i32* @WM8775_MMC, align 4
  %91 = call i32 @MAKE_WM8775_ADDR(i32 %90, i32 2)
  %92 = call i32 @MAKE_WM8775_DATA(i32 2)
  %93 = call i32 @hw20k2_i2c_write(%struct.hw* %89, i32 %91, i32 %92)
  br label %123

94:                                               ; preds = %70
  %95 = load %struct.adc_conf*, %struct.adc_conf** %5, align 8
  %96 = getelementptr inbounds %struct.adc_conf, %struct.adc_conf* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 2, %97
  br i1 %98, label %104, label %99

99:                                               ; preds = %94
  %100 = load %struct.adc_conf*, %struct.adc_conf** %5, align 8
  %101 = getelementptr inbounds %struct.adc_conf, %struct.adc_conf* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 4, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %99, %94
  %105 = load %struct.hw*, %struct.hw** %4, align 8
  %106 = load i32, i32* @WM8775_MMC, align 4
  %107 = call i32 @MAKE_WM8775_ADDR(i32 %106, i32 10)
  %108 = call i32 @MAKE_WM8775_DATA(i32 10)
  %109 = call i32 @hw20k2_i2c_write(%struct.hw* %105, i32 %107, i32 %108)
  br label %122

110:                                              ; preds = %99
  %111 = load %struct.hw*, %struct.hw** %4, align 8
  %112 = getelementptr inbounds %struct.hw, %struct.hw* %111, i32 0, i32 1
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.adc_conf*, %struct.adc_conf** %5, align 8
  %117 = getelementptr inbounds %struct.adc_conf, %struct.adc_conf* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32, i8*, ...) @dev_alert(i32 %115, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %6, align 4
  br label %146

122:                                              ; preds = %104
  br label %123

123:                                              ; preds = %122, %88
  %124 = load %struct.hw*, %struct.hw** %4, align 8
  %125 = getelementptr inbounds %struct.hw, %struct.hw* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @CTSB1270, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %142

129:                                              ; preds = %123
  %130 = load %struct.hw*, %struct.hw** %4, align 8
  %131 = load i32, i32* @GPIO_CTRL, align 4
  %132 = call i32 @hw_read_20kx(%struct.hw* %130, i32 %131)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = or i32 %133, 16384
  store i32 %134, i32* %8, align 4
  %135 = load %struct.hw*, %struct.hw** %4, align 8
  %136 = load i32, i32* @GPIO_CTRL, align 4
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @hw_write_20kx(%struct.hw* %135, i32 %136, i32 %137)
  %139 = load %struct.hw*, %struct.hw** %4, align 8
  %140 = load i32, i32* @ADC_LINEIN, align 4
  %141 = call i32 @hw_adc_input_select(%struct.hw* %139, i32 %140)
  br label %145

142:                                              ; preds = %123
  %143 = load %struct.hw*, %struct.hw** %4, align 8
  %144 = call i32 @hw_wm8775_input_select(%struct.hw* %143, i32 0, i32 0)
  br label %145

145:                                              ; preds = %142, %129
  store i32 0, i32* %3, align 4
  br label %150

146:                                              ; preds = %110, %22
  %147 = load %struct.hw*, %struct.hw** %4, align 8
  %148 = call i32 @hw20k2_i2c_uninit(%struct.hw* %147)
  %149 = load i32, i32* %6, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %146, %145
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @hw_read_20kx(%struct.hw*, i32) #1

declare dso_local i32 @hw_write_20kx(%struct.hw*, i32, i32) #1

declare dso_local i32 @hw20k2_i2c_init(%struct.hw*, i32, i32, i32) #1

declare dso_local i32 @dev_alert(i32, i8*, ...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hw20k2_i2c_write(%struct.hw*, i32, i32) #1

declare dso_local i32 @MAKE_WM8775_ADDR(i32, i32) #1

declare dso_local i32 @MAKE_WM8775_DATA(i32) #1

declare dso_local i32 @hw_adc_input_select(%struct.hw*, i32) #1

declare dso_local i32 @hw_wm8775_input_select(%struct.hw*, i32, i32) #1

declare dso_local i32 @hw20k2_i2c_uninit(%struct.hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
