; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/hisilicon/extr_hi6210-i2s.c_hi6210_i2s_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/hisilicon/extr_hi6210-i2s.c_hi6210_i2s_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.hi6210_i2s = type { i32, i32, i8**, i8*, i64, i8*, i32, %struct.device* }
%struct.resource = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@hi6210_i2s_dai_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"hisilicon,sysctrl-syscon\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"dacodec\00", align 1
@CLK_DACODEC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"i2s-base\00", align 1
@CLK_I2S_BASE = common dso_local global i64 0, align 8
@hi6210_i2s_i2s_comp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hi6210_i2s_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi6210_i2s_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.hi6210_i2s*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.hi6210_i2s* @devm_kzalloc(%struct.device* %16, i32 56, i32 %17)
  store %struct.hi6210_i2s* %18, %struct.hi6210_i2s** %6, align 8
  %19 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %6, align 8
  %20 = icmp ne %struct.hi6210_i2s* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %149

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %6, align 8
  %27 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %26, i32 0, i32 7
  store %struct.device* %25, %struct.device** %27, align 8
  %28 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %6, align 8
  %29 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %28, i32 0, i32 6
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = load i32, i32* @IORESOURCE_MEM, align 4
  %33 = call %struct.resource* @platform_get_resource(%struct.platform_device* %31, i32 %32, i32 0)
  store %struct.resource* %33, %struct.resource** %7, align 8
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = load %struct.resource*, %struct.resource** %7, align 8
  %36 = call i8* @devm_ioremap_resource(%struct.device* %34, %struct.resource* %35)
  %37 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %6, align 8
  %38 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %37, i32 0, i32 5
  store i8* %36, i8** %38, align 8
  %39 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %6, align 8
  %40 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %39, i32 0, i32 5
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @IS_ERR(i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %24
  %45 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %6, align 8
  %46 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %45, i32 0, i32 5
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @PTR_ERR(i8* %47)
  store i32 %48, i32* %2, align 4
  br label %149

49:                                               ; preds = %24
  %50 = load %struct.resource*, %struct.resource** %7, align 8
  %51 = getelementptr inbounds %struct.resource, %struct.resource* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %6, align 8
  %54 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %53, i32 0, i32 4
  store i64 %52, i64* %54, align 8
  %55 = load i32, i32* @hi6210_i2s_dai_init, align 4
  %56 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %6, align 8
  %57 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %6, align 8
  %61 = call i32 @dev_set_drvdata(%struct.device* %59, %struct.hi6210_i2s* %60)
  %62 = load %struct.device_node*, %struct.device_node** %4, align 8
  %63 = call i8* @syscon_regmap_lookup_by_phandle(%struct.device_node* %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %6, align 8
  %65 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %6, align 8
  %67 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %66, i32 0, i32 3
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @IS_ERR(i8* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %49
  %72 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %6, align 8
  %73 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %72, i32 0, i32 3
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @PTR_ERR(i8* %74)
  store i32 %75, i32* %2, align 4
  br label %149

76:                                               ; preds = %49
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = call i8* @devm_clk_get(%struct.device* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %80 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %6, align 8
  %81 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %80, i32 0, i32 2
  %82 = load i8**, i8*** %81, align 8
  %83 = load i64, i64* @CLK_DACODEC, align 8
  %84 = getelementptr inbounds i8*, i8** %82, i64 %83
  store i8* %79, i8** %84, align 8
  %85 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %6, align 8
  %86 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %85, i32 0, i32 2
  %87 = load i8**, i8*** %86, align 8
  %88 = load i64, i64* @CLK_DACODEC, align 8
  %89 = getelementptr inbounds i8*, i8** %87, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @IS_ERR_OR_NULL(i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %76
  %94 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %6, align 8
  %95 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %94, i32 0, i32 2
  %96 = load i8**, i8*** %95, align 8
  %97 = load i64, i64* @CLK_DACODEC, align 8
  %98 = getelementptr inbounds i8*, i8** %96, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @PTR_ERR(i8* %99)
  store i32 %100, i32* %2, align 4
  br label %149

101:                                              ; preds = %76
  %102 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %6, align 8
  %103 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = call i8* @devm_clk_get(%struct.device* %107, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %109 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %6, align 8
  %110 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %109, i32 0, i32 2
  %111 = load i8**, i8*** %110, align 8
  %112 = load i64, i64* @CLK_I2S_BASE, align 8
  %113 = getelementptr inbounds i8*, i8** %111, i64 %112
  store i8* %108, i8** %113, align 8
  %114 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %6, align 8
  %115 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %114, i32 0, i32 2
  %116 = load i8**, i8*** %115, align 8
  %117 = load i64, i64* @CLK_I2S_BASE, align 8
  %118 = getelementptr inbounds i8*, i8** %116, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = call i64 @IS_ERR_OR_NULL(i8* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %101
  %123 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %6, align 8
  %124 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %123, i32 0, i32 2
  %125 = load i8**, i8*** %124, align 8
  %126 = load i64, i64* @CLK_I2S_BASE, align 8
  %127 = getelementptr inbounds i8*, i8** %125, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @PTR_ERR(i8* %128)
  store i32 %129, i32* %2, align 4
  br label %149

130:                                              ; preds = %101
  %131 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %6, align 8
  %132 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %135, i32 0, i32 0
  %137 = call i32 @devm_snd_dmaengine_pcm_register(%struct.device* %136, i32* null, i32 0)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %130
  %141 = load i32, i32* %8, align 4
  store i32 %141, i32* %2, align 4
  br label %149

142:                                              ; preds = %130
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 0
  %145 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %6, align 8
  %146 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %145, i32 0, i32 0
  %147 = call i32 @devm_snd_soc_register_component(%struct.device* %144, i32* @hi6210_i2s_i2s_comp, i32* %146, i32 1)
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %142, %140, %122, %93, %71, %44, %21
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local %struct.hi6210_i2s* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.hi6210_i2s*) #1

declare dso_local i8* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR_OR_NULL(i8*) #1

declare dso_local i32 @devm_snd_dmaengine_pcm_register(%struct.device*, i32*, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
