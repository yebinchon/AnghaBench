; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_sam9g20_wm8731.c_at91sam9g20ek_audio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_sam9g20_wm8731.c_at91sam9g20ek_audio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.clk = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.device_node*, i32* }
%struct.TYPE_7__ = type { %struct.device_node*, i32* }
%struct.TYPE_6__ = type { %struct.device_node*, i32* }
%struct.platform_device = type { %struct.TYPE_9__ }

@snd_soc_at91sam9g20ek = common dso_local global %struct.snd_soc_card zeroinitializer, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"ssc channel is not valid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"pck0\00", align 1
@mclk = common dso_local global %struct.clk* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"Failed to get MCLK\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"pllb\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Failed to get PLLB\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Failed to set MCLK parent\0A\00", align 1
@MCLK_RATE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"atmel,model\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"atmel,audio-routing\00", align 1
@at91sam9g20ek_dai = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [18 x i8] c"atmel,audio-codec\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"codec info missing\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"atmel,ssc-controller\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"dai and pcm info missing\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"snd_soc_register_card() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @at91sam9g20ek_audio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91sam9g20ek_audio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca %struct.snd_soc_card*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %4, align 8
  store %struct.snd_soc_card* @snd_soc_at91sam9g20ek, %struct.snd_soc_card** %8, align 8
  %14 = load %struct.device_node*, %struct.device_node** %4, align 8
  %15 = icmp ne %struct.device_node* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %140

19:                                               ; preds = %1
  %20 = call i32 @atmel_ssc_set_audio(i32 0)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 @dev_err(%struct.TYPE_9__* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %140

29:                                               ; preds = %19
  %30 = call %struct.clk* @clk_get(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.clk* %30, %struct.clk** @mclk, align 8
  %31 = load %struct.clk*, %struct.clk** @mclk, align 8
  %32 = call i64 @IS_ERR(%struct.clk* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call i32 @dev_err(%struct.TYPE_9__* %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %38 = load %struct.clk*, %struct.clk** @mclk, align 8
  %39 = call i32 @PTR_ERR(%struct.clk* %38)
  store i32 %39, i32* %9, align 4
  br label %137

40:                                               ; preds = %29
  %41 = call %struct.clk* @clk_get(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store %struct.clk* %41, %struct.clk** %7, align 8
  %42 = load %struct.clk*, %struct.clk** %7, align 8
  %43 = call i64 @IS_ERR(%struct.clk* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 @dev_err(%struct.TYPE_9__* %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %49 = load %struct.clk*, %struct.clk** %7, align 8
  %50 = call i32 @PTR_ERR(%struct.clk* %49)
  store i32 %50, i32* %9, align 4
  br label %134

51:                                               ; preds = %40
  %52 = load %struct.clk*, %struct.clk** @mclk, align 8
  %53 = load %struct.clk*, %struct.clk** %7, align 8
  %54 = call i32 @clk_set_parent(%struct.clk* %52, %struct.clk* %53)
  store i32 %54, i32* %9, align 4
  %55 = load %struct.clk*, %struct.clk** %7, align 8
  %56 = call i32 @clk_put(%struct.clk* %55)
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call i32 @dev_err(%struct.TYPE_9__* %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %134

63:                                               ; preds = %51
  %64 = load %struct.clk*, %struct.clk** @mclk, align 8
  %65 = load i32, i32* @MCLK_RATE, align 4
  %66 = call i32 @clk_set_rate(%struct.clk* %64, i32 %65)
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %70 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %69, i32 0, i32 0
  store %struct.TYPE_9__* %68, %struct.TYPE_9__** %70, align 8
  %71 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %72 = call i32 @snd_soc_of_parse_card_name(%struct.snd_soc_card* %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %63
  br label %137

76:                                               ; preds = %63
  %77 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %78 = call i32 @snd_soc_of_parse_audio_routing(%struct.snd_soc_card* %77, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %137

82:                                               ; preds = %76
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @at91sam9g20ek_dai, i32 0, i32 2), align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  store i32* null, i32** %84, align 8
  %85 = load %struct.device_node*, %struct.device_node** %4, align 8
  %86 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 0)
  store %struct.device_node* %86, %struct.device_node** %5, align 8
  %87 = load %struct.device_node*, %struct.device_node** %5, align 8
  %88 = icmp ne %struct.device_node* %87, null
  br i1 %88, label %95, label %89

89:                                               ; preds = %82
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = call i32 @dev_err(%struct.TYPE_9__* %91, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %140

95:                                               ; preds = %82
  %96 = load %struct.device_node*, %struct.device_node** %5, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @at91sam9g20ek_dai, i32 0, i32 2), align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store %struct.device_node* %96, %struct.device_node** %98, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @at91sam9g20ek_dai, i32 0, i32 1), align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  store i32* null, i32** %100, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @at91sam9g20ek_dai, i32 0, i32 0), align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  store i32* null, i32** %102, align 8
  %103 = load %struct.device_node*, %struct.device_node** %4, align 8
  %104 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %103, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 0)
  store %struct.device_node* %104, %struct.device_node** %6, align 8
  %105 = load %struct.device_node*, %struct.device_node** %6, align 8
  %106 = icmp ne %struct.device_node* %105, null
  br i1 %106, label %113, label %107

107:                                              ; preds = %95
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = call i32 @dev_err(%struct.TYPE_9__* %109, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %140

113:                                              ; preds = %95
  %114 = load %struct.device_node*, %struct.device_node** %6, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @at91sam9g20ek_dai, i32 0, i32 1), align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  store %struct.device_node* %114, %struct.device_node** %116, align 8
  %117 = load %struct.device_node*, %struct.device_node** %6, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @at91sam9g20ek_dai, i32 0, i32 0), align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  store %struct.device_node* %117, %struct.device_node** %119, align 8
  %120 = load %struct.device_node*, %struct.device_node** %5, align 8
  %121 = call i32 @of_node_put(%struct.device_node* %120)
  %122 = load %struct.device_node*, %struct.device_node** %6, align 8
  %123 = call i32 @of_node_put(%struct.device_node* %122)
  %124 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %125 = call i32 @snd_soc_register_card(%struct.snd_soc_card* %124)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %113
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = call i32 @dev_err(%struct.TYPE_9__* %130, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  br label %132

132:                                              ; preds = %128, %113
  %133 = load i32, i32* %9, align 4
  store i32 %133, i32* %2, align 4
  br label %140

134:                                              ; preds = %59, %45
  %135 = load %struct.clk*, %struct.clk** @mclk, align 8
  %136 = call i32 @clk_put(%struct.clk* %135)
  store %struct.clk* null, %struct.clk** @mclk, align 8
  br label %137

137:                                              ; preds = %134, %81, %75, %34
  %138 = call i32 @atmel_ssc_put_audio(i32 0)
  %139 = load i32, i32* %9, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %137, %132, %107, %89, %23, %16
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @atmel_ssc_set_audio(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*) #1

declare dso_local %struct.clk* @clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @clk_set_parent(%struct.clk*, %struct.clk*) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

declare dso_local i32 @clk_set_rate(%struct.clk*, i32) #1

declare dso_local i32 @snd_soc_of_parse_card_name(%struct.snd_soc_card*, i8*) #1

declare dso_local i32 @snd_soc_of_parse_audio_routing(%struct.snd_soc_card*, i8*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @snd_soc_register_card(%struct.snd_soc_card*) #1

declare dso_local i32 @atmel_ssc_put_audio(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
