; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-twl4030.c_omap_twl4030_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-twl4030.c_omap_twl4030_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32, i32, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { %struct.device_node*, i32* }
%struct.TYPE_8__ = type { %struct.device_node*, i32* }
%struct.platform_device = type { %struct.TYPE_11__ }
%struct.omap_tw4030_pdata = type { i32, i32, i64 }
%struct.omap_twl4030 = type { i32 }
%struct.property = type { i32 }

@omap_twl4030_card = common dso_local global %struct.snd_soc_card zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ti,model\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Card name is not provided\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"ti,mcbsp\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"McBSP node is not provided\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@omap_twl4030_dai_links = common dso_local global %struct.TYPE_10__* null, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"ti,mcbsp-voice\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"ti,jack-det-gpio\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"ti,audio-routing\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Missing pdata\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"devm_snd_soc_register_card() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @omap_twl4030_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_twl4030_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.omap_tw4030_pdata*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.snd_soc_card*, align 8
  %7 = alloca %struct.omap_twl4030*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.property*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call %struct.omap_tw4030_pdata* @dev_get_platdata(%struct.TYPE_11__* %12)
  store %struct.omap_tw4030_pdata* %13, %struct.omap_tw4030_pdata** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %5, align 8
  store %struct.snd_soc_card* @omap_twl4030_card, %struct.snd_soc_card** %6, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %21 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %20, i32 0, i32 3
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %21, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.omap_twl4030* @devm_kzalloc(%struct.TYPE_11__* %23, i32 4, i32 %24)
  store %struct.omap_twl4030* %25, %struct.omap_twl4030** %7, align 8
  %26 = load %struct.omap_twl4030*, %struct.omap_twl4030** %7, align 8
  %27 = icmp eq %struct.omap_twl4030* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %186

31:                                               ; preds = %1
  %32 = load %struct.device_node*, %struct.device_node** %5, align 8
  %33 = icmp ne %struct.device_node* %32, null
  br i1 %33, label %34, label %128

34:                                               ; preds = %31
  %35 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %36 = call i64 @snd_soc_of_parse_card_name(%struct.snd_soc_card* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %186

44:                                               ; preds = %34
  %45 = load %struct.device_node*, %struct.device_node** %5, align 8
  %46 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store %struct.device_node* %46, %struct.device_node** %9, align 8
  %47 = load %struct.device_node*, %struct.device_node** %9, align 8
  %48 = icmp ne %struct.device_node* %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %186

55:                                               ; preds = %44
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** @omap_twl4030_dai_links, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  store i32* null, i32** %60, align 8
  %61 = load %struct.device_node*, %struct.device_node** %9, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** @omap_twl4030_dai_links, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store %struct.device_node* %61, %struct.device_node** %66, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** @omap_twl4030_dai_links, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  store i32* null, i32** %71, align 8
  %72 = load %struct.device_node*, %struct.device_node** %9, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** @omap_twl4030_dai_links, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  store %struct.device_node* %72, %struct.device_node** %77, align 8
  %78 = load %struct.device_node*, %struct.device_node** %5, align 8
  %79 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store %struct.device_node* %79, %struct.device_node** %9, align 8
  %80 = load %struct.device_node*, %struct.device_node** %9, align 8
  %81 = icmp ne %struct.device_node* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %55
  %83 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %84 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  br label %108

85:                                               ; preds = %55
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** @omap_twl4030_dai_links, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i64 1
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  store i32* null, i32** %90, align 8
  %91 = load %struct.device_node*, %struct.device_node** %9, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** @omap_twl4030_dai_links, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i64 1
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store %struct.device_node* %91, %struct.device_node** %96, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** @omap_twl4030_dai_links, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i64 1
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  store i32* null, i32** %101, align 8
  %102 = load %struct.device_node*, %struct.device_node** %9, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** @omap_twl4030_dai_links, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i64 1
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  store %struct.device_node* %102, %struct.device_node** %107, align 8
  br label %108

108:                                              ; preds = %85, %82
  %109 = load %struct.device_node*, %struct.device_node** %5, align 8
  %110 = call i32 @of_get_named_gpio(%struct.device_node* %109, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %111 = load %struct.omap_twl4030*, %struct.omap_twl4030** %7, align 8
  %112 = getelementptr inbounds %struct.omap_twl4030, %struct.omap_twl4030* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  %113 = load %struct.device_node*, %struct.device_node** %5, align 8
  %114 = call %struct.property* @of_find_property(%struct.device_node* %113, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32* null)
  store %struct.property* %114, %struct.property** %10, align 8
  %115 = load %struct.property*, %struct.property** %10, align 8
  %116 = icmp ne %struct.property* %115, null
  br i1 %116, label %117, label %127

117:                                              ; preds = %108
  %118 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %119 = call i32 @snd_soc_of_parse_audio_routing(%struct.snd_soc_card* %118, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* %2, align 4
  br label %186

124:                                              ; preds = %117
  %125 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %126 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %125, i32 0, i32 1
  store i32 1, i32* %126, align 4
  br label %127

127:                                              ; preds = %124, %108
  br label %169

128:                                              ; preds = %31
  %129 = load %struct.omap_tw4030_pdata*, %struct.omap_tw4030_pdata** %4, align 8
  %130 = icmp ne %struct.omap_tw4030_pdata* %129, null
  br i1 %130, label %131, label %162

131:                                              ; preds = %128
  %132 = load %struct.omap_tw4030_pdata*, %struct.omap_tw4030_pdata** %4, align 8
  %133 = getelementptr inbounds %struct.omap_tw4030_pdata, %struct.omap_tw4030_pdata* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = load %struct.omap_tw4030_pdata*, %struct.omap_tw4030_pdata** %4, align 8
  %138 = getelementptr inbounds %struct.omap_tw4030_pdata, %struct.omap_tw4030_pdata* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %141 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %140, i32 0, i32 2
  store i64 %139, i64* %141, align 8
  br label %148

142:                                              ; preds = %131
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 0
  %145 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %144, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %146 = load i32, i32* @ENODEV, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %2, align 4
  br label %186

148:                                              ; preds = %136
  %149 = load %struct.omap_tw4030_pdata*, %struct.omap_tw4030_pdata** %4, align 8
  %150 = getelementptr inbounds %struct.omap_tw4030_pdata, %struct.omap_tw4030_pdata* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %148
  %154 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %155 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %154, i32 0, i32 0
  store i32 1, i32* %155, align 8
  br label %156

156:                                              ; preds = %153, %148
  %157 = load %struct.omap_tw4030_pdata*, %struct.omap_tw4030_pdata** %4, align 8
  %158 = getelementptr inbounds %struct.omap_tw4030_pdata, %struct.omap_tw4030_pdata* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.omap_twl4030*, %struct.omap_twl4030** %7, align 8
  %161 = getelementptr inbounds %struct.omap_twl4030, %struct.omap_twl4030* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 4
  br label %168

162:                                              ; preds = %128
  %163 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %164 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %163, i32 0, i32 0
  %165 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %164, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %166 = load i32, i32* @ENODEV, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %2, align 4
  br label %186

168:                                              ; preds = %156
  br label %169

169:                                              ; preds = %168, %127
  %170 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %171 = load %struct.omap_twl4030*, %struct.omap_twl4030** %7, align 8
  %172 = call i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card* %170, %struct.omap_twl4030* %171)
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %173, i32 0, i32 0
  %175 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %176 = call i32 @devm_snd_soc_register_card(%struct.TYPE_11__* %174, %struct.snd_soc_card* %175)
  store i32 %176, i32* %8, align 4
  %177 = load i32, i32* %8, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %169
  %180 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %181 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %180, i32 0, i32 0
  %182 = load i32, i32* %8, align 4
  %183 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %181, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %182)
  %184 = load i32, i32* %8, align 4
  store i32 %184, i32* %2, align 4
  br label %186

185:                                              ; preds = %169
  store i32 0, i32* %2, align 4
  br label %186

186:                                              ; preds = %185, %179, %162, %142, %122, %49, %38, %28
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local %struct.omap_tw4030_pdata* @dev_get_platdata(%struct.TYPE_11__*) #1

declare dso_local %struct.omap_twl4030* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @snd_soc_of_parse_card_name(%struct.snd_soc_card*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @of_get_named_gpio(%struct.device_node*, i8*, i32) #1

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @snd_soc_of_parse_audio_routing(%struct.snd_soc_card*, i8*) #1

declare dso_local i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card*, %struct.omap_twl4030*) #1

declare dso_local i32 @devm_snd_soc_register_card(%struct.TYPE_11__*, %struct.snd_soc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
