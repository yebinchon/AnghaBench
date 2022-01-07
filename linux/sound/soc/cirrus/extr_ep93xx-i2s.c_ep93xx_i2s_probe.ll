; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/cirrus/extr_ep93xx-i2s.c_ep93xx_i2s_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/cirrus/extr_ep93xx-i2s.c_ep93xx_i2s_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.ep93xx_i2s_info = type { i8*, i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CONFIG_SND_EP93XX_SOC_I2S_WATCHDOG = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ep93xx_i2s_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"sclk\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"lrclk\00", align 1
@ep93xx_i2s_component = common dso_local global i32 0, align 4
@ep93xx_i2s_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ep93xx_i2s_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_i2s_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ep93xx_i2s_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ep93xx_i2s_info* @devm_kzalloc(i32* %8, i32 32, i32 %9)
  store %struct.ep93xx_i2s_info* %10, %struct.ep93xx_i2s_info** %4, align 8
  %11 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %4, align 8
  %12 = icmp ne %struct.ep93xx_i2s_info* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %149

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %17, i32 0)
  %19 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %4, align 8
  %20 = getelementptr inbounds %struct.ep93xx_i2s_info, %struct.ep93xx_i2s_info* %19, i32 0, i32 3
  store i8* %18, i8** %20, align 8
  %21 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %4, align 8
  %22 = getelementptr inbounds %struct.ep93xx_i2s_info, %struct.ep93xx_i2s_info* %21, i32 0, i32 3
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @IS_ERR(i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %4, align 8
  %28 = getelementptr inbounds %struct.ep93xx_i2s_info, %struct.ep93xx_i2s_info* %27, i32 0, i32 3
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @PTR_ERR(i8* %29)
  store i32 %30, i32* %2, align 4
  br label %149

31:                                               ; preds = %16
  %32 = load i32, i32* @CONFIG_SND_EP93XX_SOC_I2S_WATCHDOG, align 4
  %33 = call i64 @IS_ENABLED(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %65

35:                                               ; preds = %31
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = call i32 @platform_get_irq(%struct.platform_device* %36, i32 0)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  br label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  br label %48

48:                                               ; preds = %45, %43
  %49 = phi i32 [ %44, %43 ], [ %47, %45 ]
  store i32 %49, i32* %2, align 4
  br label %149

50:                                               ; preds = %35
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @ep93xx_i2s_interrupt, align 4
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %4, align 8
  %59 = call i32 @devm_request_irq(i32* %52, i32 %53, i32 %54, i32 0, i32 %57, %struct.ep93xx_i2s_info* %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %149

64:                                               ; preds = %50
  br label %65

65:                                               ; preds = %64, %31
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = call i8* @clk_get(i32* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %69 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %4, align 8
  %70 = getelementptr inbounds %struct.ep93xx_i2s_info, %struct.ep93xx_i2s_info* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  %71 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %4, align 8
  %72 = getelementptr inbounds %struct.ep93xx_i2s_info, %struct.ep93xx_i2s_info* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i64 @IS_ERR(i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %65
  %77 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %4, align 8
  %78 = getelementptr inbounds %struct.ep93xx_i2s_info, %struct.ep93xx_i2s_info* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @PTR_ERR(i8* %79)
  store i32 %80, i32* %5, align 4
  br label %147

81:                                               ; preds = %65
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = call i8* @clk_get(i32* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %85 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %4, align 8
  %86 = getelementptr inbounds %struct.ep93xx_i2s_info, %struct.ep93xx_i2s_info* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  %87 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %4, align 8
  %88 = getelementptr inbounds %struct.ep93xx_i2s_info, %struct.ep93xx_i2s_info* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @IS_ERR(i8* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %81
  %93 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %4, align 8
  %94 = getelementptr inbounds %struct.ep93xx_i2s_info, %struct.ep93xx_i2s_info* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @PTR_ERR(i8* %95)
  store i32 %96, i32* %5, align 4
  br label %142

97:                                               ; preds = %81
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = call i8* @clk_get(i32* %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %101 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %4, align 8
  %102 = getelementptr inbounds %struct.ep93xx_i2s_info, %struct.ep93xx_i2s_info* %101, i32 0, i32 2
  store i8* %100, i8** %102, align 8
  %103 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %4, align 8
  %104 = getelementptr inbounds %struct.ep93xx_i2s_info, %struct.ep93xx_i2s_info* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = call i64 @IS_ERR(i8* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %97
  %109 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %4, align 8
  %110 = getelementptr inbounds %struct.ep93xx_i2s_info, %struct.ep93xx_i2s_info* %109, i32 0, i32 2
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @PTR_ERR(i8* %111)
  store i32 %112, i32* %5, align 4
  br label %137

113:                                              ; preds = %97
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %4, align 8
  %117 = call i32 @dev_set_drvdata(i32* %115, %struct.ep93xx_i2s_info* %116)
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = call i32 @devm_snd_soc_register_component(i32* %119, i32* @ep93xx_i2s_component, i32* @ep93xx_i2s_dai, i32 1)
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %113
  br label %132

124:                                              ; preds = %113
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = call i32 @devm_ep93xx_pcm_platform_register(i32* %126)
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* %5, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  br label %132

131:                                              ; preds = %124
  store i32 0, i32* %2, align 4
  br label %149

132:                                              ; preds = %130, %123
  %133 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %4, align 8
  %134 = getelementptr inbounds %struct.ep93xx_i2s_info, %struct.ep93xx_i2s_info* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @clk_put(i8* %135)
  br label %137

137:                                              ; preds = %132, %108
  %138 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %4, align 8
  %139 = getelementptr inbounds %struct.ep93xx_i2s_info, %struct.ep93xx_i2s_info* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @clk_put(i8* %140)
  br label %142

142:                                              ; preds = %137, %92
  %143 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %4, align 8
  %144 = getelementptr inbounds %struct.ep93xx_i2s_info, %struct.ep93xx_i2s_info* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @clk_put(i8* %145)
  br label %147

147:                                              ; preds = %142, %76
  %148 = load i32, i32* %5, align 4
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %147, %131, %62, %48, %26, %13
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local %struct.ep93xx_i2s_info* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.ep93xx_i2s_info*) #1

declare dso_local i8* @clk_get(i32*, i8*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.ep93xx_i2s_info*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32*, i32) #1

declare dso_local i32 @devm_ep93xx_pcm_platform_register(i32*) #1

declare dso_local i32 @clk_put(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
