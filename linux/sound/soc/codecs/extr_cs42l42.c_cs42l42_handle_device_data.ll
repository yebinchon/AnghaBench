; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l42.c_cs42l42_handle_device_data.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l42.c_cs42l42_handle_device_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.cs42l42_private = type { i32, i32, i32, i32, i32, i32*, i32, i32, i8* }

@CS42L42_NUM_BIASES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"cirrus,ts-inv\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Wrong cirrus,ts-inv DT value %d\0A\00", align 1
@CS42L42_TSENSE_CTL = common dso_local global i32 0, align 4
@CS42L42_TS_INV_MASK = common dso_local global i32 0, align 4
@CS42L42_TS_INV_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"cirrus,ts-dbnc-rise\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Wrong cirrus,ts-dbnc-rise DT value %d\0A\00", align 1
@CS42L42_TS_RISE_DBNCE_TIME_MASK = common dso_local global i32 0, align 4
@CS42L42_TS_RISE_DBNCE_TIME_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"cirrus,ts-dbnc-fall\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Wrong cirrus,ts-dbnc-fall DT value %d\0A\00", align 1
@CS42L42_TS_FALL_DBNCE_TIME_MASK = common dso_local global i32 0, align 4
@CS42L42_TS_FALL_DBNCE_TIME_SHIFT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"cirrus,btn-det-init-dbnce\00", align 1
@CS42L42_BTN_DET_INIT_DBNCE_MIN = common dso_local global i32 0, align 4
@CS42L42_BTN_DET_INIT_DBNCE_MAX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [45 x i8] c"Wrong cirrus,btn-det-init-dbnce DT value %d\0A\00", align 1
@CS42L42_BTN_DET_INIT_DBNCE_DEFAULT = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [27 x i8] c"cirrus,btn-det-event-dbnce\00", align 1
@CS42L42_BTN_DET_EVENT_DBNCE_MIN = common dso_local global i32 0, align 4
@CS42L42_BTN_DET_EVENT_DBNCE_MAX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [46 x i8] c"Wrong cirrus,btn-det-event-dbnce DT value %d\0A\00", align 1
@CS42L42_BTN_DET_EVENT_DBNCE_DEFAULT = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [17 x i8] c"cirrus,bias-lvls\00", align 1
@CS42L42_HS_DET_LEVEL_MIN = common dso_local global i32 0, align 4
@CS42L42_HS_DET_LEVEL_MAX = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [40 x i8] c"Wrong cirrus,bias-lvls[%d] DT value %d\0A\00", align 1
@threshold_defaults = common dso_local global i8** null, align 8
@.str.12 = private unnamed_addr constant [25 x i8] c"cirrus,hs-bias-ramp-rate\00", align 1
@CS42L42_HSBIAS_RAMP_TIME0 = common dso_local global i8* null, align 8
@CS42L42_HSBIAS_RAMP_TIME1 = common dso_local global i8* null, align 8
@CS42L42_HSBIAS_RAMP_TIME2 = common dso_local global i8* null, align 8
@CS42L42_HSBIAS_RAMP_TIME3 = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [44 x i8] c"Wrong cirrus,hs-bias-ramp-rate DT value %d\0A\00", align 1
@CS42L42_HS_BIAS_CTL = common dso_local global i32 0, align 4
@CS42L42_HSBIAS_RAMP_MASK = common dso_local global i32 0, align 4
@CS42L42_HSBIAS_RAMP_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.cs42l42_private*)* @cs42l42_handle_device_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs42l42_handle_device_data(%struct.i2c_client* %0, %struct.cs42l42_private* %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.cs42l42_private*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store %struct.cs42l42_private* %1, %struct.cs42l42_private** %4, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %5, align 8
  %15 = load i32, i32* @CS42L42_NUM_BIASES, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = call i32 @of_property_read_u32(%struct.device_node* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %6)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %29 [
    i32 128, label %25
    i32 129, label %25
  ]

25:                                               ; preds = %23, %23
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %28 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  br label %36

29:                                               ; preds = %23
  %30 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = load i32, i32* %6, align 4
  %33 = call i32 (%struct.TYPE_2__*, i8*, i32, ...) @dev_err(%struct.TYPE_2__* %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %35 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %34, i32 0, i32 0
  store i32 129, i32* %35, align 8
  br label %36

36:                                               ; preds = %29, %25
  br label %40

37:                                               ; preds = %2
  %38 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %39 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %38, i32 0, i32 0
  store i32 129, i32* %39, align 8
  br label %40

40:                                               ; preds = %37, %36
  %41 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %42 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CS42L42_TSENSE_CTL, align 4
  %45 = load i32, i32* @CS42L42_TS_INV_MASK, align 4
  %46 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %47 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @CS42L42_TS_INV_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = call i32 @regmap_update_bits(i32 %43, i32 %44, i32 %45, i32 %50)
  %52 = load %struct.device_node*, %struct.device_node** %5, align 8
  %53 = call i32 @of_property_read_u32(%struct.device_node* %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32* %6)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %40
  %57 = load i32, i32* %6, align 4
  switch i32 %57, label %62 [
    i32 137, label %58
    i32 135, label %58
    i32 132, label %58
    i32 131, label %58
    i32 130, label %58
    i32 136, label %58
    i32 134, label %58
    i32 133, label %58
  ]

58:                                               ; preds = %56, %56, %56, %56, %56, %56, %56, %56
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %61 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %69

62:                                               ; preds = %56
  %63 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %64 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %63, i32 0, i32 0
  %65 = load i32, i32* %6, align 4
  %66 = call i32 (%struct.TYPE_2__*, i8*, i32, ...) @dev_err(%struct.TYPE_2__* %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %68 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %67, i32 0, i32 1
  store i32 136, i32* %68, align 4
  br label %69

69:                                               ; preds = %62, %58
  br label %73

70:                                               ; preds = %40
  %71 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %72 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %71, i32 0, i32 1
  store i32 136, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %69
  %74 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %75 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @CS42L42_TSENSE_CTL, align 4
  %78 = load i32, i32* @CS42L42_TS_RISE_DBNCE_TIME_MASK, align 4
  %79 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %80 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @CS42L42_TS_RISE_DBNCE_TIME_SHIFT, align 4
  %83 = shl i32 %81, %82
  %84 = call i32 @regmap_update_bits(i32 %76, i32 %77, i32 %78, i32 %83)
  %85 = load %struct.device_node*, %struct.device_node** %5, align 8
  %86 = call i32 @of_property_read_u32(%struct.device_node* %85, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32* %6)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %103, label %89

89:                                               ; preds = %73
  %90 = load i32, i32* %6, align 4
  switch i32 %90, label %95 [
    i32 137, label %91
    i32 135, label %91
    i32 132, label %91
    i32 131, label %91
    i32 130, label %91
    i32 136, label %91
    i32 134, label %91
    i32 133, label %91
  ]

91:                                               ; preds = %89, %89, %89, %89, %89, %89, %89, %89
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %94 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  br label %102

95:                                               ; preds = %89
  %96 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %97 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %96, i32 0, i32 0
  %98 = load i32, i32* %6, align 4
  %99 = call i32 (%struct.TYPE_2__*, i8*, i32, ...) @dev_err(%struct.TYPE_2__* %97, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %98)
  %100 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %101 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %100, i32 0, i32 2
  store i32 137, i32* %101, align 8
  br label %102

102:                                              ; preds = %95, %91
  br label %106

103:                                              ; preds = %73
  %104 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %105 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %104, i32 0, i32 2
  store i32 137, i32* %105, align 8
  br label %106

106:                                              ; preds = %103, %102
  %107 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %108 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @CS42L42_TSENSE_CTL, align 4
  %111 = load i32, i32* @CS42L42_TS_FALL_DBNCE_TIME_MASK, align 4
  %112 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %113 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @CS42L42_TS_FALL_DBNCE_TIME_SHIFT, align 4
  %116 = shl i32 %114, %115
  %117 = call i32 @regmap_update_bits(i32 %109, i32 %110, i32 %111, i32 %116)
  %118 = load %struct.device_node*, %struct.device_node** %5, align 8
  %119 = call i32 @of_property_read_u32(%struct.device_node* %118, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32* %6)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %144, label %122

122:                                              ; preds = %106
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @CS42L42_BTN_DET_INIT_DBNCE_MIN, align 4
  %125 = icmp uge i32 %123, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %122
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @CS42L42_BTN_DET_INIT_DBNCE_MAX, align 4
  %129 = icmp ule i32 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = load i32, i32* %6, align 4
  %132 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %133 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 4
  br label %143

134:                                              ; preds = %126, %122
  %135 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %136 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %135, i32 0, i32 0
  %137 = load i32, i32* %6, align 4
  %138 = call i32 (%struct.TYPE_2__*, i8*, i32, ...) @dev_err(%struct.TYPE_2__* %136, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %137)
  %139 = load i8*, i8** @CS42L42_BTN_DET_INIT_DBNCE_DEFAULT, align 8
  %140 = ptrtoint i8* %139 to i32
  %141 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %142 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %134, %130
  br label %149

144:                                              ; preds = %106
  %145 = load i8*, i8** @CS42L42_BTN_DET_INIT_DBNCE_DEFAULT, align 8
  %146 = ptrtoint i8* %145 to i32
  %147 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %148 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 4
  br label %149

149:                                              ; preds = %144, %143
  %150 = load %struct.device_node*, %struct.device_node** %5, align 8
  %151 = call i32 @of_property_read_u32(%struct.device_node* %150, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32* %6)
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %9, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %176, label %154

154:                                              ; preds = %149
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* @CS42L42_BTN_DET_EVENT_DBNCE_MIN, align 4
  %157 = icmp uge i32 %155, %156
  br i1 %157, label %158, label %166

158:                                              ; preds = %154
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* @CS42L42_BTN_DET_EVENT_DBNCE_MAX, align 4
  %161 = icmp ule i32 %159, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %158
  %163 = load i32, i32* %6, align 4
  %164 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %165 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %164, i32 0, i32 4
  store i32 %163, i32* %165, align 8
  br label %175

166:                                              ; preds = %158, %154
  %167 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %168 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %167, i32 0, i32 0
  %169 = load i32, i32* %6, align 4
  %170 = call i32 (%struct.TYPE_2__*, i8*, i32, ...) @dev_err(%struct.TYPE_2__* %168, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i32 %169)
  %171 = load i8*, i8** @CS42L42_BTN_DET_EVENT_DBNCE_DEFAULT, align 8
  %172 = ptrtoint i8* %171 to i32
  %173 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %174 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %173, i32 0, i32 4
  store i32 %172, i32* %174, align 8
  br label %175

175:                                              ; preds = %166, %162
  br label %181

176:                                              ; preds = %149
  %177 = load i8*, i8** @CS42L42_BTN_DET_EVENT_DBNCE_DEFAULT, align 8
  %178 = ptrtoint i8* %177 to i32
  %179 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %180 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %179, i32 0, i32 4
  store i32 %178, i32* %180, align 8
  br label %181

181:                                              ; preds = %176, %175
  %182 = load %struct.device_node*, %struct.device_node** %5, align 8
  %183 = load i32, i32* @CS42L42_NUM_BIASES, align 4
  %184 = call i32 @of_property_read_u32_array(%struct.device_node* %182, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32* %18, i32 %183)
  store i32 %184, i32* %9, align 4
  %185 = load i32, i32* %9, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %243, label %187

187:                                              ; preds = %181
  store i32 0, i32* %10, align 4
  br label %188

188:                                              ; preds = %239, %187
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* @CS42L42_NUM_BIASES, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %242

192:                                              ; preds = %188
  %193 = load i32, i32* %10, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %18, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @CS42L42_HS_DET_LEVEL_MIN, align 4
  %198 = icmp uge i32 %196, %197
  br i1 %198, label %199, label %217

199:                                              ; preds = %192
  %200 = load i32, i32* %10, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %18, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @CS42L42_HS_DET_LEVEL_MAX, align 4
  %205 = icmp ule i32 %203, %204
  br i1 %205, label %206, label %217

206:                                              ; preds = %199
  %207 = load i32, i32* %10, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %18, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %212 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %211, i32 0, i32 5
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %10, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  store i32 %210, i32* %216, align 4
  br label %238

217:                                              ; preds = %199, %192
  %218 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %219 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %218, i32 0, i32 0
  %220 = load i32, i32* %10, align 4
  %221 = load i32, i32* %10, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %18, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = call i32 (%struct.TYPE_2__*, i8*, i32, ...) @dev_err(%struct.TYPE_2__* %219, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i32 %220, i32 %224)
  %226 = load i8**, i8*** @threshold_defaults, align 8
  %227 = load i32, i32* %10, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8*, i8** %226, i64 %228
  %230 = load i8*, i8** %229, align 8
  %231 = ptrtoint i8* %230 to i32
  %232 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %233 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %232, i32 0, i32 5
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %10, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  store i32 %231, i32* %237, align 4
  br label %238

238:                                              ; preds = %217, %206
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %10, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %10, align 4
  br label %188

242:                                              ; preds = %188
  br label %265

243:                                              ; preds = %181
  store i32 0, i32* %10, align 4
  br label %244

244:                                              ; preds = %261, %243
  %245 = load i32, i32* %10, align 4
  %246 = load i32, i32* @CS42L42_NUM_BIASES, align 4
  %247 = icmp slt i32 %245, %246
  br i1 %247, label %248, label %264

248:                                              ; preds = %244
  %249 = load i8**, i8*** @threshold_defaults, align 8
  %250 = load i32, i32* %10, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8*, i8** %249, i64 %251
  %253 = load i8*, i8** %252, align 8
  %254 = ptrtoint i8* %253 to i32
  %255 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %256 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %255, i32 0, i32 5
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %10, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  store i32 %254, i32* %260, align 4
  br label %261

261:                                              ; preds = %248
  %262 = load i32, i32* %10, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %10, align 4
  br label %244

264:                                              ; preds = %244
  br label %265

265:                                              ; preds = %264, %242
  %266 = load %struct.device_node*, %struct.device_node** %5, align 8
  %267 = call i32 @of_property_read_u32(%struct.device_node* %266, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32* %6)
  store i32 %267, i32* %9, align 4
  %268 = load i32, i32* %9, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %311, label %270

270:                                              ; preds = %265
  %271 = load i32, i32* %6, align 4
  switch i32 %271, label %300 [
    i32 140, label %272
    i32 141, label %279
    i32 139, label %286
    i32 138, label %293
  ]

272:                                              ; preds = %270
  %273 = load i32, i32* %6, align 4
  %274 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %275 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %274, i32 0, i32 6
  store i32 %273, i32* %275, align 8
  %276 = load i8*, i8** @CS42L42_HSBIAS_RAMP_TIME0, align 8
  %277 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %278 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %277, i32 0, i32 8
  store i8* %276, i8** %278, align 8
  br label %310

279:                                              ; preds = %270
  %280 = load i32, i32* %6, align 4
  %281 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %282 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %281, i32 0, i32 6
  store i32 %280, i32* %282, align 8
  %283 = load i8*, i8** @CS42L42_HSBIAS_RAMP_TIME1, align 8
  %284 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %285 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %284, i32 0, i32 8
  store i8* %283, i8** %285, align 8
  br label %310

286:                                              ; preds = %270
  %287 = load i32, i32* %6, align 4
  %288 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %289 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %288, i32 0, i32 6
  store i32 %287, i32* %289, align 8
  %290 = load i8*, i8** @CS42L42_HSBIAS_RAMP_TIME2, align 8
  %291 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %292 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %291, i32 0, i32 8
  store i8* %290, i8** %292, align 8
  br label %310

293:                                              ; preds = %270
  %294 = load i32, i32* %6, align 4
  %295 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %296 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %295, i32 0, i32 6
  store i32 %294, i32* %296, align 8
  %297 = load i8*, i8** @CS42L42_HSBIAS_RAMP_TIME3, align 8
  %298 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %299 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %298, i32 0, i32 8
  store i8* %297, i8** %299, align 8
  br label %310

300:                                              ; preds = %270
  %301 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %302 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %301, i32 0, i32 0
  %303 = load i32, i32* %6, align 4
  %304 = call i32 (%struct.TYPE_2__*, i8*, i32, ...) @dev_err(%struct.TYPE_2__* %302, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0), i32 %303)
  %305 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %306 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %305, i32 0, i32 6
  store i32 139, i32* %306, align 8
  %307 = load i8*, i8** @CS42L42_HSBIAS_RAMP_TIME2, align 8
  %308 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %309 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %308, i32 0, i32 8
  store i8* %307, i8** %309, align 8
  br label %310

310:                                              ; preds = %300, %293, %286, %279, %272
  br label %317

311:                                              ; preds = %265
  %312 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %313 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %312, i32 0, i32 6
  store i32 139, i32* %313, align 8
  %314 = load i8*, i8** @CS42L42_HSBIAS_RAMP_TIME2, align 8
  %315 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %316 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %315, i32 0, i32 8
  store i8* %314, i8** %316, align 8
  br label %317

317:                                              ; preds = %311, %310
  %318 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %319 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %318, i32 0, i32 7
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* @CS42L42_HS_BIAS_CTL, align 4
  %322 = load i32, i32* @CS42L42_HSBIAS_RAMP_MASK, align 4
  %323 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %324 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %323, i32 0, i32 6
  %325 = load i32, i32* %324, align 8
  %326 = load i32, i32* @CS42L42_HSBIAS_RAMP_SHIFT, align 4
  %327 = shl i32 %325, %326
  %328 = call i32 @regmap_update_bits(i32 %320, i32 %321, i32 %322, i32 %327)
  %329 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %329)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #2

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*, i32, ...) #2

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #2

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
