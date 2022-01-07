; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ews.c_snd_ice1712_ews_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ews.c_snd_ice1712_ews_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32, i32, i32, %struct.TYPE_11__, %struct.snd_akm4xxx*, %struct.TYPE_10__, i32, %struct.TYPE_12__*, %struct.TYPE_13__*, %struct.ews_spec* }
%struct.TYPE_11__ = type { i32 }
%struct.snd_akm4xxx = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_8__, %struct.snd_ice1712* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_13__ = type { i32 }
%struct.ews_spec = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"ICE1712 GPIO 1\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"unable to create I2C bus\0A\00", align 1
@snd_ice1712_ewx_cs8427_bit_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"PCF9554\00", align 1
@ICE1712_6FIRE_PCF9554_ADDR = common dso_local global i32 0, align 4
@EWS_I2C_6FIRE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"PCF9554 initialization failed\0A\00", align 1
@PCF9554_REG_CONFIG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"CS8404\00", align 1
@ICE1712_EWS88MT_CS8404_ADDR = common dso_local global i32 0, align 4
@EWS_I2C_CS8404 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"PCF8574 (1st)\00", align 1
@ICE1712_EWS88MT_INPUT_ADDR = common dso_local global i32 0, align 4
@EWS_I2C_PCF1 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"PCF8574 (2nd)\00", align 1
@ICE1712_EWS88MT_OUTPUT_ADDR = common dso_local global i32 0, align 4
@EWS_I2C_PCF2 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"PCF8575\00", align 1
@ICE1712_EWS88D_PCF_ADDR = common dso_local global i32 0, align 4
@EWS_I2C_88D = common dso_local global i64 0, align 8
@CS8427_BASE_ADDR = common dso_local global i32 0, align 4
@CS8427_REG_RECVERRMASK = common dso_local global i32 0, align 4
@CS8427_UNLOCK = common dso_local global i32 0, align 4
@CS8427_CONF = common dso_local global i32 0, align 4
@CS8427_BIP = common dso_local global i32 0, align 4
@CS8427_PAR = common dso_local global i32 0, align 4
@ICE1712_6FIRE_CS8427_ADDR = common dso_local global i32 0, align 4
@ews88_open_spdif = common dso_local global i32 0, align 4
@ews88_setup_spdif = common dso_local global i32 0, align 4
@ews88_spdif_default_get = common dso_local global i32 0, align 4
@ews88_spdif_default_put = common dso_local global i32 0, align 4
@ews88_spdif_stream_get = common dso_local global i32 0, align 4
@ews88_spdif_stream_put = common dso_local global i32 0, align 4
@akm_ews88mt = common dso_local global i32 0, align 4
@akm_ews88mt_priv = common dso_local global i32 0, align 4
@akm_ewx2496 = common dso_local global i32 0, align 4
@akm_ewx2496_priv = common dso_local global i32 0, align 4
@akm_6fire = common dso_local global i32 0, align 4
@akm_6fire_priv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*)* @snd_ice1712_ews_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ice1712_ews_init(%struct.snd_ice1712* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_akm4xxx*, align 8
  %6 = alloca %struct.ews_spec*, align 8
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  %7 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %8 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %31 [
    i32 130, label %11
    i32 132, label %16
    i32 131, label %16
    i32 129, label %16
    i32 128, label %16
    i32 133, label %21
    i32 134, label %26
  ]

11:                                               ; preds = %1
  %12 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %13 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %12, i32 0, i32 0
  store i32 2, i32* %13, align 8
  %14 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %15 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %14, i32 0, i32 1
  store i32 2, i32* %15, align 4
  br label %31

16:                                               ; preds = %1, %1, %1, %1
  %17 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %18 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %17, i32 0, i32 0
  store i32 8, i32* %18, align 8
  %19 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %20 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %19, i32 0, i32 1
  store i32 8, i32* %20, align 4
  br label %31

21:                                               ; preds = %1
  %22 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %23 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %22, i32 0, i32 0
  store i32 8, i32* %23, align 8
  %24 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %25 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %24, i32 0, i32 1
  store i32 8, i32* %25, align 4
  br label %31

26:                                               ; preds = %1
  %27 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %28 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %27, i32 0, i32 0
  store i32 6, i32* %28, align 8
  %29 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %30 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %29, i32 0, i32 1
  store i32 6, i32* %30, align 4
  br label %31

31:                                               ; preds = %1, %26, %21, %16, %11
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @kzalloc(i32 8, i32 %32)
  %34 = bitcast i8* %33 to %struct.ews_spec*
  store %struct.ews_spec* %34, %struct.ews_spec** %6, align 8
  %35 = load %struct.ews_spec*, %struct.ews_spec** %6, align 8
  %36 = icmp ne %struct.ews_spec* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %288

40:                                               ; preds = %31
  %41 = load %struct.ews_spec*, %struct.ews_spec** %6, align 8
  %42 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %43 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %42, i32 0, i32 9
  store %struct.ews_spec* %41, %struct.ews_spec** %43, align 8
  %44 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %45 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %44, i32 0, i32 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %48 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %47, i32 0, i32 7
  %49 = call i32 @snd_i2c_bus_create(%struct.TYPE_13__* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* null, %struct.TYPE_12__** %48)
  store i32 %49, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %40
  %52 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %53 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %52, i32 0, i32 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %288

59:                                               ; preds = %40
  %60 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %61 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %62 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %61, i32 0, i32 7
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  store %struct.snd_ice1712* %60, %struct.snd_ice1712** %64, align 8
  %65 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %66 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %65, i32 0, i32 7
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  store i32* @snd_ice1712_ewx_cs8427_bit_ops, i32** %69, align 8
  %70 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %71 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %167 [
    i32 134, label %74
    i32 132, label %99
    i32 131, label %99
    i32 129, label %99
    i32 128, label %99
    i32 133, label %151
  ]

74:                                               ; preds = %59
  %75 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %76 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %75, i32 0, i32 7
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = load i32, i32* @ICE1712_6FIRE_PCF9554_ADDR, align 4
  %79 = load %struct.ews_spec*, %struct.ews_spec** %6, align 8
  %80 = getelementptr inbounds %struct.ews_spec, %struct.ews_spec* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @EWS_I2C_6FIRE, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = call i32 @snd_i2c_device_create(%struct.TYPE_12__* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32* %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %74
  %88 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %89 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %88, i32 0, i32 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @dev_err(i32 %92, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %94 = load i32, i32* %4, align 4
  store i32 %94, i32* %2, align 4
  br label %288

95:                                               ; preds = %74
  %96 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %97 = load i32, i32* @PCF9554_REG_CONFIG, align 4
  %98 = call i32 @snd_ice1712_6fire_write_pca(%struct.snd_ice1712* %96, i32 %97, i32 128)
  br label %167

99:                                               ; preds = %59, %59, %59, %59
  %100 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %101 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %100, i32 0, i32 7
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  %103 = load i32, i32* @ICE1712_EWS88MT_CS8404_ADDR, align 4
  %104 = load %struct.ews_spec*, %struct.ews_spec** %6, align 8
  %105 = getelementptr inbounds %struct.ews_spec, %struct.ews_spec* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* @EWS_I2C_CS8404, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = call i32 @snd_i2c_device_create(%struct.TYPE_12__* %102, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %103, i32* %108)
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %99
  %113 = load i32, i32* %4, align 4
  store i32 %113, i32* %2, align 4
  br label %288

114:                                              ; preds = %99
  %115 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %116 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %115, i32 0, i32 7
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = load i32, i32* @ICE1712_EWS88MT_INPUT_ADDR, align 4
  %119 = load %struct.ews_spec*, %struct.ews_spec** %6, align 8
  %120 = getelementptr inbounds %struct.ews_spec, %struct.ews_spec* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* @EWS_I2C_PCF1, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = call i32 @snd_i2c_device_create(%struct.TYPE_12__* %117, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %118, i32* %123)
  store i32 %124, i32* %4, align 4
  %125 = load i32, i32* %4, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %114
  %128 = load i32, i32* %4, align 4
  store i32 %128, i32* %2, align 4
  br label %288

129:                                              ; preds = %114
  %130 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %131 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %130, i32 0, i32 7
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %131, align 8
  %133 = load i32, i32* @ICE1712_EWS88MT_OUTPUT_ADDR, align 4
  %134 = load %struct.ews_spec*, %struct.ews_spec** %6, align 8
  %135 = getelementptr inbounds %struct.ews_spec, %struct.ews_spec* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i64, i64* @EWS_I2C_PCF2, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = call i32 @snd_i2c_device_create(%struct.TYPE_12__* %132, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %133, i32* %138)
  store i32 %139, i32* %4, align 4
  %140 = load i32, i32* %4, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %129
  %143 = load i32, i32* %4, align 4
  store i32 %143, i32* %2, align 4
  br label %288

144:                                              ; preds = %129
  %145 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %146 = call i32 @snd_ice1712_ews88mt_chip_select(%struct.snd_ice1712* %145, i32 15)
  store i32 %146, i32* %4, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = load i32, i32* %4, align 4
  store i32 %149, i32* %2, align 4
  br label %288

150:                                              ; preds = %144
  br label %167

151:                                              ; preds = %59
  %152 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %153 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %152, i32 0, i32 7
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = load i32, i32* @ICE1712_EWS88D_PCF_ADDR, align 4
  %156 = load %struct.ews_spec*, %struct.ews_spec** %6, align 8
  %157 = getelementptr inbounds %struct.ews_spec, %struct.ews_spec* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i64, i64* @EWS_I2C_88D, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = call i32 @snd_i2c_device_create(%struct.TYPE_12__* %154, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %155, i32* %160)
  store i32 %161, i32* %4, align 4
  %162 = load i32, i32* %4, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %151
  %165 = load i32, i32* %4, align 4
  store i32 %165, i32* %2, align 4
  br label %288

166:                                              ; preds = %151
  br label %167

167:                                              ; preds = %59, %166, %150, %95
  %168 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %169 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  switch i32 %171, label %249 [
    i32 130, label %172
    i32 134, label %192
    i32 132, label %212
    i32 131, label %212
    i32 129, label %212
    i32 128, label %212
    i32 133, label %212
  ]

172:                                              ; preds = %167
  %173 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %174 = load i32, i32* @CS8427_BASE_ADDR, align 4
  %175 = call i32 @snd_ice1712_init_cs8427(%struct.snd_ice1712* %173, i32 %174)
  store i32 %175, i32* %4, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %172
  %178 = load i32, i32* %4, align 4
  store i32 %178, i32* %2, align 4
  br label %288

179:                                              ; preds = %172
  %180 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %181 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @CS8427_REG_RECVERRMASK, align 4
  %184 = load i32, i32* @CS8427_UNLOCK, align 4
  %185 = load i32, i32* @CS8427_CONF, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @CS8427_BIP, align 4
  %188 = or i32 %186, %187
  %189 = load i32, i32* @CS8427_PAR, align 4
  %190 = or i32 %188, %189
  %191 = call i32 @snd_cs8427_reg_write(i32 %182, i32 %183, i32 %190)
  br label %249

192:                                              ; preds = %167
  %193 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %194 = load i32, i32* @ICE1712_6FIRE_CS8427_ADDR, align 4
  %195 = call i32 @snd_ice1712_init_cs8427(%struct.snd_ice1712* %193, i32 %194)
  store i32 %195, i32* %4, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %192
  %198 = load i32, i32* %4, align 4
  store i32 %198, i32* %2, align 4
  br label %288

199:                                              ; preds = %192
  %200 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %201 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @CS8427_REG_RECVERRMASK, align 4
  %204 = load i32, i32* @CS8427_UNLOCK, align 4
  %205 = load i32, i32* @CS8427_CONF, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* @CS8427_BIP, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @CS8427_PAR, align 4
  %210 = or i32 %208, %209
  %211 = call i32 @snd_cs8427_reg_write(i32 %202, i32 %203, i32 %210)
  br label %249

212:                                              ; preds = %167, %167, %167, %167, %167
  %213 = load i32, i32* @ews88_open_spdif, align 4
  %214 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %215 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %214, i32 0, i32 5
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 5
  store i32 %213, i32* %217, align 4
  %218 = load i32, i32* @ews88_setup_spdif, align 4
  %219 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %220 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %219, i32 0, i32 5
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 4
  store i32 %218, i32* %222, align 4
  %223 = load i32, i32* @ews88_spdif_default_get, align 4
  %224 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %225 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %224, i32 0, i32 5
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 3
  store i32 %223, i32* %227, align 4
  %228 = load i32, i32* @ews88_spdif_default_put, align 4
  %229 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %230 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %229, i32 0, i32 5
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 2
  store i32 %228, i32* %232, align 4
  %233 = load i32, i32* @ews88_spdif_stream_get, align 4
  %234 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %235 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %234, i32 0, i32 5
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 1
  store i32 %233, i32* %237, align 4
  %238 = load i32, i32* @ews88_spdif_stream_put, align 4
  %239 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %240 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %239, i32 0, i32 5
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 0
  store i32 %238, i32* %242, align 4
  %243 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %244 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %245 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %244, i32 0, i32 5
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @snd_ice1712_ews_cs8404_spdif_write(%struct.snd_ice1712* %243, i32 %247)
  br label %249

249:                                              ; preds = %167, %212, %199, %179
  %250 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %251 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %250, i32 0, i32 3
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  switch i32 %253, label %255 [
    i32 133, label %254
  ]

254:                                              ; preds = %249
  store i32 0, i32* %2, align 4
  br label %288

255:                                              ; preds = %249
  %256 = load i32, i32* @GFP_KERNEL, align 4
  %257 = call i8* @kzalloc(i32 4, i32 %256)
  %258 = bitcast i8* %257 to %struct.snd_akm4xxx*
  %259 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %260 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %259, i32 0, i32 4
  store %struct.snd_akm4xxx* %258, %struct.snd_akm4xxx** %260, align 8
  store %struct.snd_akm4xxx* %258, %struct.snd_akm4xxx** %5, align 8
  %261 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %5, align 8
  %262 = icmp ne %struct.snd_akm4xxx* %261, null
  br i1 %262, label %266, label %263

263:                                              ; preds = %255
  %264 = load i32, i32* @ENOMEM, align 4
  %265 = sub nsw i32 0, %264
  store i32 %265, i32* %2, align 4
  br label %288

266:                                              ; preds = %255
  %267 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %268 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %267, i32 0, i32 2
  store i32 1, i32* %268, align 8
  %269 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %270 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %269, i32 0, i32 3
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  switch i32 %272, label %285 [
    i32 132, label %273
    i32 131, label %273
    i32 129, label %273
    i32 128, label %273
    i32 130, label %277
    i32 134, label %281
  ]

273:                                              ; preds = %266, %266, %266, %266
  %274 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %5, align 8
  %275 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %276 = call i32 @snd_ice1712_akm4xxx_init(%struct.snd_akm4xxx* %274, i32* @akm_ews88mt, i32* @akm_ews88mt_priv, %struct.snd_ice1712* %275)
  store i32 %276, i32* %4, align 4
  br label %286

277:                                              ; preds = %266
  %278 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %5, align 8
  %279 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %280 = call i32 @snd_ice1712_akm4xxx_init(%struct.snd_akm4xxx* %278, i32* @akm_ewx2496, i32* @akm_ewx2496_priv, %struct.snd_ice1712* %279)
  store i32 %280, i32* %4, align 4
  br label %286

281:                                              ; preds = %266
  %282 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %5, align 8
  %283 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %284 = call i32 @snd_ice1712_akm4xxx_init(%struct.snd_akm4xxx* %282, i32* @akm_6fire, i32* @akm_6fire_priv, %struct.snd_ice1712* %283)
  store i32 %284, i32* %4, align 4
  br label %286

285:                                              ; preds = %266
  store i32 0, i32* %4, align 4
  br label %286

286:                                              ; preds = %285, %281, %277, %273
  %287 = load i32, i32* %4, align 4
  store i32 %287, i32* %2, align 4
  br label %288

288:                                              ; preds = %286, %263, %254, %197, %177, %164, %148, %142, %127, %112, %87, %51, %37
  %289 = load i32, i32* %2, align 4
  ret i32 %289
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_i2c_bus_create(%struct.TYPE_13__*, i8*, i32*, %struct.TYPE_12__**) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_i2c_device_create(%struct.TYPE_12__*, i8*, i32, i32*) #1

declare dso_local i32 @snd_ice1712_6fire_write_pca(%struct.snd_ice1712*, i32, i32) #1

declare dso_local i32 @snd_ice1712_ews88mt_chip_select(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_ice1712_init_cs8427(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_cs8427_reg_write(i32, i32, i32) #1

declare dso_local i32 @snd_ice1712_ews_cs8404_spdif_write(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_ice1712_akm4xxx_init(%struct.snd_akm4xxx*, i32*, i32*, %struct.snd_ice1712*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
