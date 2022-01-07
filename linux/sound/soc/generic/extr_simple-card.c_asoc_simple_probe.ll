; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card.c_asoc_simple_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card.c_asoc_simple_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.asoc_simple_card_info*, %struct.device_node* }
%struct.asoc_simple_card_info = type { %struct.TYPE_2__, %struct.TYPE_2__, i32, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.device_node = type { i32 }
%struct.asoc_simple_priv = type { i32*, %struct.simple_dai_props*, %struct.snd_soc_dai_link* }
%struct.simple_dai_props = type { i32*, i32* }
%struct.snd_soc_dai_link = type { i32, i32, i64, i64, %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component* }
%struct.snd_soc_dai_link_component = type { i64, i64 }
%struct.snd_soc_card = type { i64, i32, %struct.device*, i32 }
%struct.link_info = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@simple_soc_probe = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"parse error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"no info for asoc-simple-card\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"insufficient asoc_simple_card_info settings\0A\00", align 1
@asoc_simple_dai_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @asoc_simple_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asoc_simple_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.asoc_simple_priv*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.snd_soc_card*, align 8
  %8 = alloca %struct.link_info, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.asoc_simple_card_info*, align 8
  %11 = alloca %struct.snd_soc_dai_link_component*, align 8
  %12 = alloca %struct.snd_soc_dai_link_component*, align 8
  %13 = alloca %struct.snd_soc_dai_link_component*, align 8
  %14 = alloca %struct.snd_soc_dai_link*, align 8
  %15 = alloca %struct.simple_dai_props*, align 8
  %16 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %5, align 8
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 1
  %21 = load %struct.device_node*, %struct.device_node** %20, align 8
  store %struct.device_node* %21, %struct.device_node** %6, align 8
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.asoc_simple_priv* @devm_kzalloc(%struct.device* %22, i32 24, i32 %23)
  store %struct.asoc_simple_priv* %24, %struct.asoc_simple_priv** %4, align 8
  %25 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %4, align 8
  %26 = icmp ne %struct.asoc_simple_priv* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %247

30:                                               ; preds = %1
  %31 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %4, align 8
  %32 = call %struct.snd_soc_card* @simple_priv_to_card(%struct.asoc_simple_priv* %31)
  store %struct.snd_soc_card* %32, %struct.snd_soc_card** %7, align 8
  %33 = load i32, i32* @THIS_MODULE, align 4
  %34 = load %struct.snd_soc_card*, %struct.snd_soc_card** %7, align 8
  %35 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = load %struct.snd_soc_card*, %struct.snd_soc_card** %7, align 8
  %38 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %37, i32 0, i32 2
  store %struct.device* %36, %struct.device** %38, align 8
  %39 = load i32, i32* @simple_soc_probe, align 4
  %40 = load %struct.snd_soc_card*, %struct.snd_soc_card** %7, align 8
  %41 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = call i32 @memset(%struct.link_info* %8, i32 0, i32 8)
  %43 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %4, align 8
  %44 = call i32 @simple_get_dais_count(%struct.asoc_simple_priv* %43, %struct.link_info* %8)
  %45 = getelementptr inbounds %struct.link_info, %struct.link_info* %8, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %30
  %49 = getelementptr inbounds %struct.link_info, %struct.link_info* %8, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48, %30
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %247

55:                                               ; preds = %48
  %56 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %4, align 8
  %57 = call i32 @asoc_simple_init_priv(%struct.asoc_simple_priv* %56, %struct.link_info* %8)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %2, align 4
  br label %247

62:                                               ; preds = %55
  %63 = load %struct.device_node*, %struct.device_node** %6, align 8
  %64 = icmp ne %struct.device_node* %63, null
  br i1 %64, label %65, label %85

65:                                               ; preds = %62
  %66 = load %struct.device_node*, %struct.device_node** %6, align 8
  %67 = call i64 @of_device_is_available(%struct.device_node* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %65
  %70 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %4, align 8
  %71 = call i32 @simple_parse_of(%struct.asoc_simple_priv* %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @EPROBE_DEFER, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp ne i32 %75, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load %struct.device*, %struct.device** %5, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %79, %74
  br label %243

84:                                               ; preds = %69
  br label %230

85:                                               ; preds = %65, %62
  %86 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %4, align 8
  %87 = getelementptr inbounds %struct.asoc_simple_priv, %struct.asoc_simple_priv* %86, i32 0, i32 2
  %88 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %87, align 8
  store %struct.snd_soc_dai_link* %88, %struct.snd_soc_dai_link** %14, align 8
  %89 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %4, align 8
  %90 = getelementptr inbounds %struct.asoc_simple_priv, %struct.asoc_simple_priv* %89, i32 0, i32 1
  %91 = load %struct.simple_dai_props*, %struct.simple_dai_props** %90, align 8
  store %struct.simple_dai_props* %91, %struct.simple_dai_props** %15, align 8
  store i32 0, i32* %16, align 4
  %92 = load %struct.device*, %struct.device** %5, align 8
  %93 = getelementptr inbounds %struct.device, %struct.device* %92, i32 0, i32 0
  %94 = load %struct.asoc_simple_card_info*, %struct.asoc_simple_card_info** %93, align 8
  store %struct.asoc_simple_card_info* %94, %struct.asoc_simple_card_info** %10, align 8
  %95 = load %struct.asoc_simple_card_info*, %struct.asoc_simple_card_info** %10, align 8
  %96 = icmp ne %struct.asoc_simple_card_info* %95, null
  br i1 %96, label %102, label %97

97:                                               ; preds = %85
  %98 = load %struct.device*, %struct.device** %5, align 8
  %99 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %98, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %247

102:                                              ; preds = %85
  %103 = load %struct.asoc_simple_card_info*, %struct.asoc_simple_card_info** %10, align 8
  %104 = getelementptr inbounds %struct.asoc_simple_card_info, %struct.asoc_simple_card_info* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %129

107:                                              ; preds = %102
  %108 = load %struct.asoc_simple_card_info*, %struct.asoc_simple_card_info** %10, align 8
  %109 = getelementptr inbounds %struct.asoc_simple_card_info, %struct.asoc_simple_card_info* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %107
  %114 = load %struct.asoc_simple_card_info*, %struct.asoc_simple_card_info** %10, align 8
  %115 = getelementptr inbounds %struct.asoc_simple_card_info, %struct.asoc_simple_card_info* %114, i32 0, i32 6
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %113
  %119 = load %struct.asoc_simple_card_info*, %struct.asoc_simple_card_info** %10, align 8
  %120 = getelementptr inbounds %struct.asoc_simple_card_info, %struct.asoc_simple_card_info* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load %struct.asoc_simple_card_info*, %struct.asoc_simple_card_info** %10, align 8
  %125 = getelementptr inbounds %struct.asoc_simple_card_info, %struct.asoc_simple_card_info* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %123, %118, %113, %107, %102
  %130 = load %struct.device*, %struct.device** %5, align 8
  %131 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %130, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %2, align 4
  br label %247

134:                                              ; preds = %123
  %135 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %4, align 8
  %136 = getelementptr inbounds %struct.asoc_simple_priv, %struct.asoc_simple_priv* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %16, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %16, align 4
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i32, i32* %137, i64 %140
  %142 = load %struct.simple_dai_props*, %struct.simple_dai_props** %15, align 8
  %143 = getelementptr inbounds %struct.simple_dai_props, %struct.simple_dai_props* %142, i32 0, i32 1
  store i32* %141, i32** %143, align 8
  %144 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %4, align 8
  %145 = getelementptr inbounds %struct.asoc_simple_priv, %struct.asoc_simple_priv* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %16, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %16, align 4
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  %151 = load %struct.simple_dai_props*, %struct.simple_dai_props** %15, align 8
  %152 = getelementptr inbounds %struct.simple_dai_props, %struct.simple_dai_props* %151, i32 0, i32 0
  store i32* %150, i32** %152, align 8
  %153 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %154 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %153, i32 0, i32 6
  %155 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %154, align 8
  store %struct.snd_soc_dai_link_component* %155, %struct.snd_soc_dai_link_component** %11, align 8
  %156 = load %struct.asoc_simple_card_info*, %struct.asoc_simple_card_info** %10, align 8
  %157 = getelementptr inbounds %struct.asoc_simple_card_info, %struct.asoc_simple_card_info* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %11, align 8
  %161 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %160, i32 0, i32 1
  store i64 %159, i64* %161, align 8
  %162 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %163 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %162, i32 0, i32 5
  %164 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %163, align 8
  store %struct.snd_soc_dai_link_component* %164, %struct.snd_soc_dai_link_component** %12, align 8
  %165 = load %struct.asoc_simple_card_info*, %struct.asoc_simple_card_info** %10, align 8
  %166 = getelementptr inbounds %struct.asoc_simple_card_info, %struct.asoc_simple_card_info* %165, i32 0, i32 6
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %12, align 8
  %169 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %168, i32 0, i32 0
  store i64 %167, i64* %169, align 8
  %170 = load %struct.asoc_simple_card_info*, %struct.asoc_simple_card_info** %10, align 8
  %171 = getelementptr inbounds %struct.asoc_simple_card_info, %struct.asoc_simple_card_info* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %12, align 8
  %175 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %174, i32 0, i32 1
  store i64 %173, i64* %175, align 8
  %176 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %177 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %176, i32 0, i32 4
  %178 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %177, align 8
  store %struct.snd_soc_dai_link_component* %178, %struct.snd_soc_dai_link_component** %13, align 8
  %179 = load %struct.asoc_simple_card_info*, %struct.asoc_simple_card_info** %10, align 8
  %180 = getelementptr inbounds %struct.asoc_simple_card_info, %struct.asoc_simple_card_info* %179, i32 0, i32 5
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %13, align 8
  %183 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %182, i32 0, i32 0
  store i64 %181, i64* %183, align 8
  %184 = load %struct.asoc_simple_card_info*, %struct.asoc_simple_card_info** %10, align 8
  %185 = getelementptr inbounds %struct.asoc_simple_card_info, %struct.asoc_simple_card_info* %184, i32 0, i32 4
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %134
  %189 = load %struct.asoc_simple_card_info*, %struct.asoc_simple_card_info** %10, align 8
  %190 = getelementptr inbounds %struct.asoc_simple_card_info, %struct.asoc_simple_card_info* %189, i32 0, i32 4
  %191 = load i64, i64* %190, align 8
  br label %196

192:                                              ; preds = %134
  %193 = load %struct.asoc_simple_card_info*, %struct.asoc_simple_card_info** %10, align 8
  %194 = getelementptr inbounds %struct.asoc_simple_card_info, %struct.asoc_simple_card_info* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  br label %196

196:                                              ; preds = %192, %188
  %197 = phi i64 [ %191, %188 ], [ %195, %192 ]
  %198 = load %struct.snd_soc_card*, %struct.snd_soc_card** %7, align 8
  %199 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %198, i32 0, i32 0
  store i64 %197, i64* %199, align 8
  %200 = load %struct.asoc_simple_card_info*, %struct.asoc_simple_card_info** %10, align 8
  %201 = getelementptr inbounds %struct.asoc_simple_card_info, %struct.asoc_simple_card_info* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %204 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %203, i32 0, i32 3
  store i64 %202, i64* %204, align 8
  %205 = load %struct.asoc_simple_card_info*, %struct.asoc_simple_card_info** %10, align 8
  %206 = getelementptr inbounds %struct.asoc_simple_card_info, %struct.asoc_simple_card_info* %205, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %209 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %208, i32 0, i32 2
  store i64 %207, i64* %209, align 8
  %210 = load %struct.asoc_simple_card_info*, %struct.asoc_simple_card_info** %10, align 8
  %211 = getelementptr inbounds %struct.asoc_simple_card_info, %struct.asoc_simple_card_info* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %214 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %213, i32 0, i32 1
  store i32 %212, i32* %214, align 4
  %215 = load i32, i32* @asoc_simple_dai_init, align 4
  %216 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %217 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 8
  %218 = load %struct.simple_dai_props*, %struct.simple_dai_props** %15, align 8
  %219 = getelementptr inbounds %struct.simple_dai_props, %struct.simple_dai_props* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = load %struct.asoc_simple_card_info*, %struct.asoc_simple_card_info** %10, align 8
  %222 = getelementptr inbounds %struct.asoc_simple_card_info, %struct.asoc_simple_card_info* %221, i32 0, i32 1
  %223 = call i32 @memcpy(i32* %220, %struct.TYPE_2__* %222, i32 4)
  %224 = load %struct.simple_dai_props*, %struct.simple_dai_props** %15, align 8
  %225 = getelementptr inbounds %struct.simple_dai_props, %struct.simple_dai_props* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = load %struct.asoc_simple_card_info*, %struct.asoc_simple_card_info** %10, align 8
  %228 = getelementptr inbounds %struct.asoc_simple_card_info, %struct.asoc_simple_card_info* %227, i32 0, i32 0
  %229 = call i32 @memcpy(i32* %226, %struct.TYPE_2__* %228, i32 4)
  br label %230

230:                                              ; preds = %196, %84
  %231 = load %struct.snd_soc_card*, %struct.snd_soc_card** %7, align 8
  %232 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %4, align 8
  %233 = call i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card* %231, %struct.asoc_simple_priv* %232)
  %234 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %4, align 8
  %235 = call i32 @asoc_simple_debug_info(%struct.asoc_simple_priv* %234)
  %236 = load %struct.device*, %struct.device** %5, align 8
  %237 = load %struct.snd_soc_card*, %struct.snd_soc_card** %7, align 8
  %238 = call i32 @devm_snd_soc_register_card(%struct.device* %236, %struct.snd_soc_card* %237)
  store i32 %238, i32* %9, align 4
  %239 = load i32, i32* %9, align 4
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %230
  br label %243

242:                                              ; preds = %230
  store i32 0, i32* %2, align 4
  br label %247

243:                                              ; preds = %241, %83
  %244 = load %struct.snd_soc_card*, %struct.snd_soc_card** %7, align 8
  %245 = call i32 @asoc_simple_clean_reference(%struct.snd_soc_card* %244)
  %246 = load i32, i32* %9, align 4
  store i32 %246, i32* %2, align 4
  br label %247

247:                                              ; preds = %243, %242, %129, %97, %60, %52, %27
  %248 = load i32, i32* %2, align 4
  ret i32 %248
}

declare dso_local %struct.asoc_simple_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.snd_soc_card* @simple_priv_to_card(%struct.asoc_simple_priv*) #1

declare dso_local i32 @memset(%struct.link_info*, i32, i32) #1

declare dso_local i32 @simple_get_dais_count(%struct.asoc_simple_priv*, %struct.link_info*) #1

declare dso_local i32 @asoc_simple_init_priv(%struct.asoc_simple_priv*, %struct.link_info*) #1

declare dso_local i64 @of_device_is_available(%struct.device_node*) #1

declare dso_local i32 @simple_parse_of(%struct.asoc_simple_priv*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_2__*, i32) #1

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
