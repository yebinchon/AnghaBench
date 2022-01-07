; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_odroid.c_odroid_audio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_odroid.c_odroid_audio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.odroid_priv = type { i8*, i8*, i32, %struct.snd_soc_card }
%struct.snd_soc_card = type { i32, %struct.snd_soc_dai_link*, i8*, i8*, i8*, i32, %struct.device* }
%struct.snd_soc_dai_link = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.of_phandle_args = type { %struct.device_node* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"samsung,audio-widgets\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"samsung,audio-routing\00", align 1
@odroid_card_dais = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"codec\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"sound-dai\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"#sound-dai-cells\00", align 1
@odroid_dapm_routes = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [36 x i8] c"sound-dai property parse error: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"i2s_opclk1\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"iis\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"snd_soc_register_card() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @odroid_audio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @odroid_audio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.odroid_priv*, align 8
  %9 = alloca %struct.snd_soc_card*, align 8
  %10 = alloca %struct.snd_soc_dai_link*, align 8
  %11 = alloca %struct.snd_soc_dai_link*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.of_phandle_args, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %4, align 8
  store %struct.device_node* null, %struct.device_node** %5, align 8
  %18 = bitcast %struct.of_phandle_args* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 8, i1 false)
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.odroid_priv* @devm_kzalloc(%struct.device* %19, i32 80, i32 %20)
  store %struct.odroid_priv* %21, %struct.odroid_priv** %8, align 8
  %22 = load %struct.odroid_priv*, %struct.odroid_priv** %8, align 8
  %23 = icmp ne %struct.odroid_priv* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %264

27:                                               ; preds = %1
  %28 = load %struct.odroid_priv*, %struct.odroid_priv** %8, align 8
  %29 = getelementptr inbounds %struct.odroid_priv, %struct.odroid_priv* %28, i32 0, i32 3
  store %struct.snd_soc_card* %29, %struct.snd_soc_card** %9, align 8
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %32 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %31, i32 0, i32 6
  store %struct.device* %30, %struct.device** %32, align 8
  %33 = load i32, i32* @THIS_MODULE, align 4
  %34 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %35 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 8
  %36 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %37 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.odroid_priv*, %struct.odroid_priv** %8, align 8
  %39 = getelementptr inbounds %struct.odroid_priv, %struct.odroid_priv* %38, i32 0, i32 2
  %40 = call i32 @spin_lock_init(i32* %39)
  %41 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %42 = load %struct.odroid_priv*, %struct.odroid_priv** %8, align 8
  %43 = call i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card* %41, %struct.odroid_priv* %42)
  %44 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %45 = call i32 @snd_soc_of_parse_card_name(%struct.snd_soc_card* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %27
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %2, align 4
  br label %264

50:                                               ; preds = %27
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = getelementptr inbounds %struct.device, %struct.device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @of_property_read_bool(i32 %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %58 = call i32 @snd_soc_of_parse_audio_simple_widgets(%struct.snd_soc_card* %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %2, align 4
  br label %264

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %50
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = getelementptr inbounds %struct.device, %struct.device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @of_property_read_bool(i32 %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %64
  %71 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %72 = call i32 @snd_soc_of_parse_audio_routing(%struct.snd_soc_card* %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %2, align 4
  br label %264

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %64
  %79 = load i8*, i8** @odroid_card_dais, align 8
  %80 = bitcast i8* %79 to %struct.snd_soc_dai_link*
  %81 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %82 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %81, i32 0, i32 1
  store %struct.snd_soc_dai_link* %80, %struct.snd_soc_dai_link** %82, align 8
  %83 = load i8*, i8** @odroid_card_dais, align 8
  %84 = call i8* @ARRAY_SIZE(i8* %83)
  %85 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %86 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load %struct.device*, %struct.device** %4, align 8
  %88 = getelementptr inbounds %struct.device, %struct.device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call %struct.device_node* @of_get_child_by_name(i32 %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store %struct.device_node* %90, %struct.device_node** %6, align 8
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = getelementptr inbounds %struct.device, %struct.device* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call %struct.device_node* @of_get_child_by_name(i32 %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store %struct.device_node* %94, %struct.device_node** %7, align 8
  %95 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %96 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %95, i32 0, i32 1
  %97 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %96, align 8
  store %struct.snd_soc_dai_link* %97, %struct.snd_soc_dai_link** %10, align 8
  %98 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %99 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %98, i32 0, i32 1
  %100 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %99, align 8
  %101 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %100, i64 1
  store %struct.snd_soc_dai_link* %101, %struct.snd_soc_dai_link** %11, align 8
  %102 = load %struct.device_node*, %struct.device_node** %6, align 8
  %103 = call i32 @of_count_phandle_with_args(%struct.device_node* %102, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %118

106:                                              ; preds = %78
  %107 = load i8*, i8** @odroid_dapm_routes, align 8
  %108 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %109 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %108, i32 0, i32 4
  store i8* %107, i8** %109, align 8
  %110 = load i8*, i8** @odroid_dapm_routes, align 8
  %111 = call i8* @ARRAY_SIZE(i8* %110)
  %112 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %113 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %112, i32 0, i32 3
  store i8* %111, i8** %113, align 8
  %114 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %115 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 -1
  store i8* %117, i8** %115, align 8
  br label %118

118:                                              ; preds = %106, %78
  store i32 0, i32* %14, align 4
  br label %119

119:                                              ; preds = %153, %118
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %158

123:                                              ; preds = %119
  %124 = load %struct.device_node*, %struct.device_node** %6, align 8
  %125 = load i32, i32* %14, align 4
  %126 = call i32 @of_parse_phandle_with_args(%struct.device_node* %124, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %125, %struct.of_phandle_args* %15)
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %13, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  br label %158

130:                                              ; preds = %123
  %131 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %15, i32 0, i32 0
  %132 = load %struct.device_node*, %struct.device_node** %131, align 8
  %133 = icmp ne %struct.device_node* %132, null
  br i1 %133, label %140, label %134

134:                                              ; preds = %130
  %135 = load %struct.device*, %struct.device** %4, align 8
  %136 = load i32, i32* %13, align 4
  %137 = call i32 @dev_err(%struct.device* %135, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %13, align 4
  br label %158

140:                                              ; preds = %130
  %141 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %10, align 8
  %142 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %141, i32 0, i32 2
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = call i32 @snd_soc_get_dai_name(%struct.of_phandle_args* %15, i32* %144)
  store i32 %145, i32* %13, align 4
  %146 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %15, i32 0, i32 0
  %147 = load %struct.device_node*, %struct.device_node** %146, align 8
  %148 = call i32 @of_node_put(%struct.device_node* %147)
  %149 = load i32, i32* %13, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %140
  br label %158

152:                                              ; preds = %140
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %14, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %14, align 4
  %156 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %10, align 8
  %157 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %156, i64 2
  store %struct.snd_soc_dai_link* %157, %struct.snd_soc_dai_link** %10, align 8
  br label %119

158:                                              ; preds = %151, %134, %129, %119
  %159 = load i32, i32* %13, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %158
  %162 = load %struct.device_node*, %struct.device_node** %6, align 8
  %163 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %162, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 0)
  store %struct.device_node* %163, %struct.device_node** %5, align 8
  %164 = load %struct.device_node*, %struct.device_node** %5, align 8
  %165 = icmp ne %struct.device_node* %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %161
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %13, align 4
  br label %169

169:                                              ; preds = %166, %161
  br label %170

170:                                              ; preds = %169, %158
  %171 = load %struct.device_node*, %struct.device_node** %6, align 8
  %172 = call i32 @of_node_put(%struct.device_node* %171)
  %173 = load i32, i32* %13, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %170
  br label %260

176:                                              ; preds = %170
  %177 = load %struct.device*, %struct.device** %4, align 8
  %178 = load %struct.device_node*, %struct.device_node** %7, align 8
  %179 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %11, align 8
  %180 = call i32 @snd_soc_of_get_dai_link_codecs(%struct.device* %177, %struct.device_node* %178, %struct.snd_soc_dai_link* %179)
  store i32 %180, i32* %13, align 4
  %181 = load i32, i32* %13, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %176
  br label %255

184:                                              ; preds = %176
  %185 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %11, align 8
  %186 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp sgt i32 %187, 1
  br i1 %188, label %189, label %200

189:                                              ; preds = %184
  %190 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %191 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %190, i32 0, i32 1
  %192 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %191, align 8
  %193 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %192, i64 0
  %194 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %193, i32 0, i32 1
  store i32 1, i32* %194, align 4
  %195 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %196 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %195, i32 0, i32 1
  %197 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %196, align 8
  %198 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %197, i64 1
  %199 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %198, i32 0, i32 1
  store i32 1, i32* %199, align 4
  br label %200

200:                                              ; preds = %189, %184
  %201 = load %struct.device_node*, %struct.device_node** %5, align 8
  %202 = call i8* @of_clk_get_by_name(%struct.device_node* %201, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %203 = load %struct.odroid_priv*, %struct.odroid_priv** %8, align 8
  %204 = getelementptr inbounds %struct.odroid_priv, %struct.odroid_priv* %203, i32 0, i32 0
  store i8* %202, i8** %204, align 8
  %205 = load %struct.odroid_priv*, %struct.odroid_priv** %8, align 8
  %206 = getelementptr inbounds %struct.odroid_priv, %struct.odroid_priv* %205, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  %208 = call i64 @IS_ERR(i8* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %200
  %211 = load %struct.odroid_priv*, %struct.odroid_priv** %8, align 8
  %212 = getelementptr inbounds %struct.odroid_priv, %struct.odroid_priv* %211, i32 0, i32 0
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 @PTR_ERR(i8* %213)
  store i32 %214, i32* %13, align 4
  br label %255

215:                                              ; preds = %200
  %216 = load %struct.device_node*, %struct.device_node** %5, align 8
  %217 = call i8* @of_clk_get_by_name(%struct.device_node* %216, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %218 = load %struct.odroid_priv*, %struct.odroid_priv** %8, align 8
  %219 = getelementptr inbounds %struct.odroid_priv, %struct.odroid_priv* %218, i32 0, i32 1
  store i8* %217, i8** %219, align 8
  %220 = load %struct.odroid_priv*, %struct.odroid_priv** %8, align 8
  %221 = getelementptr inbounds %struct.odroid_priv, %struct.odroid_priv* %220, i32 0, i32 1
  %222 = load i8*, i8** %221, align 8
  %223 = call i64 @IS_ERR(i8* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %215
  %226 = load %struct.odroid_priv*, %struct.odroid_priv** %8, align 8
  %227 = getelementptr inbounds %struct.odroid_priv, %struct.odroid_priv* %226, i32 0, i32 1
  %228 = load i8*, i8** %227, align 8
  %229 = call i32 @PTR_ERR(i8* %228)
  store i32 %229, i32* %13, align 4
  br label %250

230:                                              ; preds = %215
  %231 = load %struct.device*, %struct.device** %4, align 8
  %232 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %233 = call i32 @devm_snd_soc_register_card(%struct.device* %231, %struct.snd_soc_card* %232)
  store i32 %233, i32* %13, align 4
  %234 = load i32, i32* %13, align 4
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %230
  %237 = load %struct.device*, %struct.device** %4, align 8
  %238 = load i32, i32* %13, align 4
  %239 = call i32 @dev_err(%struct.device* %237, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %238)
  br label %245

240:                                              ; preds = %230
  %241 = load %struct.device_node*, %struct.device_node** %5, align 8
  %242 = call i32 @of_node_put(%struct.device_node* %241)
  %243 = load %struct.device_node*, %struct.device_node** %7, align 8
  %244 = call i32 @of_node_put(%struct.device_node* %243)
  store i32 0, i32* %2, align 4
  br label %264

245:                                              ; preds = %236
  %246 = load %struct.odroid_priv*, %struct.odroid_priv** %8, align 8
  %247 = getelementptr inbounds %struct.odroid_priv, %struct.odroid_priv* %246, i32 0, i32 1
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 @clk_put(i8* %248)
  br label %250

250:                                              ; preds = %245, %225
  %251 = load %struct.odroid_priv*, %struct.odroid_priv** %8, align 8
  %252 = getelementptr inbounds %struct.odroid_priv, %struct.odroid_priv* %251, i32 0, i32 0
  %253 = load i8*, i8** %252, align 8
  %254 = call i32 @clk_put(i8* %253)
  br label %255

255:                                              ; preds = %250, %210, %183
  %256 = load %struct.device_node*, %struct.device_node** %5, align 8
  %257 = call i32 @of_node_put(%struct.device_node* %256)
  %258 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %11, align 8
  %259 = call i32 @snd_soc_of_put_dai_link_codecs(%struct.snd_soc_dai_link* %258)
  br label %260

260:                                              ; preds = %255, %175
  %261 = load %struct.device_node*, %struct.device_node** %7, align 8
  %262 = call i32 @of_node_put(%struct.device_node* %261)
  %263 = load i32, i32* %13, align 4
  store i32 %263, i32* %2, align 4
  br label %264

264:                                              ; preds = %260, %240, %75, %61, %48, %24
  %265 = load i32, i32* %2, align 4
  ret i32 %265
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.odroid_priv* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card*, %struct.odroid_priv*) #2

declare dso_local i32 @snd_soc_of_parse_card_name(%struct.snd_soc_card*, i8*) #2

declare dso_local i64 @of_property_read_bool(i32, i8*) #2

declare dso_local i32 @snd_soc_of_parse_audio_simple_widgets(%struct.snd_soc_card*, i8*) #2

declare dso_local i32 @snd_soc_of_parse_audio_routing(%struct.snd_soc_card*, i8*) #2

declare dso_local i8* @ARRAY_SIZE(i8*) #2

declare dso_local %struct.device_node* @of_get_child_by_name(i32, i8*) #2

declare dso_local i32 @of_count_phandle_with_args(%struct.device_node*, i8*, i8*) #2

declare dso_local i32 @of_parse_phandle_with_args(%struct.device_node*, i8*, i8*, i32, %struct.of_phandle_args*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #2

declare dso_local i32 @snd_soc_get_dai_name(%struct.of_phandle_args*, i32*) #2

declare dso_local i32 @of_node_put(%struct.device_node*) #2

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #2

declare dso_local i32 @snd_soc_of_get_dai_link_codecs(%struct.device*, %struct.device_node*, %struct.snd_soc_dai_link*) #2

declare dso_local i8* @of_clk_get_by_name(%struct.device_node*, i8*) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local i32 @PTR_ERR(i8*) #2

declare dso_local i32 @devm_snd_soc_register_card(%struct.device*, %struct.snd_soc_card*) #2

declare dso_local i32 @clk_put(i8*) #2

declare dso_local i32 @snd_soc_of_put_dai_link_codecs(%struct.snd_soc_dai_link*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
