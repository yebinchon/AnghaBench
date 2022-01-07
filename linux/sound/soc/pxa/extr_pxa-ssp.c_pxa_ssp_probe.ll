; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i64, %struct.device* }
%struct.device = type { i64 }
%struct.ssp_priv = type { i32, i32*, i32* }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"unable to get 'port' phandle\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"SoC audio\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"extclk\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*)* @pxa_ssp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_ssp_probe(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ssp_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_node*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 1
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ssp_priv* @kzalloc(i32 24, i32 %11)
  store %struct.ssp_priv* %12, %struct.ssp_priv** %5, align 8
  %13 = load %struct.ssp_priv*, %struct.ssp_priv** %5, align 8
  %14 = icmp ne %struct.ssp_priv* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %98

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %72

23:                                               ; preds = %18
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call %struct.device_node* @of_parse_phandle(i64 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %27, %struct.device_node** %7, align 8
  %28 = load %struct.device_node*, %struct.device_node** %7, align 8
  %29 = icmp ne %struct.device_node* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %23
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %94

35:                                               ; preds = %23
  %36 = load %struct.device_node*, %struct.device_node** %7, align 8
  %37 = call i32* @pxa_ssp_request_of(%struct.device_node* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %38 = load %struct.ssp_priv*, %struct.ssp_priv** %5, align 8
  %39 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %38, i32 0, i32 1
  store i32* %37, i32** %39, align 8
  %40 = load %struct.ssp_priv*, %struct.ssp_priv** %5, align 8
  %41 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %94

47:                                               ; preds = %35
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = call i32* @devm_clk_get(%struct.device* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %50 = load %struct.ssp_priv*, %struct.ssp_priv** %5, align 8
  %51 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %50, i32 0, i32 2
  store i32* %49, i32** %51, align 8
  %52 = load %struct.ssp_priv*, %struct.ssp_priv** %5, align 8
  %53 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = call i64 @IS_ERR(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %47
  %58 = load %struct.ssp_priv*, %struct.ssp_priv** %5, align 8
  %59 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @PTR_ERR(i32* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @EPROBE_DEFER, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %98

68:                                               ; preds = %57
  %69 = load %struct.ssp_priv*, %struct.ssp_priv** %5, align 8
  %70 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %69, i32 0, i32 2
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %68, %47
  br label %88

72:                                               ; preds = %18
  %73 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %74 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 1
  %77 = call i32* @pxa_ssp_request(i64 %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %78 = load %struct.ssp_priv*, %struct.ssp_priv** %5, align 8
  %79 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %78, i32 0, i32 1
  store i32* %77, i32** %79, align 8
  %80 = load %struct.ssp_priv*, %struct.ssp_priv** %5, align 8
  %81 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %72
  %85 = load i32, i32* @ENODEV, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %94

87:                                               ; preds = %72
  br label %88

88:                                               ; preds = %87, %71
  %89 = load %struct.ssp_priv*, %struct.ssp_priv** %5, align 8
  %90 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %89, i32 0, i32 0
  store i32 -1, i32* %90, align 8
  %91 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %92 = load %struct.ssp_priv*, %struct.ssp_priv** %5, align 8
  %93 = call i32 @snd_soc_dai_set_drvdata(%struct.snd_soc_dai* %91, %struct.ssp_priv* %92)
  store i32 0, i32* %2, align 4
  br label %98

94:                                               ; preds = %84, %44, %30
  %95 = load %struct.ssp_priv*, %struct.ssp_priv** %5, align 8
  %96 = call i32 @kfree(%struct.ssp_priv* %95)
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %94, %88, %66, %15
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.ssp_priv* @kzalloc(i32, i32) #1

declare dso_local %struct.device_node* @of_parse_phandle(i64, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32* @pxa_ssp_request_of(%struct.device_node*, i8*) #1

declare dso_local i32* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32* @pxa_ssp_request(i64, i8*) #1

declare dso_local i32 @snd_soc_dai_set_drvdata(%struct.snd_soc_dai*, %struct.ssp_priv*) #1

declare dso_local i32 @kfree(%struct.ssp_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
