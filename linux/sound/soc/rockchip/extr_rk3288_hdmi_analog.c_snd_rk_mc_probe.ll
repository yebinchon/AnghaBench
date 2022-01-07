; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/rockchip/extr_rk3288_hdmi_analog.c_snd_rk_mc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/rockchip/extr_rk3288_hdmi_analog.c_snd_rk_mc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { i32, i8* }
%struct.platform_device = type { %struct.TYPE_13__ }
%struct.rk_drvdata = type { i32, i32 }
%struct.of_phandle_args = type { i32 }

@snd_soc_card_rk = common dso_local global %struct.snd_soc_card zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"rockchip,hp-det-gpios\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"rockchip,hp-en-gpios\00", align 1
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"hp_en\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"cannot get hp_en gpio\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"rockchip,model\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"SoC parse card name failed %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"rockchip,audio-codec\00", align 1
@rk_dailink = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [52 x i8] c"Property 'rockchip,audio-codec' missing or invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [49 x i8] c"Unable to parse property 'rockchip,audio-codec'\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Unable to get codec_dai_name\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"rockchip,i2s-controller\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"Property 'rockchip,i2s-controller' missing or invalid\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"rockchip,routing\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"Unable to parse 'rockchip,routing' property\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [29 x i8] c"Soc register card failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @snd_rk_mc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rk_mc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.rk_drvdata*, align 8
  %8 = alloca %struct.of_phandle_args, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.snd_soc_card* @snd_soc_card_rk, %struct.snd_soc_card** %5, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %6, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.rk_drvdata* @devm_kzalloc(%struct.TYPE_13__* %14, i32 8, i32 %15)
  store %struct.rk_drvdata* %16, %struct.rk_drvdata** %7, align 8
  %17 = load %struct.rk_drvdata*, %struct.rk_drvdata** %7, align 8
  %18 = icmp ne %struct.rk_drvdata* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %200

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %26 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %25, i32 0, i32 0
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %26, align 8
  %27 = load %struct.device_node*, %struct.device_node** %6, align 8
  %28 = call i8* @of_get_named_gpio(%struct.device_node* %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 0)
  %29 = ptrtoint i8* %28 to i32
  %30 = load %struct.rk_drvdata*, %struct.rk_drvdata** %7, align 8
  %31 = getelementptr inbounds %struct.rk_drvdata, %struct.rk_drvdata* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.rk_drvdata*, %struct.rk_drvdata** %7, align 8
  %33 = getelementptr inbounds %struct.rk_drvdata, %struct.rk_drvdata* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @gpio_is_valid(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %22
  %38 = load %struct.rk_drvdata*, %struct.rk_drvdata** %7, align 8
  %39 = getelementptr inbounds %struct.rk_drvdata, %struct.rk_drvdata* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load %struct.rk_drvdata*, %struct.rk_drvdata** %7, align 8
  %46 = getelementptr inbounds %struct.rk_drvdata, %struct.rk_drvdata* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %2, align 4
  br label %200

48:                                               ; preds = %37, %22
  %49 = load %struct.device_node*, %struct.device_node** %6, align 8
  %50 = call i8* @of_get_named_gpio(%struct.device_node* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.rk_drvdata*, %struct.rk_drvdata** %7, align 8
  %53 = getelementptr inbounds %struct.rk_drvdata, %struct.rk_drvdata* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.rk_drvdata*, %struct.rk_drvdata** %7, align 8
  %55 = getelementptr inbounds %struct.rk_drvdata, %struct.rk_drvdata* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @gpio_is_valid(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %48
  %60 = load %struct.rk_drvdata*, %struct.rk_drvdata** %7, align 8
  %61 = getelementptr inbounds %struct.rk_drvdata, %struct.rk_drvdata* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load %struct.rk_drvdata*, %struct.rk_drvdata** %7, align 8
  %68 = getelementptr inbounds %struct.rk_drvdata, %struct.rk_drvdata* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %2, align 4
  br label %200

70:                                               ; preds = %59, %48
  %71 = load %struct.rk_drvdata*, %struct.rk_drvdata** %7, align 8
  %72 = getelementptr inbounds %struct.rk_drvdata, %struct.rk_drvdata* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @gpio_is_valid(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %70
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = load %struct.rk_drvdata*, %struct.rk_drvdata** %7, align 8
  %80 = getelementptr inbounds %struct.rk_drvdata, %struct.rk_drvdata* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %83 = call i32 @devm_gpio_request_one(%struct.TYPE_13__* %78, i32 %81, i32 %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %76
  %87 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %88 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %87, i32 0, i32 0
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %89, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  br label %200

92:                                               ; preds = %76
  br label %93

93:                                               ; preds = %92, %70
  %94 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %95 = call i32 @snd_soc_of_parse_card_name(%struct.snd_soc_card* %94, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %100 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %99, i32 0, i32 0
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %101, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %4, align 4
  store i32 %104, i32* %2, align 4
  br label %200

105:                                              ; preds = %93
  %106 = load %struct.device_node*, %struct.device_node** %6, align 8
  %107 = call i8* @of_parse_phandle(%struct.device_node* %106, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @rk_dailink, i32 0, i32 2), align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  store i8* %107, i8** %110, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @rk_dailink, i32 0, i32 2), align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %122, label %116

116:                                              ; preds = %105
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %118, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %2, align 4
  br label %200

122:                                              ; preds = %105
  %123 = load %struct.device_node*, %struct.device_node** %6, align 8
  %124 = call i32 @of_parse_phandle_with_fixed_args(%struct.device_node* %123, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 0, i32 0, %struct.of_phandle_args* %8)
  store i32 %124, i32* %4, align 4
  %125 = load i32, i32* %4, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %129, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0))
  %131 = load i32, i32* %4, align 4
  store i32 %131, i32* %2, align 4
  br label %200

132:                                              ; preds = %122
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @rk_dailink, i32 0, i32 2), align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i64 0
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = call i32 @snd_soc_get_dai_name(%struct.of_phandle_args* %8, i32* %135)
  store i32 %136, i32* %4, align 4
  %137 = load i32, i32* %4, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %132
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %141, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  %143 = load i32, i32* %4, align 4
  store i32 %143, i32* %2, align 4
  br label %200

144:                                              ; preds = %132
  %145 = load %struct.device_node*, %struct.device_node** %6, align 8
  %146 = call i8* @of_parse_phandle(%struct.device_node* %145, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 0)
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @rk_dailink, i32 0, i32 0), align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  store i8* %146, i8** %148, align 8
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @rk_dailink, i32 0, i32 0), align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %159, label %153

153:                                              ; preds = %144
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %155, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.11, i64 0, i64 0))
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %2, align 4
  br label %200

159:                                              ; preds = %144
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @rk_dailink, i32 0, i32 0), align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @rk_dailink, i32 0, i32 1), align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  store i8* %162, i8** %164, align 8
  %165 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %166 = call i32 @snd_soc_of_parse_audio_routing(%struct.snd_soc_card* %165, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  store i32 %166, i32* %4, align 4
  %167 = load i32, i32* %4, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %159
  %170 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %171 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %170, i32 0, i32 0
  %172 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %171, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0))
  %173 = load i32, i32* %4, align 4
  store i32 %173, i32* %2, align 4
  br label %200

174:                                              ; preds = %159
  %175 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %176 = load %struct.rk_drvdata*, %struct.rk_drvdata** %7, align 8
  %177 = call i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card* %175, %struct.rk_drvdata* %176)
  %178 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %179 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %178, i32 0, i32 0
  %180 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %181 = call i32 @devm_snd_soc_register_card(%struct.TYPE_13__* %179, %struct.snd_soc_card* %180)
  store i32 %181, i32* %4, align 4
  %182 = load i32, i32* %4, align 4
  %183 = load i32, i32* @EPROBE_DEFER, align 4
  %184 = sub nsw i32 0, %183
  %185 = icmp eq i32 %182, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %174
  %187 = load i32, i32* @EPROBE_DEFER, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %2, align 4
  br label %200

189:                                              ; preds = %174
  %190 = load i32, i32* %4, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %189
  %193 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %194 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %193, i32 0, i32 0
  %195 = load i32, i32* %4, align 4
  %196 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %194, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 %195)
  %197 = load i32, i32* %4, align 4
  store i32 %197, i32* %2, align 4
  br label %200

198:                                              ; preds = %189
  %199 = load i32, i32* %4, align 4
  store i32 %199, i32* %2, align 4
  br label %200

200:                                              ; preds = %198, %192, %186, %169, %153, %139, %127, %116, %98, %86, %66, %44, %19
  %201 = load i32, i32* %2, align 4
  ret i32 %201
}

declare dso_local %struct.rk_drvdata* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i8* @of_get_named_gpio(%struct.device_node*, i8*, i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request_one(%struct.TYPE_13__*, i32, i32, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local i32 @snd_soc_of_parse_card_name(%struct.snd_soc_card*, i8*) #1

declare dso_local i8* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @of_parse_phandle_with_fixed_args(%struct.device_node*, i8*, i32, i32, %struct.of_phandle_args*) #1

declare dso_local i32 @snd_soc_get_dai_name(%struct.of_phandle_args*, i32*) #1

declare dso_local i32 @snd_soc_of_parse_audio_routing(%struct.snd_soc_card*, i8*) #1

declare dso_local i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card*, %struct.rk_drvdata*) #1

declare dso_local i32 @devm_snd_soc_register_card(%struct.TYPE_13__*, %struct.snd_soc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
