; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-tdm-interface.c_axg_tdm_iface_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-tdm-interface.c_axg_tdm_iface_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.snd_soc_dai_driver = type { i32 }
%struct.axg_tdm_iface = type { i32*, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@axg_tdm_iface_dai_drv = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"sclk\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to get sclk: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"lrclk\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to get lrclk: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"failed to get mclk: %d\0A\00", align 1
@axg_tdm_iface_component_drv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @axg_tdm_iface_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_tdm_iface_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.snd_soc_dai_driver*, align 8
  %6 = alloca %struct.axg_tdm_iface*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.axg_tdm_iface* @devm_kzalloc(%struct.device* %11, i32 24, i32 %12)
  store %struct.axg_tdm_iface* %13, %struct.axg_tdm_iface** %6, align 8
  %14 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %6, align 8
  %15 = icmp ne %struct.axg_tdm_iface* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %145

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %6, align 8
  %22 = call i32 @platform_set_drvdata(%struct.platform_device* %20, %struct.axg_tdm_iface* %21)
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load i32*, i32** @axg_tdm_iface_dai_drv, align 8
  %25 = call i32 @ARRAY_SIZE(i32* %24)
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.snd_soc_dai_driver* @devm_kcalloc(%struct.device* %23, i32 %25, i32 4, i32 %26)
  store %struct.snd_soc_dai_driver* %27, %struct.snd_soc_dai_driver** %5, align 8
  %28 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %5, align 8
  %29 = icmp ne %struct.snd_soc_dai_driver* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %19
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %145

33:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %49, %33
  %35 = load i32, i32* %8, align 4
  %36 = load i32*, i32** @axg_tdm_iface_dai_drv, align 8
  %37 = call i32 @ARRAY_SIZE(i32* %36)
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %40, i64 %42
  %44 = load i32*, i32** @axg_tdm_iface_dai_drv, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i32 @memcpy(%struct.snd_soc_dai_driver* %43, i32* %47, i32 4)
  br label %49

49:                                               ; preds = %39
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %34

52:                                               ; preds = %34
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = call i8* @devm_clk_get(%struct.device* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %55 = bitcast i8* %54 to i32*
  %56 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %6, align 8
  %57 = getelementptr inbounds %struct.axg_tdm_iface, %struct.axg_tdm_iface* %56, i32 0, i32 2
  store i32* %55, i32** %57, align 8
  %58 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %6, align 8
  %59 = getelementptr inbounds %struct.axg_tdm_iface, %struct.axg_tdm_iface* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = call i64 @IS_ERR(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %52
  %64 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %6, align 8
  %65 = getelementptr inbounds %struct.axg_tdm_iface, %struct.axg_tdm_iface* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @PTR_ERR(i32* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @EPROBE_DEFER, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp ne i32 %68, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %63
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @dev_err(%struct.device* %73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %72, %63
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %2, align 4
  br label %145

78:                                               ; preds = %52
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = call i8* @devm_clk_get(%struct.device* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %81 = bitcast i8* %80 to i32*
  %82 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %6, align 8
  %83 = getelementptr inbounds %struct.axg_tdm_iface, %struct.axg_tdm_iface* %82, i32 0, i32 1
  store i32* %81, i32** %83, align 8
  %84 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %6, align 8
  %85 = getelementptr inbounds %struct.axg_tdm_iface, %struct.axg_tdm_iface* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = call i64 @IS_ERR(i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %78
  %90 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %6, align 8
  %91 = getelementptr inbounds %struct.axg_tdm_iface, %struct.axg_tdm_iface* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @PTR_ERR(i32* %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @EPROBE_DEFER, align 4
  %96 = sub nsw i32 0, %95
  %97 = icmp ne i32 %94, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %89
  %99 = load %struct.device*, %struct.device** %4, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @dev_err(%struct.device* %99, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %98, %89
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %2, align 4
  br label %145

104:                                              ; preds = %78
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = call i8* @devm_clk_get(%struct.device* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %107 = bitcast i8* %106 to i32*
  %108 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %6, align 8
  %109 = getelementptr inbounds %struct.axg_tdm_iface, %struct.axg_tdm_iface* %108, i32 0, i32 0
  store i32* %107, i32** %109, align 8
  %110 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %6, align 8
  %111 = getelementptr inbounds %struct.axg_tdm_iface, %struct.axg_tdm_iface* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = call i64 @IS_ERR(i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %139

115:                                              ; preds = %104
  %116 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %6, align 8
  %117 = getelementptr inbounds %struct.axg_tdm_iface, %struct.axg_tdm_iface* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @PTR_ERR(i32* %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @ENOENT, align 4
  %122 = sub nsw i32 0, %121
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %115
  %125 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %6, align 8
  %126 = getelementptr inbounds %struct.axg_tdm_iface, %struct.axg_tdm_iface* %125, i32 0, i32 0
  store i32* null, i32** %126, align 8
  br label %138

127:                                              ; preds = %115
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* @EPROBE_DEFER, align 4
  %130 = sub nsw i32 0, %129
  %131 = icmp ne i32 %128, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load %struct.device*, %struct.device** %4, align 8
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @dev_err(%struct.device* %133, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %132, %127
  %137 = load i32, i32* %7, align 4
  store i32 %137, i32* %2, align 4
  br label %145

138:                                              ; preds = %124
  br label %139

139:                                              ; preds = %138, %104
  %140 = load %struct.device*, %struct.device** %4, align 8
  %141 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %5, align 8
  %142 = load i32*, i32** @axg_tdm_iface_dai_drv, align 8
  %143 = call i32 @ARRAY_SIZE(i32* %142)
  %144 = call i32 @devm_snd_soc_register_component(%struct.device* %140, i32* @axg_tdm_iface_component_drv, %struct.snd_soc_dai_driver* %141, i32 %143)
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %139, %136, %102, %76, %30, %16
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local %struct.axg_tdm_iface* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.axg_tdm_iface*) #1

declare dso_local %struct.snd_soc_dai_driver* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @memcpy(%struct.snd_soc_dai_driver*, i32*, i32) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, %struct.snd_soc_dai_driver*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
