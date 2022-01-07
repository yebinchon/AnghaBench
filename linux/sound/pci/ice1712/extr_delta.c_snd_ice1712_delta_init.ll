; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_delta.c_snd_ice1712_delta_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_delta.c_snd_ice1712_delta_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32, i32, i32, i32, %struct.TYPE_10__, %struct.snd_akm4xxx*, %struct.TYPE_9__, %struct.TYPE_7__, %struct.TYPE_12__*, %struct.TYPE_11__*, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.snd_akm4xxx = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_12__ = type { i32*, %struct.snd_ice1712* }
%struct.TYPE_11__ = type { i32 }

@ICE1712_IREG_GPIO_DATA = common dso_local global i32 0, align 4
@ICE1712_DELTA_AP_CCLK = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [15 x i8] c"ICE1712 GPIO 1\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"unable to create I2C bus\0A\00", align 1
@ap_cs8427_i2c_ops = common dso_local global i32 0, align 4
@CS8427_BASE_ADDR = common dso_local global i32 0, align 4
@delta_1010_set_rate_val = common dso_local global i8* null, align 8
@delta_open_spdif = common dso_local global i32 0, align 4
@delta_setup_spdif = common dso_local global i32 0, align 4
@delta_spdif_default_get = common dso_local global i32 0, align 4
@delta_spdif_default_put = common dso_local global i32 0, align 4
@delta_spdif_stream_get = common dso_local global i32 0, align 4
@delta_spdif_stream_put = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@akm_audiophile = common dso_local global i32 0, align 4
@akm_audiophile_priv = common dso_local global i32 0, align 4
@akm_delta410 = common dso_local global i32 0, align 4
@akm_delta410_priv = common dso_local global i32 0, align 4
@akm_delta1010lt = common dso_local global i32 0, align 4
@akm_delta1010lt_priv = common dso_local global i32 0, align 4
@akm_delta44 = common dso_local global i32 0, align 4
@akm_delta44_priv = common dso_local global i32 0, align 4
@akm_vx442 = common dso_local global i32 0, align 4
@akm_vx442_priv = common dso_local global i32 0, align 4
@akm_delta66e = common dso_local global i32 0, align 4
@akm_delta66e_priv = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@snd_ice1712_delta_resume = common dso_local global i32 0, align 4
@snd_ice1712_delta_suspend = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*)* @snd_ice1712_delta_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ice1712_delta_init(%struct.snd_ice1712* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_akm4xxx*, align 8
  %6 = alloca i8, align 1
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  %7 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %8 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 138
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %14 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 123
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %20 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  store i32 137, i32* %21, align 8
  br label %22

22:                                               ; preds = %18, %12, %1
  %23 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %24 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 133
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %30 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 251
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %36 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  store i32 132, i32* %37, align 8
  br label %38

38:                                               ; preds = %34, %28, %22
  %39 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %40 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %83 [
    i32 139, label %43
    i32 135, label %48
    i32 134, label %53
    i32 133, label %53
    i32 138, label %70
    i32 137, label %70
    i32 136, label %70
    i32 129, label %70
    i32 130, label %70
    i32 131, label %75
    i32 128, label %78
    i32 132, label %78
  ]

43:                                               ; preds = %38
  %44 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %45 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %44, i32 0, i32 0
  store i32 2, i32* %45, align 8
  %46 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %47 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %46, i32 0, i32 1
  store i32 2, i32* %47, align 4
  br label %83

48:                                               ; preds = %38
  %49 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %50 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %49, i32 0, i32 0
  store i32 8, i32* %50, align 8
  %51 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %52 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %51, i32 0, i32 1
  store i32 2, i32* %52, align 4
  br label %83

53:                                               ; preds = %38, %38
  %54 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %55 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %54, i32 0, i32 12
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 8, i32 4
  %60 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %61 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %63 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %62, i32 0, i32 12
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 8, i32 4
  %68 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %69 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %83

70:                                               ; preds = %38, %38, %38, %38, %38
  %71 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %72 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %71, i32 0, i32 0
  store i32 8, i32* %72, align 8
  %73 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %74 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %73, i32 0, i32 1
  store i32 8, i32* %74, align 4
  br label %83

75:                                               ; preds = %38
  %76 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %77 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %76, i32 0, i32 0
  store i32 4, i32* %77, align 8
  br label %83

78:                                               ; preds = %38, %38
  %79 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %80 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %79, i32 0, i32 0
  store i32 4, i32* %80, align 8
  %81 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %82 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %81, i32 0, i32 1
  store i32 4, i32* %82, align 4
  br label %83

83:                                               ; preds = %38, %78, %75, %70, %53, %48, %43
  %84 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %85 = load i32, i32* @ICE1712_IREG_GPIO_DATA, align 4
  %86 = call zeroext i8 @snd_ice1712_read(%struct.snd_ice1712* %84, i32 %85)
  store i8 %86, i8* %6, align 1
  %87 = load i8, i8* @ICE1712_DELTA_AP_CCLK, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8, i8* %6, align 1
  %90 = zext i8 %89 to i32
  %91 = or i32 %90, %88
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %6, align 1
  %93 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %94 = load i32, i32* @ICE1712_IREG_GPIO_DATA, align 4
  %95 = load i8, i8* %6, align 1
  %96 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %93, i32 %94, i8 zeroext %95)
  %97 = call i32 @udelay(i32 5)
  %98 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %99 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  switch i32 %101, label %182 [
    i32 139, label %102
    i32 135, label %102
    i32 137, label %102
    i32 136, label %102
    i32 128, label %102
    i32 132, label %102
    i32 138, label %135
    i32 129, label %135
    i32 131, label %140
    i32 133, label %145
  ]

102:                                              ; preds = %83, %83, %83, %83, %83, %83
  %103 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %104 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %103, i32 0, i32 9
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %107 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %106, i32 0, i32 8
  %108 = call i32 @snd_i2c_bus_create(%struct.TYPE_11__* %105, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* null, %struct.TYPE_12__** %107)
  store i32 %108, i32* %4, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %102
  %111 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %112 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %111, i32 0, i32 9
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @dev_err(i32 %115, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %117 = load i32, i32* %4, align 4
  store i32 %117, i32* %2, align 4
  br label %235

118:                                              ; preds = %102
  %119 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %120 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %121 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %120, i32 0, i32 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  store %struct.snd_ice1712* %119, %struct.snd_ice1712** %123, align 8
  %124 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %125 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %124, i32 0, i32 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  store i32* @ap_cs8427_i2c_ops, i32** %127, align 8
  %128 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %129 = load i32, i32* @CS8427_BASE_ADDR, align 4
  %130 = call i32 @snd_ice1712_init_cs8427(%struct.snd_ice1712* %128, i32 %129)
  store i32 %130, i32* %4, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %118
  %133 = load i32, i32* %4, align 4
  store i32 %133, i32* %2, align 4
  br label %235

134:                                              ; preds = %118
  br label %182

135:                                              ; preds = %83, %83
  %136 = load i8*, i8** @delta_1010_set_rate_val, align 8
  %137 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %138 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %137, i32 0, i32 7
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  store i8* %136, i8** %139, align 8
  br label %182

140:                                              ; preds = %83
  %141 = load i8*, i8** @delta_1010_set_rate_val, align 8
  %142 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %143 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %142, i32 0, i32 7
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  store i8* %141, i8** %144, align 8
  br label %145

145:                                              ; preds = %83, %140
  %146 = load i32, i32* @delta_open_spdif, align 4
  %147 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %148 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %147, i32 0, i32 6
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 5
  store i32 %146, i32* %150, align 4
  %151 = load i32, i32* @delta_setup_spdif, align 4
  %152 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %153 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %152, i32 0, i32 6
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 4
  store i32 %151, i32* %155, align 4
  %156 = load i32, i32* @delta_spdif_default_get, align 4
  %157 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %158 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %157, i32 0, i32 6
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 3
  store i32 %156, i32* %160, align 4
  %161 = load i32, i32* @delta_spdif_default_put, align 4
  %162 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %163 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %162, i32 0, i32 6
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 2
  store i32 %161, i32* %165, align 4
  %166 = load i32, i32* @delta_spdif_stream_get, align 4
  %167 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %168 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %167, i32 0, i32 6
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 1
  store i32 %166, i32* %170, align 4
  %171 = load i32, i32* @delta_spdif_stream_put, align 4
  %172 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %173 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %172, i32 0, i32 6
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  store i32 %171, i32* %175, align 4
  %176 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %177 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %178 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %177, i32 0, i32 6
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @snd_ice1712_delta_cs8403_spdif_write(%struct.snd_ice1712* %176, i32 %180)
  br label %182

182:                                              ; preds = %83, %145, %135, %134
  %183 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %184 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  switch i32 %186, label %188 [
    i32 138, label %187
    i32 137, label %187
    i32 131, label %187
    i32 129, label %187
  ]

187:                                              ; preds = %182, %182, %182, %182
  store i32 0, i32* %2, align 4
  br label %235

188:                                              ; preds = %182
  %189 = load i32, i32* @GFP_KERNEL, align 4
  %190 = call %struct.snd_akm4xxx* @kmalloc(i32 4, i32 %189)
  %191 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %192 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %191, i32 0, i32 5
  store %struct.snd_akm4xxx* %190, %struct.snd_akm4xxx** %192, align 8
  store %struct.snd_akm4xxx* %190, %struct.snd_akm4xxx** %5, align 8
  %193 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %5, align 8
  %194 = icmp ne %struct.snd_akm4xxx* %193, null
  br i1 %194, label %198, label %195

195:                                              ; preds = %188
  %196 = load i32, i32* @ENOMEM, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %2, align 4
  br label %235

198:                                              ; preds = %188
  %199 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %200 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %199, i32 0, i32 3
  store i32 1, i32* %200, align 4
  %201 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %202 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %201, i32 0, i32 4
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  switch i32 %204, label %229 [
    i32 139, label %205
    i32 135, label %209
    i32 136, label %213
    i32 130, label %213
    i32 133, label %217
    i32 134, label %217
    i32 128, label %221
    i32 132, label %225
  ]

205:                                              ; preds = %198
  %206 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %5, align 8
  %207 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %208 = call i32 @snd_ice1712_akm4xxx_init(%struct.snd_akm4xxx* %206, i32* @akm_audiophile, i32* @akm_audiophile_priv, %struct.snd_ice1712* %207)
  store i32 %208, i32* %4, align 4
  br label %233

209:                                              ; preds = %198
  %210 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %5, align 8
  %211 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %212 = call i32 @snd_ice1712_akm4xxx_init(%struct.snd_akm4xxx* %210, i32* @akm_delta410, i32* @akm_delta410_priv, %struct.snd_ice1712* %211)
  store i32 %212, i32* %4, align 4
  br label %233

213:                                              ; preds = %198, %198
  %214 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %5, align 8
  %215 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %216 = call i32 @snd_ice1712_akm4xxx_init(%struct.snd_akm4xxx* %214, i32* @akm_delta1010lt, i32* @akm_delta1010lt_priv, %struct.snd_ice1712* %215)
  store i32 %216, i32* %4, align 4
  br label %233

217:                                              ; preds = %198, %198
  %218 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %5, align 8
  %219 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %220 = call i32 @snd_ice1712_akm4xxx_init(%struct.snd_akm4xxx* %218, i32* @akm_delta44, i32* @akm_delta44_priv, %struct.snd_ice1712* %219)
  store i32 %220, i32* %4, align 4
  br label %233

221:                                              ; preds = %198
  %222 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %5, align 8
  %223 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %224 = call i32 @snd_ice1712_akm4xxx_init(%struct.snd_akm4xxx* %222, i32* @akm_vx442, i32* @akm_vx442_priv, %struct.snd_ice1712* %223)
  store i32 %224, i32* %4, align 4
  br label %233

225:                                              ; preds = %198
  %226 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %5, align 8
  %227 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %228 = call i32 @snd_ice1712_akm4xxx_init(%struct.snd_akm4xxx* %226, i32* @akm_delta66e, i32* @akm_delta66e_priv, %struct.snd_ice1712* %227)
  store i32 %228, i32* %4, align 4
  br label %233

229:                                              ; preds = %198
  %230 = call i32 (...) @snd_BUG()
  %231 = load i32, i32* @EINVAL, align 4
  %232 = sub nsw i32 0, %231
  store i32 %232, i32* %2, align 4
  br label %235

233:                                              ; preds = %225, %221, %217, %213, %209, %205
  %234 = load i32, i32* %4, align 4
  store i32 %234, i32* %2, align 4
  br label %235

235:                                              ; preds = %233, %229, %195, %187, %132, %110
  %236 = load i32, i32* %2, align 4
  ret i32 %236
}

declare dso_local zeroext i8 @snd_ice1712_read(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_ice1712_write(%struct.snd_ice1712*, i32, i8 zeroext) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @snd_i2c_bus_create(%struct.TYPE_11__*, i8*, i32*, %struct.TYPE_12__**) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_ice1712_init_cs8427(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_ice1712_delta_cs8403_spdif_write(%struct.snd_ice1712*, i32) #1

declare dso_local %struct.snd_akm4xxx* @kmalloc(i32, i32) #1

declare dso_local i32 @snd_ice1712_akm4xxx_init(%struct.snd_akm4xxx*, i32*, i32*, %struct.snd_ice1712*) #1

declare dso_local i32 @snd_BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
