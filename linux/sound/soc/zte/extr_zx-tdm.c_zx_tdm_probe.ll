; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/zte/extr_zx-tdm.c_zx_tdm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/zte/extr_zx-tdm.c_zx_tdm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.of_phandle_args = type { i32*, i32 }
%struct.zx_tdm_info = type { %struct.regmap*, i32, %struct.regmap*, %struct.regmap*, %struct.device* }
%struct.regmap = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"wclk\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Fail to get wclk\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Fail to get pclk\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"zte,tdm-dma-sysctrl\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Fail to get zte,tdm-dma-sysctrl\0A\00", align 1
@zx_tdm_component = common dso_local global i32 0, align 4
@zx_tdm_dai = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"Register DAI failed: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Register platform PCM failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @zx_tdm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_tdm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_phandle_args, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.zx_tdm_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.resource*, align 8
  %10 = alloca %struct.regmap*, align 8
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.zx_tdm_info* @devm_kzalloc(%struct.device* %15, i32 40, i32 %16)
  store %struct.zx_tdm_info* %17, %struct.zx_tdm_info** %7, align 8
  %18 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %7, align 8
  %19 = icmp ne %struct.zx_tdm_info* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %163

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %7, align 8
  %26 = getelementptr inbounds %struct.zx_tdm_info, %struct.zx_tdm_info* %25, i32 0, i32 4
  store %struct.device* %24, %struct.device** %26, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i8* @devm_clk_get(%struct.device* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %30 = bitcast i8* %29 to %struct.regmap*
  %31 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %7, align 8
  %32 = getelementptr inbounds %struct.zx_tdm_info, %struct.zx_tdm_info* %31, i32 0, i32 3
  store %struct.regmap* %30, %struct.regmap** %32, align 8
  %33 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %7, align 8
  %34 = getelementptr inbounds %struct.zx_tdm_info, %struct.zx_tdm_info* %33, i32 0, i32 3
  %35 = load %struct.regmap*, %struct.regmap** %34, align 8
  %36 = call i64 @IS_ERR(%struct.regmap* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %23
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %7, align 8
  %43 = getelementptr inbounds %struct.zx_tdm_info, %struct.zx_tdm_info* %42, i32 0, i32 3
  %44 = load %struct.regmap*, %struct.regmap** %43, align 8
  %45 = call i32 @PTR_ERR(%struct.regmap* %44)
  store i32 %45, i32* %2, align 4
  br label %163

46:                                               ; preds = %23
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call i8* @devm_clk_get(%struct.device* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %50 = bitcast i8* %49 to %struct.regmap*
  %51 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %7, align 8
  %52 = getelementptr inbounds %struct.zx_tdm_info, %struct.zx_tdm_info* %51, i32 0, i32 2
  store %struct.regmap* %50, %struct.regmap** %52, align 8
  %53 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %7, align 8
  %54 = getelementptr inbounds %struct.zx_tdm_info, %struct.zx_tdm_info* %53, i32 0, i32 2
  %55 = load %struct.regmap*, %struct.regmap** %54, align 8
  %56 = call i64 @IS_ERR(%struct.regmap* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %46
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %62 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %7, align 8
  %63 = getelementptr inbounds %struct.zx_tdm_info, %struct.zx_tdm_info* %62, i32 0, i32 2
  %64 = load %struct.regmap*, %struct.regmap** %63, align 8
  %65 = call i32 @PTR_ERR(%struct.regmap* %64)
  store i32 %65, i32* %2, align 4
  br label %163

66:                                               ; preds = %46
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = load i32, i32* @IORESOURCE_MEM, align 4
  %69 = call %struct.resource* @platform_get_resource(%struct.platform_device* %67, i32 %68, i32 0)
  store %struct.resource* %69, %struct.resource** %9, align 8
  %70 = load %struct.resource*, %struct.resource** %9, align 8
  %71 = getelementptr inbounds %struct.resource, %struct.resource* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %7, align 8
  %74 = getelementptr inbounds %struct.zx_tdm_info, %struct.zx_tdm_info* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = load %struct.resource*, %struct.resource** %9, align 8
  %78 = call %struct.regmap* @devm_ioremap_resource(%struct.device* %76, %struct.resource* %77)
  %79 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %7, align 8
  %80 = getelementptr inbounds %struct.zx_tdm_info, %struct.zx_tdm_info* %79, i32 0, i32 0
  store %struct.regmap* %78, %struct.regmap** %80, align 8
  %81 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %7, align 8
  %82 = getelementptr inbounds %struct.zx_tdm_info, %struct.zx_tdm_info* %81, i32 0, i32 0
  %83 = load %struct.regmap*, %struct.regmap** %82, align 8
  %84 = call i64 @IS_ERR(%struct.regmap* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %66
  %87 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %7, align 8
  %88 = getelementptr inbounds %struct.zx_tdm_info, %struct.zx_tdm_info* %87, i32 0, i32 0
  %89 = load %struct.regmap*, %struct.regmap** %88, align 8
  %90 = call i32 @PTR_ERR(%struct.regmap* %89)
  store i32 %90, i32* %2, align 4
  br label %163

91:                                               ; preds = %66
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.device, %struct.device* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @of_parse_phandle_with_fixed_args(i32 %95, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 2, i32 0, %struct.of_phandle_args* %5)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %91
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %101, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %2, align 4
  br label %163

104:                                              ; preds = %91
  %105 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %5, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %6, align 4
  %109 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %5, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %8, align 4
  %113 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %5, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call %struct.regmap* @syscon_node_to_regmap(i32 %114)
  store %struct.regmap* %115, %struct.regmap** %10, align 8
  %116 = load %struct.regmap*, %struct.regmap** %10, align 8
  %117 = call i64 @IS_ERR(%struct.regmap* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %104
  %120 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %5, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @of_node_put(i32 %121)
  %123 = load %struct.regmap*, %struct.regmap** %10, align 8
  %124 = call i32 @PTR_ERR(%struct.regmap* %123)
  store i32 %124, i32* %2, align 4
  br label %163

125:                                              ; preds = %104
  %126 = load %struct.regmap*, %struct.regmap** %10, align 8
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @regmap_update_bits(%struct.regmap* %126, i32 %127, i32 %128, i32 %129)
  %131 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %5, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @of_node_put(i32 %132)
  %134 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %7, align 8
  %135 = call i32 @zx_tdm_init_state(%struct.zx_tdm_info* %134)
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %7, align 8
  %138 = call i32 @platform_set_drvdata(%struct.platform_device* %136, %struct.zx_tdm_info* %137)
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 0
  %141 = call i32 @devm_snd_soc_register_component(%struct.device* %140, i32* @zx_tdm_component, i32* @zx_tdm_dai, i32 1)
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* %11, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %125
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 0
  %147 = load i32, i32* %11, align 4
  %148 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %146, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* %11, align 4
  store i32 %149, i32* %2, align 4
  br label %163

150:                                              ; preds = %125
  %151 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %152 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %151, i32 0, i32 0
  %153 = call i32 @devm_snd_dmaengine_pcm_register(%struct.device* %152, i32* null, i32 0)
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %150
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %157, i32 0, i32 0
  %159 = load i32, i32* %11, align 4
  %160 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %158, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %159)
  br label %161

161:                                              ; preds = %156, %150
  %162 = load i32, i32* %11, align 4
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %161, %144, %119, %99, %86, %58, %38, %20
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local %struct.zx_tdm_info* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.regmap* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @of_parse_phandle_with_fixed_args(i32, i8*, i32, i32, %struct.of_phandle_args*) #1

declare dso_local %struct.regmap* @syscon_node_to_regmap(i32) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @zx_tdm_init_state(%struct.zx_tdm_info*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.zx_tdm_info*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

declare dso_local i32 @devm_snd_dmaengine_pcm_register(%struct.device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
