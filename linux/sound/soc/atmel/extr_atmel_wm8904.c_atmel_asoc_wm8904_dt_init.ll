; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel_wm8904.c_atmel_asoc_wm8904_dt_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel_wm8904.c_atmel_asoc_wm8904_dt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32 }
%struct.snd_soc_dai_link = type { %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_6__ = type { %struct.device_node* }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.device_node* }

@atmel_asoc_wm8904_card = common dso_local global %struct.snd_soc_card zeroinitializer, align 4
@atmel_asoc_wm8904_dailink = common dso_local global %struct.snd_soc_dai_link zeroinitializer, align 8
@.str = private unnamed_addr constant [28 x i8] c"only device tree supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"atmel,model\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to parse card name\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"atmel,audio-routing\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to parse audio routing\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"atmel,ssc-controller\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"failed to get dai and pcm info\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"atmel,audio-codec\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"failed to get codec info\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @atmel_asoc_wm8904_dt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_asoc_wm8904_dt_init(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.snd_soc_card*, align 8
  %8 = alloca %struct.snd_soc_dai_link*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %4, align 8
  store %struct.snd_soc_card* @atmel_asoc_wm8904_card, %struct.snd_soc_card** %7, align 8
  store %struct.snd_soc_dai_link* @atmel_asoc_wm8904_dailink, %struct.snd_soc_dai_link** %8, align 8
  %14 = load %struct.device_node*, %struct.device_node** %4, align 8
  %15 = icmp ne %struct.device_node* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 @dev_err(%struct.TYPE_8__* %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %86

22:                                               ; preds = %1
  %23 = load %struct.snd_soc_card*, %struct.snd_soc_card** %7, align 8
  %24 = call i32 @snd_soc_of_parse_card_name(%struct.snd_soc_card* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = call i32 @dev_err(%struct.TYPE_8__* %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %2, align 4
  br label %86

32:                                               ; preds = %22
  %33 = load %struct.snd_soc_card*, %struct.snd_soc_card** %7, align 8
  %34 = call i32 @snd_soc_of_parse_audio_routing(%struct.snd_soc_card* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 @dev_err(%struct.TYPE_8__* %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %2, align 4
  br label %86

42:                                               ; preds = %32
  %43 = load %struct.device_node*, %struct.device_node** %4, align 8
  %44 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 0)
  store %struct.device_node* %44, %struct.device_node** %6, align 8
  %45 = load %struct.device_node*, %struct.device_node** %6, align 8
  %46 = icmp ne %struct.device_node* %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %42
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i32 @dev_err(%struct.TYPE_8__* %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %2, align 4
  br label %86

54:                                               ; preds = %42
  %55 = load %struct.device_node*, %struct.device_node** %6, align 8
  %56 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %57 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %56, i32 0, i32 2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store %struct.device_node* %55, %struct.device_node** %59, align 8
  %60 = load %struct.device_node*, %struct.device_node** %6, align 8
  %61 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %62 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store %struct.device_node* %60, %struct.device_node** %64, align 8
  %65 = load %struct.device_node*, %struct.device_node** %6, align 8
  %66 = call i32 @of_node_put(%struct.device_node* %65)
  %67 = load %struct.device_node*, %struct.device_node** %4, align 8
  %68 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 0)
  store %struct.device_node* %68, %struct.device_node** %5, align 8
  %69 = load %struct.device_node*, %struct.device_node** %5, align 8
  %70 = icmp ne %struct.device_node* %69, null
  br i1 %70, label %78, label %71

71:                                               ; preds = %54
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i32 @dev_err(%struct.TYPE_8__* %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %2, align 4
  br label %86

78:                                               ; preds = %54
  %79 = load %struct.device_node*, %struct.device_node** %5, align 8
  %80 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %81 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  store %struct.device_node* %79, %struct.device_node** %83, align 8
  %84 = load %struct.device_node*, %struct.device_node** %5, align 8
  %85 = call i32 @of_node_put(%struct.device_node* %84)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %78, %71, %47, %37, %27, %16
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @snd_soc_of_parse_card_name(%struct.snd_soc_card*, i8*) #1

declare dso_local i32 @snd_soc_of_parse_audio_routing(%struct.snd_soc_card*, i8*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
