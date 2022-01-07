; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_read_device_properties.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_read_device_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nau8825 = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [21 x i8] c"nuvoton,jkdet-enable\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"nuvoton,jkdet-pull-enable\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"nuvoton,jkdet-pull-up\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"nuvoton,jkdet-polarity\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"nuvoton,micbias-voltage\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"nuvoton,vref-impedance\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"nuvoton,sar-threshold-num\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"nuvoton,sar-threshold\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"nuvoton,sar-hysteresis\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"nuvoton,sar-voltage\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"nuvoton,sar-compare-time\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"nuvoton,sar-sampling-time\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"nuvoton,short-key-debounce\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"nuvoton,jack-insert-debounce\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"nuvoton,jack-eject-debounce\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"nuvoton,crosstalk-enable\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [57 x i8] c"No 'mclk' clock found, assume MCLK is managed externally\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.nau8825*)* @nau8825_read_device_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8825_read_device_properties(%struct.device* %0, %struct.nau8825* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.nau8825*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.nau8825* %1, %struct.nau8825** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call i8* @device_property_read_bool(%struct.device* %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %10 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %9, i32 0, i32 16
  store i8* %8, i8** %10, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i8* @device_property_read_bool(%struct.device* %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %14 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %13, i32 0, i32 15
  store i8* %12, i8** %14, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i8* @device_property_read_bool(%struct.device* %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %17 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %18 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %17, i32 0, i32 14
  store i8* %16, i8** %18, align 8
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %21 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %20, i32 0, i32 0
  %22 = call i32 @device_property_read_u32(%struct.device* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %27 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %28

28:                                               ; preds = %25, %2
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %31 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %30, i32 0, i32 1
  %32 = call i32 @device_property_read_u32(%struct.device* %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %37 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %36, i32 0, i32 1
  store i32 6, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %28
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %41 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %40, i32 0, i32 2
  %42 = call i32 @device_property_read_u32(%struct.device* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %47 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %46, i32 0, i32 2
  store i32 2, i32* %47, align 8
  br label %48

48:                                               ; preds = %45, %38
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %51 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %50, i32 0, i32 3
  %52 = call i32 @device_property_read_u32(%struct.device* %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %57 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %56, i32 0, i32 3
  store i32 4, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %48
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %61 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %64 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @device_property_read_u32_array(%struct.device* %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32* %62, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %58
  %70 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %71 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 8, i32* %73, align 4
  %74 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %75 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 18, i32* %77, align 4
  %78 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %79 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  store i32 38, i32* %81, align 4
  %82 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %83 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %82, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 3
  store i32 115, i32* %85, align 4
  br label %86

86:                                               ; preds = %69, %58
  %87 = load %struct.device*, %struct.device** %4, align 8
  %88 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %89 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %88, i32 0, i32 5
  %90 = call i32 @device_property_read_u32(%struct.device* %87, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32* %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %95 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %94, i32 0, i32 5
  store i32 0, i32* %95, align 8
  br label %96

96:                                               ; preds = %93, %86
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %99 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %98, i32 0, i32 6
  %100 = call i32 @device_property_read_u32(%struct.device* %97, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32* %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %105 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %104, i32 0, i32 6
  store i32 6, i32* %105, align 4
  br label %106

106:                                              ; preds = %103, %96
  %107 = load %struct.device*, %struct.device** %4, align 8
  %108 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %109 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %108, i32 0, i32 7
  %110 = call i32 @device_property_read_u32(%struct.device* %107, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32* %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %115 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %114, i32 0, i32 7
  store i32 1, i32* %115, align 8
  br label %116

116:                                              ; preds = %113, %106
  %117 = load %struct.device*, %struct.device** %4, align 8
  %118 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %119 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %118, i32 0, i32 8
  %120 = call i32 @device_property_read_u32(%struct.device* %117, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32* %119)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %116
  %124 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %125 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %124, i32 0, i32 8
  store i32 1, i32* %125, align 4
  br label %126

126:                                              ; preds = %123, %116
  %127 = load %struct.device*, %struct.device** %4, align 8
  %128 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %129 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %128, i32 0, i32 9
  %130 = call i32 @device_property_read_u32(%struct.device* %127, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32* %129)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %135 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %134, i32 0, i32 9
  store i32 3, i32* %135, align 8
  br label %136

136:                                              ; preds = %133, %126
  %137 = load %struct.device*, %struct.device** %4, align 8
  %138 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %139 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %138, i32 0, i32 10
  %140 = call i32 @device_property_read_u32(%struct.device* %137, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32* %139)
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %6, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %136
  %144 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %145 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %144, i32 0, i32 10
  store i32 7, i32* %145, align 4
  br label %146

146:                                              ; preds = %143, %136
  %147 = load %struct.device*, %struct.device** %4, align 8
  %148 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %149 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %148, i32 0, i32 11
  %150 = call i32 @device_property_read_u32(%struct.device* %147, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32* %149)
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %146
  %154 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %155 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %154, i32 0, i32 11
  store i32 0, i32* %155, align 8
  br label %156

156:                                              ; preds = %153, %146
  %157 = load %struct.device*, %struct.device** %4, align 8
  %158 = call i8* @device_property_read_bool(%struct.device* %157, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0))
  %159 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %160 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %159, i32 0, i32 13
  store i8* %158, i8** %160, align 8
  %161 = load %struct.device*, %struct.device** %4, align 8
  %162 = call i32* @devm_clk_get(%struct.device* %161, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %163 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %164 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %163, i32 0, i32 12
  store i32* %162, i32** %164, align 8
  %165 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %166 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %165, i32 0, i32 12
  %167 = load i32*, i32** %166, align 8
  %168 = call i32 @PTR_ERR(i32* %167)
  %169 = load i32, i32* @EPROBE_DEFER, align 4
  %170 = sub nsw i32 0, %169
  %171 = icmp eq i32 %168, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %156
  %173 = load i32, i32* @EPROBE_DEFER, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %3, align 4
  br label %200

175:                                              ; preds = %156
  %176 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %177 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %176, i32 0, i32 12
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @PTR_ERR(i32* %178)
  %180 = load i32, i32* @ENOENT, align 4
  %181 = sub nsw i32 0, %180
  %182 = icmp eq i32 %179, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %175
  %184 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %185 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %184, i32 0, i32 12
  store i32* null, i32** %185, align 8
  %186 = load %struct.device*, %struct.device** %4, align 8
  %187 = call i32 @dev_info(%struct.device* %186, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.17, i64 0, i64 0))
  br label %198

188:                                              ; preds = %175
  %189 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %190 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %189, i32 0, i32 12
  %191 = load i32*, i32** %190, align 8
  %192 = call i64 @IS_ERR(i32* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %188
  %195 = load i32, i32* @EINVAL, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %3, align 4
  br label %200

197:                                              ; preds = %188
  br label %198

198:                                              ; preds = %197, %183
  br label %199

199:                                              ; preds = %198
  store i32 0, i32* %3, align 4
  br label %200

200:                                              ; preds = %199, %194, %172
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local i8* @device_property_read_bool(%struct.device*, i8*) #1

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i32 @device_property_read_u32_array(%struct.device*, i8*, i32*, i32) #1

declare dso_local i32* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
