; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_mikroe-proto.c_snd_proto_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_mikroe-proto.c_snd_proto_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.snd_soc_dai_link*, %struct.TYPE_7__* }
%struct.snd_soc_dai_link = type { i32, i32, i32, i8*, i8*, i32, %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component*, i32* }
%struct.snd_soc_dai_link_component = type { i8*, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_7__ = type { %struct.device_node* }
%struct.platform_device = type { %struct.TYPE_7__ }

@.str = private unnamed_addr constant [25 x i8] c"No device node supplied\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@snd_proto = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"WM8731\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"WM8731 HiFi\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"wm8731-hifi\00", align 1
@snd_proto_init = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"audio-codec\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"audio-codec node missing\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"i2s-controller\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"i2s-controller missing\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"Must be the same bitclock and frame master\0A\00", align 1
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBM_CFM = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBS_CFS = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"snd_soc_register_card() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @snd_proto_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_proto_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.snd_soc_dai_link*, align 8
  %5 = alloca %struct.snd_soc_dai_link_component*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %6, align 8
  store %struct.device_node* null, %struct.device_node** %9, align 8
  store %struct.device_node* null, %struct.device_node** %10, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.device_node*, %struct.device_node** %6, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %180

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @snd_proto, i32 0, i32 2), align 8
  %28 = call i32 @snd_soc_of_parse_card_name(%struct.TYPE_6__* @snd_proto, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %2, align 4
  br label %180

33:                                               ; preds = %25
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @devm_kzalloc(%struct.TYPE_7__* %35, i32 72, i32 %36)
  %38 = bitcast i8* %37 to %struct.snd_soc_dai_link*
  store %struct.snd_soc_dai_link* %38, %struct.snd_soc_dai_link** %4, align 8
  %39 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %40 = icmp ne %struct.snd_soc_dai_link* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %180

44:                                               ; preds = %33
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i8* @devm_kzalloc(%struct.TYPE_7__* %46, i32 48, i32 %47)
  %49 = bitcast i8* %48 to %struct.snd_soc_dai_link_component*
  store %struct.snd_soc_dai_link_component* %49, %struct.snd_soc_dai_link_component** %5, align 8
  %50 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %5, align 8
  %51 = icmp ne %struct.snd_soc_dai_link_component* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %180

55:                                               ; preds = %44
  %56 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  store %struct.snd_soc_dai_link* %56, %struct.snd_soc_dai_link** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @snd_proto, i32 0, i32 1), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @snd_proto, i32 0, i32 0), align 8
  %57 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %5, align 8
  %58 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %57, i64 0
  %59 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %60 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %59, i32 0, i32 7
  store %struct.snd_soc_dai_link_component* %58, %struct.snd_soc_dai_link_component** %60, align 8
  %61 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %62 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %5, align 8
  %64 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %63, i64 1
  %65 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %66 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %65, i32 0, i32 8
  store %struct.snd_soc_dai_link_component* %64, %struct.snd_soc_dai_link_component** %66, align 8
  %67 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %68 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  %69 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %5, align 8
  %70 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %69, i64 2
  %71 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %72 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %71, i32 0, i32 6
  store %struct.snd_soc_dai_link_component* %70, %struct.snd_soc_dai_link_component** %72, align 8
  %73 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %74 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %73, i32 0, i32 2
  store i32 1, i32* %74, align 8
  %75 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %76 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %75, i32 0, i32 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %76, align 8
  %77 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %78 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %77, i32 0, i32 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %78, align 8
  %79 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %80 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %79, i32 0, i32 8
  %81 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %80, align 8
  %82 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %81, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %82, align 8
  %83 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %84 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %83, i32 0, i32 9
  store i32* @snd_proto_init, i32** %84, align 8
  %85 = load %struct.device_node*, %struct.device_node** %6, align 8
  %86 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 0)
  store %struct.device_node* %86, %struct.device_node** %7, align 8
  %87 = load %struct.device_node*, %struct.device_node** %7, align 8
  %88 = icmp ne %struct.device_node* %87, null
  br i1 %88, label %95, label %89

89:                                               ; preds = %55
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %180

95:                                               ; preds = %55
  %96 = load %struct.device_node*, %struct.device_node** %7, align 8
  %97 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %98 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %97, i32 0, i32 8
  %99 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %98, align 8
  %100 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %99, i32 0, i32 1
  store %struct.device_node* %96, %struct.device_node** %100, align 8
  %101 = load %struct.device_node*, %struct.device_node** %6, align 8
  %102 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 0)
  store %struct.device_node* %102, %struct.device_node** %8, align 8
  %103 = load %struct.device_node*, %struct.device_node** %8, align 8
  %104 = icmp ne %struct.device_node* %103, null
  br i1 %104, label %111, label %105

105:                                              ; preds = %95
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %107, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %2, align 4
  br label %180

111:                                              ; preds = %95
  %112 = load %struct.device_node*, %struct.device_node** %8, align 8
  %113 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %114 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %113, i32 0, i32 7
  %115 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %114, align 8
  %116 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %115, i32 0, i32 1
  store %struct.device_node* %112, %struct.device_node** %116, align 8
  %117 = load %struct.device_node*, %struct.device_node** %8, align 8
  %118 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %119 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %118, i32 0, i32 6
  %120 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %119, align 8
  %121 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %120, i32 0, i32 1
  store %struct.device_node* %117, %struct.device_node** %121, align 8
  %122 = load %struct.device_node*, %struct.device_node** %6, align 8
  %123 = call i32 @snd_soc_of_parse_daifmt(%struct.device_node* %122, i32* null, %struct.device_node** %9, %struct.device_node** %10)
  store i32 %123, i32* %11, align 4
  %124 = load %struct.device_node*, %struct.device_node** %9, align 8
  %125 = load %struct.device_node*, %struct.device_node** %10, align 8
  %126 = icmp ne %struct.device_node* %124, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %111
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %129, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0))
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %2, align 4
  br label %180

133:                                              ; preds = %111
  %134 = load %struct.device_node*, %struct.device_node** %9, align 8
  %135 = icmp ne %struct.device_node* %134, null
  br i1 %135, label %136, label %153

136:                                              ; preds = %133
  %137 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %138 = xor i32 %137, -1
  %139 = load i32, i32* %11, align 4
  %140 = and i32 %139, %138
  store i32 %140, i32* %11, align 4
  %141 = load %struct.device_node*, %struct.device_node** %7, align 8
  %142 = load %struct.device_node*, %struct.device_node** %9, align 8
  %143 = icmp eq %struct.device_node* %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %136
  %145 = load i32, i32* @SND_SOC_DAIFMT_CBM_CFM, align 4
  %146 = load i32, i32* %11, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %11, align 4
  br label %152

148:                                              ; preds = %136
  %149 = load i32, i32* @SND_SOC_DAIFMT_CBS_CFS, align 4
  %150 = load i32, i32* %11, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %11, align 4
  br label %152

152:                                              ; preds = %148, %144
  br label %153

153:                                              ; preds = %152, %133
  %154 = load %struct.device_node*, %struct.device_node** %9, align 8
  %155 = call i32 @of_node_put(%struct.device_node* %154)
  %156 = load %struct.device_node*, %struct.device_node** %10, align 8
  %157 = call i32 @of_node_put(%struct.device_node* %156)
  %158 = load i32, i32* %11, align 4
  %159 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %160 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %159, i32 0, i32 5
  store i32 %158, i32* %160, align 8
  %161 = load %struct.device_node*, %struct.device_node** %7, align 8
  %162 = call i32 @of_node_put(%struct.device_node* %161)
  %163 = load %struct.device_node*, %struct.device_node** %8, align 8
  %164 = call i32 @of_node_put(%struct.device_node* %163)
  %165 = call i32 @snd_soc_register_card(%struct.TYPE_6__* @snd_proto)
  store i32 %165, i32* %12, align 4
  %166 = load i32, i32* %12, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %178

168:                                              ; preds = %153
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* @EPROBE_DEFER, align 4
  %171 = sub nsw i32 0, %170
  %172 = icmp ne i32 %169, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %168
  %174 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %175 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %174, i32 0, i32 0
  %176 = load i32, i32* %12, align 4
  %177 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %175, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %176)
  br label %178

178:                                              ; preds = %173, %168, %153
  %179 = load i32, i32* %12, align 4
  store i32 %179, i32* %2, align 4
  br label %180

180:                                              ; preds = %178, %127, %105, %89, %52, %41, %31, %19
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @snd_soc_of_parse_card_name(%struct.TYPE_6__*, i8*) #1

declare dso_local i8* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @snd_soc_of_parse_daifmt(%struct.device_node*, i32*, %struct.device_node**, %struct.device_node**) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @snd_soc_register_card(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
