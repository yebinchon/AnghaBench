; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_pcm.c_s3c_pcm_dev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_pcm.c_s3c_pcm_dev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_pcm_info = type { i32, i8*, i8*, %struct.TYPE_12__*, %struct.TYPE_13__*, i8*, i32, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_11__ = type { %struct.s3c_audio_pdata* }
%struct.s3c_audio_pdata = type { i32*, i32, i32, i64 (%struct.platform_device.0*)* }
%struct.platform_device.0 = type opaque
%struct.platform_device = type { i32, %struct.TYPE_11__ }
%struct.resource = type { i64 }

@s3c_pcm = common dso_local global %struct.s3c_pcm_info* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"id %d out of range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unable to configure gpio\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"audio-bus\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to get audio-bus clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"pcm\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"failed to get pcm clock\0A\00", align 1
@S3C_PCM_RXFIFO = common dso_local global i64 0, align 8
@s3c_pcm_stereo_in = common dso_local global %struct.TYPE_13__* null, align 8
@S3C_PCM_TXFIFO = common dso_local global i64 0, align 8
@s3c_pcm_stereo_out = common dso_local global %struct.TYPE_12__* null, align 8
@.str.6 = private unnamed_addr constant [32 x i8] c"failed to get register DMA: %d\0A\00", align 1
@s3c_pcm_component = common dso_local global i32 0, align 4
@s3c_pcm_dai = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [32 x i8] c"failed to get register DAI: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s3c_pcm_dev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_pcm_dev_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.s3c_pcm_info*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.s3c_audio_pdata*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.s3c_pcm_info*, %struct.s3c_pcm_info** @s3c_pcm, align 8
  %18 = call i32 @ARRAY_SIZE(%struct.s3c_pcm_info* %17)
  %19 = icmp sge i32 %16, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %13, %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %264

29:                                               ; preds = %13
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load %struct.s3c_audio_pdata*, %struct.s3c_audio_pdata** %32, align 8
  store %struct.s3c_audio_pdata* %33, %struct.s3c_audio_pdata** %6, align 8
  %34 = load %struct.s3c_audio_pdata*, %struct.s3c_audio_pdata** %6, align 8
  %35 = icmp ne %struct.s3c_audio_pdata* %34, null
  br i1 %35, label %36, label %55

36:                                               ; preds = %29
  %37 = load %struct.s3c_audio_pdata*, %struct.s3c_audio_pdata** %6, align 8
  %38 = getelementptr inbounds %struct.s3c_audio_pdata, %struct.s3c_audio_pdata* %37, i32 0, i32 3
  %39 = load i64 (%struct.platform_device.0*)*, i64 (%struct.platform_device.0*)** %38, align 8
  %40 = icmp ne i64 (%struct.platform_device.0*)* %39, null
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load %struct.s3c_audio_pdata*, %struct.s3c_audio_pdata** %6, align 8
  %43 = getelementptr inbounds %struct.s3c_audio_pdata, %struct.s3c_audio_pdata* %42, i32 0, i32 3
  %44 = load i64 (%struct.platform_device.0*)*, i64 (%struct.platform_device.0*)** %43, align 8
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = bitcast %struct.platform_device* %45 to %struct.platform_device.0*
  %47 = call i64 %44(%struct.platform_device.0* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 1
  %52 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %264

55:                                               ; preds = %41, %36, %29
  %56 = load %struct.s3c_pcm_info*, %struct.s3c_pcm_info** @s3c_pcm, align 8
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.s3c_pcm_info, %struct.s3c_pcm_info* %56, i64 %60
  store %struct.s3c_pcm_info* %61, %struct.s3c_pcm_info** %4, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 1
  %64 = load %struct.s3c_pcm_info*, %struct.s3c_pcm_info** %4, align 8
  %65 = getelementptr inbounds %struct.s3c_pcm_info, %struct.s3c_pcm_info* %64, i32 0, i32 7
  store %struct.TYPE_11__* %63, %struct.TYPE_11__** %65, align 8
  %66 = load %struct.s3c_pcm_info*, %struct.s3c_pcm_info** %4, align 8
  %67 = getelementptr inbounds %struct.s3c_pcm_info, %struct.s3c_pcm_info* %66, i32 0, i32 6
  %68 = call i32 @spin_lock_init(i32* %67)
  %69 = load %struct.s3c_pcm_info*, %struct.s3c_pcm_info** %4, align 8
  %70 = getelementptr inbounds %struct.s3c_pcm_info, %struct.s3c_pcm_info* %69, i32 0, i32 0
  store i32 128, i32* %70, align 8
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = load i32, i32* @IORESOURCE_MEM, align 4
  %73 = call %struct.resource* @platform_get_resource(%struct.platform_device* %71, i32 %72, i32 0)
  store %struct.resource* %73, %struct.resource** %5, align 8
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 1
  %76 = load %struct.resource*, %struct.resource** %5, align 8
  %77 = call i8* @devm_ioremap_resource(%struct.TYPE_11__* %75, %struct.resource* %76)
  %78 = load %struct.s3c_pcm_info*, %struct.s3c_pcm_info** %4, align 8
  %79 = getelementptr inbounds %struct.s3c_pcm_info, %struct.s3c_pcm_info* %78, i32 0, i32 5
  store i8* %77, i8** %79, align 8
  %80 = load %struct.s3c_pcm_info*, %struct.s3c_pcm_info** %4, align 8
  %81 = getelementptr inbounds %struct.s3c_pcm_info, %struct.s3c_pcm_info* %80, i32 0, i32 5
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @IS_ERR(i8* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %55
  %86 = load %struct.s3c_pcm_info*, %struct.s3c_pcm_info** %4, align 8
  %87 = getelementptr inbounds %struct.s3c_pcm_info, %struct.s3c_pcm_info* %86, i32 0, i32 5
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @PTR_ERR(i8* %88)
  store i32 %89, i32* %2, align 4
  br label %264

90:                                               ; preds = %55
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 1
  %93 = call i8* @devm_clk_get(%struct.TYPE_11__* %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %94 = load %struct.s3c_pcm_info*, %struct.s3c_pcm_info** %4, align 8
  %95 = getelementptr inbounds %struct.s3c_pcm_info, %struct.s3c_pcm_info* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  %96 = load %struct.s3c_pcm_info*, %struct.s3c_pcm_info** %4, align 8
  %97 = getelementptr inbounds %struct.s3c_pcm_info, %struct.s3c_pcm_info* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = call i64 @IS_ERR(i8* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %90
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 1
  %104 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %103, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %105 = load %struct.s3c_pcm_info*, %struct.s3c_pcm_info** %4, align 8
  %106 = getelementptr inbounds %struct.s3c_pcm_info, %struct.s3c_pcm_info* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @PTR_ERR(i8* %107)
  store i32 %108, i32* %2, align 4
  br label %264

109:                                              ; preds = %90
  %110 = load %struct.s3c_pcm_info*, %struct.s3c_pcm_info** %4, align 8
  %111 = getelementptr inbounds %struct.s3c_pcm_info, %struct.s3c_pcm_info* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @clk_prepare_enable(i8* %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %2, align 4
  br label %264

118:                                              ; preds = %109
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 1
  %121 = load %struct.s3c_pcm_info*, %struct.s3c_pcm_info** %4, align 8
  %122 = call i32 @dev_set_drvdata(%struct.TYPE_11__* %120, %struct.s3c_pcm_info* %121)
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 1
  %125 = call i8* @devm_clk_get(%struct.TYPE_11__* %124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %126 = load %struct.s3c_pcm_info*, %struct.s3c_pcm_info** %4, align 8
  %127 = getelementptr inbounds %struct.s3c_pcm_info, %struct.s3c_pcm_info* %126, i32 0, i32 2
  store i8* %125, i8** %127, align 8
  %128 = load %struct.s3c_pcm_info*, %struct.s3c_pcm_info** %4, align 8
  %129 = getelementptr inbounds %struct.s3c_pcm_info, %struct.s3c_pcm_info* %128, i32 0, i32 2
  %130 = load i8*, i8** %129, align 8
  %131 = call i64 @IS_ERR(i8* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %118
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 1
  %136 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %135, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %137 = load %struct.s3c_pcm_info*, %struct.s3c_pcm_info** %4, align 8
  %138 = getelementptr inbounds %struct.s3c_pcm_info, %struct.s3c_pcm_info* %137, i32 0, i32 2
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @PTR_ERR(i8* %139)
  store i32 %140, i32* %8, align 4
  br label %258

141:                                              ; preds = %118
  %142 = load %struct.s3c_pcm_info*, %struct.s3c_pcm_info** %4, align 8
  %143 = getelementptr inbounds %struct.s3c_pcm_info, %struct.s3c_pcm_info* %142, i32 0, i32 2
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @clk_prepare_enable(i8* %144)
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  br label %258

149:                                              ; preds = %141
  %150 = load %struct.resource*, %struct.resource** %5, align 8
  %151 = getelementptr inbounds %struct.resource, %struct.resource* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @S3C_PCM_RXFIFO, align 8
  %154 = add nsw i64 %152, %153
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** @s3c_pcm_stereo_in, align 8
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 1
  store i64 %154, i64* %161, align 8
  %162 = load %struct.resource*, %struct.resource** %5, align 8
  %163 = getelementptr inbounds %struct.resource, %struct.resource* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @S3C_PCM_TXFIFO, align 8
  %166 = add nsw i64 %164, %165
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s3c_pcm_stereo_out, align 8
  %168 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %169 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 1
  store i64 %166, i64* %173, align 8
  store i32* null, i32** %7, align 8
  %174 = load %struct.s3c_audio_pdata*, %struct.s3c_audio_pdata** %6, align 8
  %175 = icmp ne %struct.s3c_audio_pdata* %174, null
  br i1 %175, label %176, label %200

176:                                              ; preds = %149
  %177 = load %struct.s3c_audio_pdata*, %struct.s3c_audio_pdata** %6, align 8
  %178 = getelementptr inbounds %struct.s3c_audio_pdata, %struct.s3c_audio_pdata* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** @s3c_pcm_stereo_in, align 8
  %181 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %182 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 0
  store i32 %179, i32* %186, align 8
  %187 = load %struct.s3c_audio_pdata*, %struct.s3c_audio_pdata** %6, align 8
  %188 = getelementptr inbounds %struct.s3c_audio_pdata, %struct.s3c_audio_pdata* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s3c_pcm_stereo_out, align 8
  %191 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %192 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 0
  store i32 %189, i32* %196, align 8
  %197 = load %struct.s3c_audio_pdata*, %struct.s3c_audio_pdata** %6, align 8
  %198 = getelementptr inbounds %struct.s3c_audio_pdata, %struct.s3c_audio_pdata* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  store i32* %199, i32** %7, align 8
  br label %200

200:                                              ; preds = %176, %149
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** @s3c_pcm_stereo_in, align 8
  %202 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %203 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i64 %205
  %207 = load %struct.s3c_pcm_info*, %struct.s3c_pcm_info** %4, align 8
  %208 = getelementptr inbounds %struct.s3c_pcm_info, %struct.s3c_pcm_info* %207, i32 0, i32 4
  store %struct.TYPE_13__* %206, %struct.TYPE_13__** %208, align 8
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s3c_pcm_stereo_out, align 8
  %210 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %211 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i64 %213
  %215 = load %struct.s3c_pcm_info*, %struct.s3c_pcm_info** %4, align 8
  %216 = getelementptr inbounds %struct.s3c_pcm_info, %struct.s3c_pcm_info* %215, i32 0, i32 3
  store %struct.TYPE_12__* %214, %struct.TYPE_12__** %216, align 8
  %217 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %218 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %217, i32 0, i32 1
  %219 = load i32*, i32** %7, align 8
  %220 = call i32 @samsung_asoc_dma_platform_register(%struct.TYPE_11__* %218, i32* %219, i32* null, i32* null, i32* null)
  store i32 %220, i32* %8, align 4
  %221 = load i32, i32* %8, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %200
  %224 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %225 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %224, i32 0, i32 1
  %226 = load i32, i32* %8, align 4
  %227 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %225, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %226)
  br label %253

228:                                              ; preds = %200
  %229 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %230 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %229, i32 0, i32 1
  %231 = call i32 @pm_runtime_enable(%struct.TYPE_11__* %230)
  %232 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %233 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %232, i32 0, i32 1
  %234 = load i32*, i32** @s3c_pcm_dai, align 8
  %235 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %236 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %234, i64 %238
  %240 = call i32 @devm_snd_soc_register_component(%struct.TYPE_11__* %233, i32* @s3c_pcm_component, i32* %239, i32 1)
  store i32 %240, i32* %8, align 4
  %241 = load i32, i32* %8, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %228
  %244 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %245 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %244, i32 0, i32 1
  %246 = load i32, i32* %8, align 4
  %247 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %245, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %246)
  br label %249

248:                                              ; preds = %228
  store i32 0, i32* %2, align 4
  br label %264

249:                                              ; preds = %243
  %250 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %251 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %250, i32 0, i32 1
  %252 = call i32 @pm_runtime_disable(%struct.TYPE_11__* %251)
  br label %253

253:                                              ; preds = %249, %223
  %254 = load %struct.s3c_pcm_info*, %struct.s3c_pcm_info** %4, align 8
  %255 = getelementptr inbounds %struct.s3c_pcm_info, %struct.s3c_pcm_info* %254, i32 0, i32 2
  %256 = load i8*, i8** %255, align 8
  %257 = call i32 @clk_disable_unprepare(i8* %256)
  br label %258

258:                                              ; preds = %253, %148, %133
  %259 = load %struct.s3c_pcm_info*, %struct.s3c_pcm_info** %4, align 8
  %260 = getelementptr inbounds %struct.s3c_pcm_info, %struct.s3c_pcm_info* %259, i32 0, i32 1
  %261 = load i8*, i8** %260, align 8
  %262 = call i32 @clk_disable_unprepare(i8* %261)
  %263 = load i32, i32* %8, align 4
  store i32 %263, i32* %2, align 4
  br label %264

264:                                              ; preds = %258, %248, %116, %101, %85, %49, %20
  %265 = load i32, i32* %2, align 4
  ret i32 %265
}

declare dso_local i32 @ARRAY_SIZE(%struct.s3c_pcm_info*) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_11__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_11__*, %struct.s3c_pcm_info*) #1

declare dso_local i32 @samsung_asoc_dma_platform_register(%struct.TYPE_11__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_11__*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_11__*, i32*, i32*, i32) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_11__*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
