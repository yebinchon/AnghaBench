; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-card.c_axg_card_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-card.c_axg_card_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.axg_card = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"audio-routing\00", align 1
@snd_soc_of_parse_audio_routing = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"error while parsing routing\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"audio-widgets\00", align 1
@snd_soc_of_parse_audio_simple_widgets = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"error while parsing widgets\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @axg_card_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_card_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.axg_card*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.axg_card* @devm_kzalloc(%struct.device* %9, i32 16, i32 %10)
  store %struct.axg_card* %11, %struct.axg_card** %5, align 8
  %12 = load %struct.axg_card*, %struct.axg_card** %5, align 8
  %13 = icmp ne %struct.axg_card* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %89

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load %struct.axg_card*, %struct.axg_card** %5, align 8
  %20 = call i32 @platform_set_drvdata(%struct.platform_device* %18, %struct.axg_card* %19)
  %21 = load %struct.axg_card*, %struct.axg_card** %5, align 8
  %22 = getelementptr inbounds %struct.axg_card, %struct.axg_card* %21, i32 0, i32 0
  %23 = load %struct.axg_card*, %struct.axg_card** %5, align 8
  %24 = call i32 @snd_soc_card_set_drvdata(%struct.TYPE_7__* %22, %struct.axg_card* %23)
  %25 = load i32, i32* @THIS_MODULE, align 4
  %26 = load %struct.axg_card*, %struct.axg_card** %5, align 8
  %27 = getelementptr inbounds %struct.axg_card, %struct.axg_card* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 8
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load %struct.axg_card*, %struct.axg_card** %5, align 8
  %31 = getelementptr inbounds %struct.axg_card, %struct.axg_card* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store %struct.device* %29, %struct.device** %32, align 8
  %33 = load %struct.axg_card*, %struct.axg_card** %5, align 8
  %34 = getelementptr inbounds %struct.axg_card, %struct.axg_card* %33, i32 0, i32 0
  %35 = call i32 @snd_soc_of_parse_card_name(%struct.TYPE_7__* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %17
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %89

40:                                               ; preds = %17
  %41 = load %struct.axg_card*, %struct.axg_card** %5, align 8
  %42 = getelementptr inbounds %struct.axg_card, %struct.axg_card* %41, i32 0, i32 0
  %43 = load i32, i32* @snd_soc_of_parse_audio_routing, align 4
  %44 = call i32 @axg_card_parse_of_optional(%struct.TYPE_7__* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %89

51:                                               ; preds = %40
  %52 = load %struct.axg_card*, %struct.axg_card** %5, align 8
  %53 = getelementptr inbounds %struct.axg_card, %struct.axg_card* %52, i32 0, i32 0
  %54 = load i32, i32* @snd_soc_of_parse_audio_simple_widgets, align 4
  %55 = call i32 @axg_card_parse_of_optional(%struct.TYPE_7__* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = call i32 @dev_err(%struct.device* %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %89

62:                                               ; preds = %51
  %63 = load %struct.axg_card*, %struct.axg_card** %5, align 8
  %64 = getelementptr inbounds %struct.axg_card, %struct.axg_card* %63, i32 0, i32 0
  %65 = call i32 @axg_card_add_links(%struct.TYPE_7__* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %85

69:                                               ; preds = %62
  %70 = load %struct.axg_card*, %struct.axg_card** %5, align 8
  %71 = getelementptr inbounds %struct.axg_card, %struct.axg_card* %70, i32 0, i32 0
  %72 = call i32 @axg_card_add_aux_devices(%struct.TYPE_7__* %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %85

76:                                               ; preds = %69
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = load %struct.axg_card*, %struct.axg_card** %5, align 8
  %79 = getelementptr inbounds %struct.axg_card, %struct.axg_card* %78, i32 0, i32 0
  %80 = call i32 @devm_snd_soc_register_card(%struct.device* %77, %struct.TYPE_7__* %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %85

84:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %89

85:                                               ; preds = %83, %75, %68
  %86 = load %struct.axg_card*, %struct.axg_card** %5, align 8
  %87 = call i32 @axg_card_clean_references(%struct.axg_card* %86)
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %85, %84, %58, %47, %38, %14
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.axg_card* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.axg_card*) #1

declare dso_local i32 @snd_soc_card_set_drvdata(%struct.TYPE_7__*, %struct.axg_card*) #1

declare dso_local i32 @snd_soc_of_parse_card_name(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @axg_card_parse_of_optional(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @axg_card_add_links(%struct.TYPE_7__*) #1

declare dso_local i32 @axg_card_add_aux_devices(%struct.TYPE_7__*) #1

declare dso_local i32 @devm_snd_soc_register_card(%struct.device*, %struct.TYPE_7__*) #1

declare dso_local i32 @axg_card_clean_references(%struct.axg_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
