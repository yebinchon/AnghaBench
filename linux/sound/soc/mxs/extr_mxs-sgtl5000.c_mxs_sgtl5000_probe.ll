; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mxs/extr_mxs-sgtl5000.c_mxs_sgtl5000_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mxs/extr_mxs-sgtl5000.c_mxs_sgtl5000_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.device_node*, i32* }
%struct.TYPE_8__ = type { %struct.device_node*, i32* }
%struct.TYPE_7__ = type { %struct.device_node*, i32* }
%struct.platform_device = type { %struct.TYPE_11__ }

@mxs_sgtl5000 = common dso_local global %struct.snd_soc_card zeroinitializer, align 8
@.str = private unnamed_addr constant [17 x i8] c"saif-controllers\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"audio-codec\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"phandle missing or invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mxs_sgtl5000_dai = common dso_local global %struct.TYPE_10__* null, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"failed to get mclk\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"audio-routing\00", align 1
@mxs_sgtl5000_dapm_widgets = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"failed to parse audio-routing (%d)\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"snd_soc_register_card failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mxs_sgtl5000_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_sgtl5000_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.snd_soc_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca [2 x %struct.device_node*], align 16
  %9 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.snd_soc_card* @mxs_sgtl5000, %struct.snd_soc_card** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %7, align 8
  %14 = load %struct.device_node*, %struct.device_node** %7, align 8
  %15 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 0)
  %16 = getelementptr inbounds [2 x %struct.device_node*], [2 x %struct.device_node*]* %8, i64 0, i64 0
  store %struct.device_node* %15, %struct.device_node** %16, align 16
  %17 = load %struct.device_node*, %struct.device_node** %7, align 8
  %18 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 1)
  %19 = getelementptr inbounds [2 x %struct.device_node*], [2 x %struct.device_node*]* %8, i64 0, i64 1
  store %struct.device_node* %18, %struct.device_node** %19, align 8
  %20 = load %struct.device_node*, %struct.device_node** %7, align 8
  %21 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.device_node* %21, %struct.device_node** %9, align 8
  %22 = getelementptr inbounds [2 x %struct.device_node*], [2 x %struct.device_node*]* %8, i64 0, i64 0
  %23 = load %struct.device_node*, %struct.device_node** %22, align 16
  %24 = icmp ne %struct.device_node* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = getelementptr inbounds [2 x %struct.device_node*], [2 x %struct.device_node*]* %8, i64 0, i64 1
  %27 = load %struct.device_node*, %struct.device_node** %26, align 8
  %28 = icmp ne %struct.device_node* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.device_node*, %struct.device_node** %9, align 8
  %31 = icmp ne %struct.device_node* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %29, %25, %1
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %161

38:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %94, %38
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %42, label %97

42:                                               ; preds = %39
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mxs_sgtl5000_dai, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  store i32* null, i32** %49, align 8
  %50 = load %struct.device_node*, %struct.device_node** %9, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mxs_sgtl5000_dai, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store %struct.device_node* %50, %struct.device_node** %57, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mxs_sgtl5000_dai, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  store i32* null, i32** %64, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [2 x %struct.device_node*], [2 x %struct.device_node*]* %8, i64 0, i64 %66
  %68 = load %struct.device_node*, %struct.device_node** %67, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mxs_sgtl5000_dai, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  store %struct.device_node* %68, %struct.device_node** %75, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mxs_sgtl5000_dai, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  store i32* null, i32** %82, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [2 x %struct.device_node*], [2 x %struct.device_node*]* %8, i64 0, i64 %84
  %86 = load %struct.device_node*, %struct.device_node** %85, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mxs_sgtl5000_dai, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  store %struct.device_node* %86, %struct.device_node** %93, align 8
  br label %94

94:                                               ; preds = %42
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %39

97:                                               ; preds = %39
  %98 = load %struct.device_node*, %struct.device_node** %9, align 8
  %99 = call i32 @of_node_put(%struct.device_node* %98)
  %100 = getelementptr inbounds [2 x %struct.device_node*], [2 x %struct.device_node*]* %8, i64 0, i64 0
  %101 = load %struct.device_node*, %struct.device_node** %100, align 16
  %102 = call i32 @of_node_put(%struct.device_node* %101)
  %103 = getelementptr inbounds [2 x %struct.device_node*], [2 x %struct.device_node*]* %8, i64 0, i64 1
  %104 = load %struct.device_node*, %struct.device_node** %103, align 8
  %105 = call i32 @of_node_put(%struct.device_node* %104)
  %106 = call i32 @mxs_saif_get_mclk(i32 0, i32 11289600, i32 44100)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %97
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %111, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %113 = load i32, i32* %5, align 4
  store i32 %113, i32* %2, align 4
  br label %161

114:                                              ; preds = %97
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %118 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %117, i32 0, i32 2
  store %struct.TYPE_11__* %116, %struct.TYPE_11__** %118, align 8
  %119 = load %struct.device_node*, %struct.device_node** %7, align 8
  %120 = call i64 @of_find_property(%struct.device_node* %119, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %141

122:                                              ; preds = %114
  %123 = load i32, i32* @mxs_sgtl5000_dapm_widgets, align 4
  %124 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %125 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* @mxs_sgtl5000_dapm_widgets, align 4
  %127 = call i32 @ARRAY_SIZE(i32 %126)
  %128 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %129 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %131 = call i32 @snd_soc_of_parse_audio_routing(%struct.snd_soc_card* %130, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* %5, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %122
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %135, i32 0, i32 0
  %137 = load i32, i32* %5, align 4
  %138 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %136, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* %5, align 4
  store i32 %139, i32* %2, align 4
  br label %161

140:                                              ; preds = %122
  br label %141

141:                                              ; preds = %140, %114
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %145 = call i32 @devm_snd_soc_register_card(%struct.TYPE_11__* %143, %struct.snd_soc_card* %144)
  store i32 %145, i32* %5, align 4
  %146 = load i32, i32* %5, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %141
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* @EPROBE_DEFER, align 4
  %151 = sub nsw i32 0, %150
  %152 = icmp ne i32 %149, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = load i32, i32* %5, align 4
  %157 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %155, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %153, %148
  %159 = load i32, i32* %5, align 4
  store i32 %159, i32* %2, align 4
  br label %161

160:                                              ; preds = %141
  store i32 0, i32* %2, align 4
  br label %161

161:                                              ; preds = %160, %158, %134, %109, %32
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @mxs_saif_get_mclk(i32, i32, i32) #1

declare dso_local i64 @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_of_parse_audio_routing(%struct.snd_soc_card*, i8*) #1

declare dso_local i32 @devm_snd_soc_register_card(%struct.TYPE_11__*, %struct.snd_soc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
