; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_mmp-sspa.c_asoc_mmp_sspa_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_mmp-sspa.c_asoc_mmp_sspa_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sspa_priv = type { i32, i8*, i8*, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"mmp-audio\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"mmp-sysclk\00", align 1
@mmp_sspa_component = common dso_local global i32 0, align 4
@mmp_sspa_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @asoc_mmp_sspa_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asoc_mmp_sspa_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sspa_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i8* @devm_kzalloc(i32* %6, i32 40, i32 %7)
  %9 = bitcast i8* %8 to %struct.sspa_priv*
  store %struct.sspa_priv* %9, %struct.sspa_priv** %4, align 8
  %10 = load %struct.sspa_priv*, %struct.sspa_priv** %4, align 8
  %11 = icmp ne %struct.sspa_priv* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %132

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @devm_kzalloc(i32* %17, i32 4, i32 %18)
  %20 = bitcast i8* %19 to %struct.TYPE_2__*
  %21 = load %struct.sspa_priv*, %struct.sspa_priv** %4, align 8
  %22 = getelementptr inbounds %struct.sspa_priv, %struct.sspa_priv* %21, i32 0, i32 3
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %22, align 8
  %23 = load %struct.sspa_priv*, %struct.sspa_priv** %4, align 8
  %24 = getelementptr inbounds %struct.sspa_priv, %struct.sspa_priv* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp eq %struct.TYPE_2__* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %15
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %132

30:                                               ; preds = %15
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32* @devm_kcalloc(i32* %32, i32 2, i32 4, i32 %33)
  %35 = load %struct.sspa_priv*, %struct.sspa_priv** %4, align 8
  %36 = getelementptr inbounds %struct.sspa_priv, %struct.sspa_priv* %35, i32 0, i32 4
  store i32* %34, i32** %36, align 8
  %37 = load %struct.sspa_priv*, %struct.sspa_priv** %4, align 8
  %38 = getelementptr inbounds %struct.sspa_priv, %struct.sspa_priv* %37, i32 0, i32 4
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %132

44:                                               ; preds = %30
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %45, i32 0)
  %47 = load %struct.sspa_priv*, %struct.sspa_priv** %4, align 8
  %48 = getelementptr inbounds %struct.sspa_priv, %struct.sspa_priv* %47, i32 0, i32 3
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i8* %46, i8** %50, align 8
  %51 = load %struct.sspa_priv*, %struct.sspa_priv** %4, align 8
  %52 = getelementptr inbounds %struct.sspa_priv, %struct.sspa_priv* %51, i32 0, i32 3
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @IS_ERR(i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %44
  %59 = load %struct.sspa_priv*, %struct.sspa_priv** %4, align 8
  %60 = getelementptr inbounds %struct.sspa_priv, %struct.sspa_priv* %59, i32 0, i32 3
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @PTR_ERR(i8* %63)
  store i32 %64, i32* %2, align 4
  br label %132

65:                                               ; preds = %44
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = call i8* @devm_clk_get(i32* %67, i32* null)
  %69 = load %struct.sspa_priv*, %struct.sspa_priv** %4, align 8
  %70 = getelementptr inbounds %struct.sspa_priv, %struct.sspa_priv* %69, i32 0, i32 3
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i8* %68, i8** %72, align 8
  %73 = load %struct.sspa_priv*, %struct.sspa_priv** %4, align 8
  %74 = getelementptr inbounds %struct.sspa_priv, %struct.sspa_priv* %73, i32 0, i32 3
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @IS_ERR(i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %65
  %81 = load %struct.sspa_priv*, %struct.sspa_priv** %4, align 8
  %82 = getelementptr inbounds %struct.sspa_priv, %struct.sspa_priv* %81, i32 0, i32 3
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @PTR_ERR(i8* %85)
  store i32 %86, i32* %2, align 4
  br label %132

87:                                               ; preds = %65
  %88 = call i8* @clk_get(i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %89 = load %struct.sspa_priv*, %struct.sspa_priv** %4, align 8
  %90 = getelementptr inbounds %struct.sspa_priv, %struct.sspa_priv* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = load %struct.sspa_priv*, %struct.sspa_priv** %4, align 8
  %92 = getelementptr inbounds %struct.sspa_priv, %struct.sspa_priv* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @IS_ERR(i8* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %87
  %97 = load %struct.sspa_priv*, %struct.sspa_priv** %4, align 8
  %98 = getelementptr inbounds %struct.sspa_priv, %struct.sspa_priv* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @PTR_ERR(i8* %99)
  store i32 %100, i32* %2, align 4
  br label %132

101:                                              ; preds = %87
  %102 = call i8* @clk_get(i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %103 = load %struct.sspa_priv*, %struct.sspa_priv** %4, align 8
  %104 = getelementptr inbounds %struct.sspa_priv, %struct.sspa_priv* %103, i32 0, i32 2
  store i8* %102, i8** %104, align 8
  %105 = load %struct.sspa_priv*, %struct.sspa_priv** %4, align 8
  %106 = getelementptr inbounds %struct.sspa_priv, %struct.sspa_priv* %105, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = call i64 @IS_ERR(i8* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %101
  %111 = load %struct.sspa_priv*, %struct.sspa_priv** %4, align 8
  %112 = getelementptr inbounds %struct.sspa_priv, %struct.sspa_priv* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @clk_put(i8* %113)
  %115 = load %struct.sspa_priv*, %struct.sspa_priv** %4, align 8
  %116 = getelementptr inbounds %struct.sspa_priv, %struct.sspa_priv* %115, i32 0, i32 2
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @PTR_ERR(i8* %117)
  store i32 %118, i32* %2, align 4
  br label %132

119:                                              ; preds = %101
  %120 = load %struct.sspa_priv*, %struct.sspa_priv** %4, align 8
  %121 = getelementptr inbounds %struct.sspa_priv, %struct.sspa_priv* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @clk_enable(i8* %122)
  %124 = load %struct.sspa_priv*, %struct.sspa_priv** %4, align 8
  %125 = getelementptr inbounds %struct.sspa_priv, %struct.sspa_priv* %124, i32 0, i32 0
  store i32 -1, i32* %125, align 8
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = load %struct.sspa_priv*, %struct.sspa_priv** %4, align 8
  %128 = call i32 @platform_set_drvdata(%struct.platform_device* %126, %struct.sspa_priv* %127)
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = call i32 @devm_snd_soc_register_component(i32* %130, i32* @mmp_sspa_component, i32* @mmp_sspa_dai, i32 1)
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %119, %110, %96, %80, %58, %41, %27, %12
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_clk_get(i32*, i32*) #1

declare dso_local i8* @clk_get(i32*, i8*) #1

declare dso_local i32 @clk_put(i8*) #1

declare dso_local i32 @clk_enable(i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sspa_priv*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
