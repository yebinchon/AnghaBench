; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra_rt5677.c_tegra_rt5677_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra_rt5677.c_tegra_rt5677_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32* }
%struct.platform_device = type { %struct.TYPE_13__ }
%struct.tegra_rt5677 = type { i32, i32, i32, i32, i32 }

@snd_soc_tegra_rt5677 = common dso_local global %struct.snd_soc_card zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"nvidia,hp-det-gpios\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"nvidia,mic-present-gpios\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"nvidia,hp-en-gpios\00", align 1
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"hp_en\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"cannot get hp_en gpio\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"nvidia,dmic-clk-en-gpios\00", align 1
@GPIOF_OUT_INIT_HIGH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"dmic_clk_en\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"cannot get dmic_clk_en gpio\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"nvidia,model\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"nvidia,audio-routing\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"nvidia,audio-codec\00", align 1
@tegra_rt5677_dai = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.11 = private unnamed_addr constant [50 x i8] c"Property 'nvidia,audio-codec' missing or invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [22 x i8] c"nvidia,i2s-controller\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"Property 'nvidia,i2s-controller' missing or invalid\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"snd_soc_register_card failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_rt5677_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_rt5677_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca %struct.tegra_rt5677*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  store %struct.snd_soc_card* @snd_soc_tegra_rt5677, %struct.snd_soc_card** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.tegra_rt5677* @devm_kzalloc(%struct.TYPE_13__* %13, i32 20, i32 %14)
  store %struct.tegra_rt5677* %15, %struct.tegra_rt5677** %6, align 8
  %16 = load %struct.tegra_rt5677*, %struct.tegra_rt5677** %6, align 8
  %17 = icmp ne %struct.tegra_rt5677* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %225

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %25 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %24, i32 0, i32 0
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %25, align 8
  %26 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %27 = load %struct.tegra_rt5677*, %struct.tegra_rt5677** %6, align 8
  %28 = call i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card* %26, %struct.tegra_rt5677* %27)
  %29 = load %struct.device_node*, %struct.device_node** %4, align 8
  %30 = call i8* @of_get_named_gpio(%struct.device_node* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 0)
  %31 = ptrtoint i8* %30 to i32
  %32 = load %struct.tegra_rt5677*, %struct.tegra_rt5677** %6, align 8
  %33 = getelementptr inbounds %struct.tegra_rt5677, %struct.tegra_rt5677* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.tegra_rt5677*, %struct.tegra_rt5677** %6, align 8
  %35 = getelementptr inbounds %struct.tegra_rt5677, %struct.tegra_rt5677* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @EPROBE_DEFER, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %21
  %41 = load i32, i32* @EPROBE_DEFER, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %225

43:                                               ; preds = %21
  %44 = load %struct.device_node*, %struct.device_node** %4, align 8
  %45 = call i8* @of_get_named_gpio(%struct.device_node* %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.tegra_rt5677*, %struct.tegra_rt5677** %6, align 8
  %48 = getelementptr inbounds %struct.tegra_rt5677, %struct.tegra_rt5677* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.tegra_rt5677*, %struct.tegra_rt5677** %6, align 8
  %50 = getelementptr inbounds %struct.tegra_rt5677, %struct.tegra_rt5677* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @EPROBE_DEFER, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %43
  %56 = load i32, i32* @EPROBE_DEFER, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %225

58:                                               ; preds = %43
  %59 = load %struct.device_node*, %struct.device_node** %4, align 8
  %60 = call i8* @of_get_named_gpio(%struct.device_node* %59, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %61 = ptrtoint i8* %60 to i32
  %62 = load %struct.tegra_rt5677*, %struct.tegra_rt5677** %6, align 8
  %63 = getelementptr inbounds %struct.tegra_rt5677, %struct.tegra_rt5677* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.tegra_rt5677*, %struct.tegra_rt5677** %6, align 8
  %65 = getelementptr inbounds %struct.tegra_rt5677, %struct.tegra_rt5677* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @EPROBE_DEFER, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %58
  %71 = load i32, i32* @EPROBE_DEFER, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %225

73:                                               ; preds = %58
  %74 = load %struct.tegra_rt5677*, %struct.tegra_rt5677** %6, align 8
  %75 = getelementptr inbounds %struct.tegra_rt5677, %struct.tegra_rt5677* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @gpio_is_valid(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %73
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = load %struct.tegra_rt5677*, %struct.tegra_rt5677** %6, align 8
  %83 = getelementptr inbounds %struct.tegra_rt5677, %struct.tegra_rt5677* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %86 = call i32 @devm_gpio_request_one(%struct.TYPE_13__* %81, i32 %84, i32 %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %79
  %90 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %91 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %90, i32 0, i32 0
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %2, align 4
  br label %225

95:                                               ; preds = %79
  br label %96

96:                                               ; preds = %95, %73
  %97 = load %struct.device_node*, %struct.device_node** %4, align 8
  %98 = call i8* @of_get_named_gpio(%struct.device_node* %97, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %99 = ptrtoint i8* %98 to i32
  %100 = load %struct.tegra_rt5677*, %struct.tegra_rt5677** %6, align 8
  %101 = getelementptr inbounds %struct.tegra_rt5677, %struct.tegra_rt5677* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  %102 = load %struct.tegra_rt5677*, %struct.tegra_rt5677** %6, align 8
  %103 = getelementptr inbounds %struct.tegra_rt5677, %struct.tegra_rt5677* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @EPROBE_DEFER, align 4
  %106 = sub nsw i32 0, %105
  %107 = icmp eq i32 %104, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %96
  %109 = load i32, i32* @EPROBE_DEFER, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %2, align 4
  br label %225

111:                                              ; preds = %96
  %112 = load %struct.tegra_rt5677*, %struct.tegra_rt5677** %6, align 8
  %113 = getelementptr inbounds %struct.tegra_rt5677, %struct.tegra_rt5677* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @gpio_is_valid(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %134

117:                                              ; preds = %111
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = load %struct.tegra_rt5677*, %struct.tegra_rt5677** %6, align 8
  %121 = getelementptr inbounds %struct.tegra_rt5677, %struct.tegra_rt5677* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @GPIOF_OUT_INIT_HIGH, align 4
  %124 = call i32 @devm_gpio_request_one(%struct.TYPE_13__* %119, i32 %122, i32 %123, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %117
  %128 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %129 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %128, i32 0, i32 0
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %129, align 8
  %131 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %130, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %132 = load i32, i32* %7, align 4
  store i32 %132, i32* %2, align 4
  br label %225

133:                                              ; preds = %117
  br label %134

134:                                              ; preds = %133, %111
  %135 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %136 = call i32 @snd_soc_of_parse_card_name(%struct.snd_soc_card* %135, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  br label %223

140:                                              ; preds = %134
  %141 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %142 = call i32 @snd_soc_of_parse_audio_routing(%struct.snd_soc_card* %141, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %223

146:                                              ; preds = %140
  %147 = load %struct.device_node*, %struct.device_node** %4, align 8
  %148 = call i8* @of_parse_phandle(%struct.device_node* %147, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 0)
  %149 = bitcast i8* %148 to i32*
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tegra_rt5677_dai, i32 0, i32 0), align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  store i32* %149, i32** %151, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tegra_rt5677_dai, i32 0, i32 0), align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %162, label %156

156:                                              ; preds = %146
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %157, i32 0, i32 0
  %159 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %158, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0))
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %7, align 4
  br label %223

162:                                              ; preds = %146
  %163 = load %struct.device_node*, %struct.device_node** %4, align 8
  %164 = call i8* @of_parse_phandle(%struct.device_node* %163, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32 0)
  %165 = bitcast i8* %164 to i32*
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tegra_rt5677_dai, i32 0, i32 2), align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  store i32* %165, i32** %167, align 8
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tegra_rt5677_dai, i32 0, i32 2), align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %178, label %172

172:                                              ; preds = %162
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %173, i32 0, i32 0
  %175 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %174, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0))
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %7, align 4
  br label %216

178:                                              ; preds = %162
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tegra_rt5677_dai, i32 0, i32 2), align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tegra_rt5677_dai, i32 0, i32 1), align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 0
  store i32* %181, i32** %183, align 8
  %184 = load %struct.tegra_rt5677*, %struct.tegra_rt5677** %6, align 8
  %185 = getelementptr inbounds %struct.tegra_rt5677, %struct.tegra_rt5677* %184, i32 0, i32 4
  %186 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %187 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %186, i32 0, i32 0
  %188 = call i32 @tegra_asoc_utils_init(i32* %185, %struct.TYPE_13__* %187)
  store i32 %188, i32* %7, align 4
  %189 = load i32, i32* %7, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %178
  br label %207

192:                                              ; preds = %178
  %193 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %194 = call i32 @snd_soc_register_card(%struct.snd_soc_card* %193)
  store i32 %194, i32* %7, align 4
  %195 = load i32, i32* %7, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %192
  %198 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %199 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %198, i32 0, i32 0
  %200 = load i32, i32* %7, align 4
  %201 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %199, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0), i32 %200)
  br label %203

202:                                              ; preds = %192
  store i32 0, i32* %2, align 4
  br label %225

203:                                              ; preds = %197
  %204 = load %struct.tegra_rt5677*, %struct.tegra_rt5677** %6, align 8
  %205 = getelementptr inbounds %struct.tegra_rt5677, %struct.tegra_rt5677* %204, i32 0, i32 4
  %206 = call i32 @tegra_asoc_utils_fini(i32* %205)
  br label %207

207:                                              ; preds = %203, %191
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tegra_rt5677_dai, i32 0, i32 2), align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = call i32 @of_node_put(i32* %210)
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tegra_rt5677_dai, i32 0, i32 2), align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  store i32* null, i32** %213, align 8
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tegra_rt5677_dai, i32 0, i32 1), align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  store i32* null, i32** %215, align 8
  br label %216

216:                                              ; preds = %207, %172
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tegra_rt5677_dai, i32 0, i32 0), align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = call i32 @of_node_put(i32* %219)
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tegra_rt5677_dai, i32 0, i32 0), align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 0
  store i32* null, i32** %222, align 8
  br label %223

223:                                              ; preds = %216, %156, %145, %139
  %224 = load i32, i32* %7, align 4
  store i32 %224, i32* %2, align 4
  br label %225

225:                                              ; preds = %223, %202, %127, %108, %89, %70, %55, %40, %18
  %226 = load i32, i32* %2, align 4
  ret i32 %226
}

declare dso_local %struct.tegra_rt5677* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card*, %struct.tegra_rt5677*) #1

declare dso_local i8* @of_get_named_gpio(%struct.device_node*, i8*, i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request_one(%struct.TYPE_13__*, i32, i32, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local i32 @snd_soc_of_parse_card_name(%struct.snd_soc_card*, i8*) #1

declare dso_local i32 @snd_soc_of_parse_audio_routing(%struct.snd_soc_card*, i8*) #1

declare dso_local i8* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @tegra_asoc_utils_init(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @snd_soc_register_card(%struct.snd_soc_card*) #1

declare dso_local i32 @tegra_asoc_utils_fini(i32*) #1

declare dso_local i32 @of_node_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
