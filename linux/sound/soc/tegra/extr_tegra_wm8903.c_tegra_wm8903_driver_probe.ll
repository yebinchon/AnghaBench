; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra_wm8903.c_tegra_wm8903_driver_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra_wm8903.c_tegra_wm8903_driver_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { i8* }
%struct.platform_device = type { %struct.TYPE_13__ }
%struct.tegra_wm8903 = type { i32, i32, i32, i32, i32, i32 }

@snd_soc_tegra_wm8903 = common dso_local global %struct.snd_soc_card zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"nvidia,spkr-en-gpios\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"spkr_en\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"cannot get spkr_en gpio\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"nvidia,hp-mute-gpios\00", align 1
@GPIOF_OUT_INIT_HIGH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"hp_mute\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"cannot get hp_mute gpio\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"nvidia,hp-det-gpios\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"nvidia,int-mic-en-gpios\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"int_mic_en\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"cannot get int_mic_en gpio\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"nvidia,ext-mic-en-gpios\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"ext_mic_en\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"cannot get ext_mic_en gpio\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"nvidia,model\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"nvidia,audio-routing\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"nvidia,audio-codec\00", align 1
@tegra_wm8903_dai = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.16 = private unnamed_addr constant [50 x i8] c"Property 'nvidia,audio-codec' missing or invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [22 x i8] c"nvidia,i2s-controller\00", align 1
@.str.18 = private unnamed_addr constant [53 x i8] c"Property 'nvidia,i2s-controller' missing or invalid\0A\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"snd_soc_register_card failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_wm8903_driver_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_wm8903_driver_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca %struct.tegra_wm8903*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  store %struct.snd_soc_card* @snd_soc_tegra_wm8903, %struct.snd_soc_card** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.tegra_wm8903* @devm_kzalloc(%struct.TYPE_13__* %13, i32 24, i32 %14)
  store %struct.tegra_wm8903* %15, %struct.tegra_wm8903** %6, align 8
  %16 = load %struct.tegra_wm8903*, %struct.tegra_wm8903** %6, align 8
  %17 = icmp ne %struct.tegra_wm8903* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %268

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %25 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %24, i32 0, i32 0
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %25, align 8
  %26 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %27 = load %struct.tegra_wm8903*, %struct.tegra_wm8903** %6, align 8
  %28 = call i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card* %26, %struct.tegra_wm8903* %27)
  %29 = load %struct.device_node*, %struct.device_node** %4, align 8
  %30 = call i8* @of_get_named_gpio(%struct.device_node* %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 0)
  %31 = ptrtoint i8* %30 to i32
  %32 = load %struct.tegra_wm8903*, %struct.tegra_wm8903** %6, align 8
  %33 = getelementptr inbounds %struct.tegra_wm8903, %struct.tegra_wm8903* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.tegra_wm8903*, %struct.tegra_wm8903** %6, align 8
  %35 = getelementptr inbounds %struct.tegra_wm8903, %struct.tegra_wm8903* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @EPROBE_DEFER, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %21
  %41 = load i32, i32* @EPROBE_DEFER, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %268

43:                                               ; preds = %21
  %44 = load %struct.tegra_wm8903*, %struct.tegra_wm8903** %6, align 8
  %45 = getelementptr inbounds %struct.tegra_wm8903, %struct.tegra_wm8903* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @gpio_is_valid(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %43
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load %struct.tegra_wm8903*, %struct.tegra_wm8903** %6, align 8
  %53 = getelementptr inbounds %struct.tegra_wm8903, %struct.tegra_wm8903* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %56 = call i32 @devm_gpio_request_one(%struct.TYPE_13__* %51, i32 %54, i32 %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %49
  %60 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %61 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %60, i32 0, i32 0
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %2, align 4
  br label %268

65:                                               ; preds = %49
  br label %66

66:                                               ; preds = %65, %43
  %67 = load %struct.device_node*, %struct.device_node** %4, align 8
  %68 = call i8* @of_get_named_gpio(%struct.device_node* %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %69 = ptrtoint i8* %68 to i32
  %70 = load %struct.tegra_wm8903*, %struct.tegra_wm8903** %6, align 8
  %71 = getelementptr inbounds %struct.tegra_wm8903, %struct.tegra_wm8903* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.tegra_wm8903*, %struct.tegra_wm8903** %6, align 8
  %73 = getelementptr inbounds %struct.tegra_wm8903, %struct.tegra_wm8903* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @EPROBE_DEFER, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %66
  %79 = load i32, i32* @EPROBE_DEFER, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %268

81:                                               ; preds = %66
  %82 = load %struct.tegra_wm8903*, %struct.tegra_wm8903** %6, align 8
  %83 = getelementptr inbounds %struct.tegra_wm8903, %struct.tegra_wm8903* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @gpio_is_valid(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %104

87:                                               ; preds = %81
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = load %struct.tegra_wm8903*, %struct.tegra_wm8903** %6, align 8
  %91 = getelementptr inbounds %struct.tegra_wm8903, %struct.tegra_wm8903* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @GPIOF_OUT_INIT_HIGH, align 4
  %94 = call i32 @devm_gpio_request_one(%struct.TYPE_13__* %89, i32 %92, i32 %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %87
  %98 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %99 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %98, i32 0, i32 0
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %99, align 8
  %101 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %2, align 4
  br label %268

103:                                              ; preds = %87
  br label %104

104:                                              ; preds = %103, %81
  %105 = load %struct.device_node*, %struct.device_node** %4, align 8
  %106 = call i8* @of_get_named_gpio(%struct.device_node* %105, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %107 = ptrtoint i8* %106 to i32
  %108 = load %struct.tegra_wm8903*, %struct.tegra_wm8903** %6, align 8
  %109 = getelementptr inbounds %struct.tegra_wm8903, %struct.tegra_wm8903* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = load %struct.tegra_wm8903*, %struct.tegra_wm8903** %6, align 8
  %111 = getelementptr inbounds %struct.tegra_wm8903, %struct.tegra_wm8903* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @EPROBE_DEFER, align 4
  %114 = sub nsw i32 0, %113
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %104
  %117 = load i32, i32* @EPROBE_DEFER, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %268

119:                                              ; preds = %104
  %120 = load %struct.device_node*, %struct.device_node** %4, align 8
  %121 = call i8* @of_get_named_gpio(%struct.device_node* %120, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 0)
  %122 = ptrtoint i8* %121 to i32
  %123 = load %struct.tegra_wm8903*, %struct.tegra_wm8903** %6, align 8
  %124 = getelementptr inbounds %struct.tegra_wm8903, %struct.tegra_wm8903* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  %125 = load %struct.tegra_wm8903*, %struct.tegra_wm8903** %6, align 8
  %126 = getelementptr inbounds %struct.tegra_wm8903, %struct.tegra_wm8903* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @EPROBE_DEFER, align 4
  %129 = sub nsw i32 0, %128
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %119
  %132 = load i32, i32* @EPROBE_DEFER, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %2, align 4
  br label %268

134:                                              ; preds = %119
  %135 = load %struct.tegra_wm8903*, %struct.tegra_wm8903** %6, align 8
  %136 = getelementptr inbounds %struct.tegra_wm8903, %struct.tegra_wm8903* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @gpio_is_valid(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %157

140:                                              ; preds = %134
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 0
  %143 = load %struct.tegra_wm8903*, %struct.tegra_wm8903** %6, align 8
  %144 = getelementptr inbounds %struct.tegra_wm8903, %struct.tegra_wm8903* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %147 = call i32 @devm_gpio_request_one(%struct.TYPE_13__* %142, i32 %145, i32 %146, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %140
  %151 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %152 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %151, i32 0, i32 0
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %152, align 8
  %154 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %153, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %155 = load i32, i32* %7, align 4
  store i32 %155, i32* %2, align 4
  br label %268

156:                                              ; preds = %140
  br label %157

157:                                              ; preds = %156, %134
  %158 = load %struct.device_node*, %struct.device_node** %4, align 8
  %159 = call i8* @of_get_named_gpio(%struct.device_node* %158, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 0)
  %160 = ptrtoint i8* %159 to i32
  %161 = load %struct.tegra_wm8903*, %struct.tegra_wm8903** %6, align 8
  %162 = getelementptr inbounds %struct.tegra_wm8903, %struct.tegra_wm8903* %161, i32 0, i32 4
  store i32 %160, i32* %162, align 4
  %163 = load %struct.tegra_wm8903*, %struct.tegra_wm8903** %6, align 8
  %164 = getelementptr inbounds %struct.tegra_wm8903, %struct.tegra_wm8903* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @EPROBE_DEFER, align 4
  %167 = sub nsw i32 0, %166
  %168 = icmp eq i32 %165, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %157
  %170 = load i32, i32* @EPROBE_DEFER, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %2, align 4
  br label %268

172:                                              ; preds = %157
  %173 = load %struct.tegra_wm8903*, %struct.tegra_wm8903** %6, align 8
  %174 = getelementptr inbounds %struct.tegra_wm8903, %struct.tegra_wm8903* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @gpio_is_valid(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %195

178:                                              ; preds = %172
  %179 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %180 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %179, i32 0, i32 0
  %181 = load %struct.tegra_wm8903*, %struct.tegra_wm8903** %6, align 8
  %182 = getelementptr inbounds %struct.tegra_wm8903, %struct.tegra_wm8903* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %185 = call i32 @devm_gpio_request_one(%struct.TYPE_13__* %180, i32 %183, i32 %184, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  store i32 %185, i32* %7, align 4
  %186 = load i32, i32* %7, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %178
  %189 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %190 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %189, i32 0, i32 0
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %190, align 8
  %192 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %191, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  %193 = load i32, i32* %7, align 4
  store i32 %193, i32* %2, align 4
  br label %268

194:                                              ; preds = %178
  br label %195

195:                                              ; preds = %194, %172
  %196 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %197 = call i32 @snd_soc_of_parse_card_name(%struct.snd_soc_card* %196, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  store i32 %197, i32* %7, align 4
  %198 = load i32, i32* %7, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  br label %266

201:                                              ; preds = %195
  %202 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %203 = call i32 @snd_soc_of_parse_audio_routing(%struct.snd_soc_card* %202, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  store i32 %203, i32* %7, align 4
  %204 = load i32, i32* %7, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  br label %266

207:                                              ; preds = %201
  %208 = load %struct.device_node*, %struct.device_node** %4, align 8
  %209 = call i8* @of_parse_phandle(%struct.device_node* %208, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32 0)
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tegra_wm8903_dai, i32 0, i32 2), align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  store i8* %209, i8** %211, align 8
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tegra_wm8903_dai, i32 0, i32 2), align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  %214 = load i8*, i8** %213, align 8
  %215 = icmp ne i8* %214, null
  br i1 %215, label %222, label %216

216:                                              ; preds = %207
  %217 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %218 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %217, i32 0, i32 0
  %219 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %218, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i64 0, i64 0))
  %220 = load i32, i32* @EINVAL, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %7, align 4
  br label %266

222:                                              ; preds = %207
  %223 = load %struct.device_node*, %struct.device_node** %4, align 8
  %224 = call i8* @of_parse_phandle(%struct.device_node* %223, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i32 0)
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tegra_wm8903_dai, i32 0, i32 0), align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 0
  store i8* %224, i8** %226, align 8
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tegra_wm8903_dai, i32 0, i32 0), align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 0
  %229 = load i8*, i8** %228, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %237, label %231

231:                                              ; preds = %222
  %232 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %233 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %232, i32 0, i32 0
  %234 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %233, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.18, i64 0, i64 0))
  %235 = load i32, i32* @EINVAL, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %7, align 4
  br label %266

237:                                              ; preds = %222
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tegra_wm8903_dai, i32 0, i32 0), align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 0
  %240 = load i8*, i8** %239, align 8
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tegra_wm8903_dai, i32 0, i32 1), align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 0
  store i8* %240, i8** %242, align 8
  %243 = load %struct.tegra_wm8903*, %struct.tegra_wm8903** %6, align 8
  %244 = getelementptr inbounds %struct.tegra_wm8903, %struct.tegra_wm8903* %243, i32 0, i32 5
  %245 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %246 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %245, i32 0, i32 0
  %247 = call i32 @tegra_asoc_utils_init(i32* %244, %struct.TYPE_13__* %246)
  store i32 %247, i32* %7, align 4
  %248 = load i32, i32* %7, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %237
  br label %266

251:                                              ; preds = %237
  %252 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %253 = call i32 @snd_soc_register_card(%struct.snd_soc_card* %252)
  store i32 %253, i32* %7, align 4
  %254 = load i32, i32* %7, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %251
  %257 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %258 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %257, i32 0, i32 0
  %259 = load i32, i32* %7, align 4
  %260 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %258, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0), i32 %259)
  br label %262

261:                                              ; preds = %251
  store i32 0, i32* %2, align 4
  br label %268

262:                                              ; preds = %256
  %263 = load %struct.tegra_wm8903*, %struct.tegra_wm8903** %6, align 8
  %264 = getelementptr inbounds %struct.tegra_wm8903, %struct.tegra_wm8903* %263, i32 0, i32 5
  %265 = call i32 @tegra_asoc_utils_fini(i32* %264)
  br label %266

266:                                              ; preds = %262, %250, %231, %216, %206, %200
  %267 = load i32, i32* %7, align 4
  store i32 %267, i32* %2, align 4
  br label %268

268:                                              ; preds = %266, %261, %188, %169, %150, %131, %116, %97, %78, %59, %40, %18
  %269 = load i32, i32* %2, align 4
  ret i32 %269
}

declare dso_local %struct.tegra_wm8903* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card*, %struct.tegra_wm8903*) #1

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

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
