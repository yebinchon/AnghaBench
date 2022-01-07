; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/generic/extr_audio-graph-card.c_graph_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/generic/extr_audio-graph-card.c_graph_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.asoc_simple_priv = type { i32 }
%struct.snd_soc_card = type { i32, i32, i32, %struct.device*, i32 }
%struct.link_info = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@graph_dapm_widgets = common dso_local global i32 0, align 4
@graph_card_probe = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"pa\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to get amplifier gpio: %d\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"parse error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @graph_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @graph_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.asoc_simple_priv*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.snd_soc_card*, align 8
  %7 = alloca %struct.link_info, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.asoc_simple_priv* @devm_kzalloc(%struct.device* %11, i32 4, i32 %12)
  store %struct.asoc_simple_priv* %13, %struct.asoc_simple_priv** %4, align 8
  %14 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %4, align 8
  %15 = icmp ne %struct.asoc_simple_priv* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %110

19:                                               ; preds = %1
  %20 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %4, align 8
  %21 = call %struct.snd_soc_card* @simple_priv_to_card(%struct.asoc_simple_priv* %20)
  store %struct.snd_soc_card* %21, %struct.snd_soc_card** %6, align 8
  %22 = load i32, i32* @THIS_MODULE, align 4
  %23 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %24 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %27 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %26, i32 0, i32 3
  store %struct.device* %25, %struct.device** %27, align 8
  %28 = load i32, i32* @graph_dapm_widgets, align 4
  %29 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %30 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @graph_dapm_widgets, align 4
  %32 = call i32 @ARRAY_SIZE(i32 %31)
  %33 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %34 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @graph_card_probe, align 4
  %36 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %37 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = call i32 @memset(%struct.link_info* %7, i32 0, i32 8)
  %39 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %4, align 8
  %40 = call i32 @graph_get_dais_count(%struct.asoc_simple_priv* %39, %struct.link_info* %7)
  %41 = getelementptr inbounds %struct.link_info, %struct.link_info* %7, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %19
  %45 = getelementptr inbounds %struct.link_info, %struct.link_info* %7, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44, %19
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %110

51:                                               ; preds = %44
  %52 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %4, align 8
  %53 = call i32 @asoc_simple_init_priv(%struct.asoc_simple_priv* %52, %struct.link_info* %7)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %2, align 4
  br label %110

58:                                               ; preds = %51
  %59 = load %struct.device*, %struct.device** %5, align 8
  %60 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %61 = call i32 @devm_gpiod_get_optional(%struct.device* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %4, align 8
  %63 = getelementptr inbounds %struct.asoc_simple_priv, %struct.asoc_simple_priv* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %4, align 8
  %65 = getelementptr inbounds %struct.asoc_simple_priv, %struct.asoc_simple_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @IS_ERR(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %58
  %70 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %4, align 8
  %71 = getelementptr inbounds %struct.asoc_simple_priv, %struct.asoc_simple_priv* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @PTR_ERR(i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load %struct.device*, %struct.device** %5, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @dev_err(%struct.device* %74, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %2, align 4
  br label %110

78:                                               ; preds = %58
  %79 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %4, align 8
  %80 = call i32 @graph_parse_of(%struct.asoc_simple_priv* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @EPROBE_DEFER, align 4
  %86 = sub nsw i32 0, %85
  %87 = icmp ne i32 %84, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load %struct.device*, %struct.device** %5, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @dev_err(%struct.device* %89, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %88, %83
  br label %106

93:                                               ; preds = %78
  %94 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %95 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %4, align 8
  %96 = call i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card* %94, %struct.asoc_simple_priv* %95)
  %97 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %4, align 8
  %98 = call i32 @asoc_simple_debug_info(%struct.asoc_simple_priv* %97)
  %99 = load %struct.device*, %struct.device** %5, align 8
  %100 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %101 = call i32 @devm_snd_soc_register_card(%struct.device* %99, %struct.snd_soc_card* %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %93
  br label %106

105:                                              ; preds = %93
  store i32 0, i32* %2, align 4
  br label %110

106:                                              ; preds = %104, %92
  %107 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %108 = call i32 @asoc_simple_clean_reference(%struct.snd_soc_card* %107)
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %106, %105, %69, %56, %48, %16
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local %struct.asoc_simple_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.snd_soc_card* @simple_priv_to_card(%struct.asoc_simple_priv*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @memset(%struct.link_info*, i32, i32) #1

declare dso_local i32 @graph_get_dais_count(%struct.asoc_simple_priv*, %struct.link_info*) #1

declare dso_local i32 @asoc_simple_init_priv(%struct.asoc_simple_priv*, %struct.link_info*) #1

declare dso_local i32 @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @graph_parse_of(%struct.asoc_simple_priv*) #1

declare dso_local i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card*, %struct.asoc_simple_priv*) #1

declare dso_local i32 @asoc_simple_debug_info(%struct.asoc_simple_priv*) #1

declare dso_local i32 @devm_snd_soc_register_card(%struct.device*, %struct.snd_soc_card*) #1

declare dso_local i32 @asoc_simple_clean_reference(%struct.snd_soc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
