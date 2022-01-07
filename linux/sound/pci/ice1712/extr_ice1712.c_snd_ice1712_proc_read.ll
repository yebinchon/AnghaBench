; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_proc_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_proc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_ice1712* }
%struct.snd_ice1712 = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.snd_info_buffer = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"EEPROM:\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"  Subvendor        : 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"  Size             : %i bytes\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"  Version          : %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"  Codec            : 0x%x\0A\00", align 1
@ICE_EEP1_CODEC = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"  ACLink           : 0x%x\0A\00", align 1
@ICE_EEP1_ACLINK = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [27 x i8] c"  I2S ID           : 0x%x\0A\00", align 1
@ICE_EEP1_I2SID = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [27 x i8] c"  S/PDIF           : 0x%x\0A\00", align 1
@ICE_EEP1_SPDIF = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [27 x i8] c"  GPIO mask        : 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"  GPIO state       : 0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"  GPIO direction   : 0x%x\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"  AC'97 main       : 0x%x\0A\00", align 1
@ICE_EEP1_AC97_MAIN_LO = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [27 x i8] c"  AC'97 pcm        : 0x%x\0A\00", align 1
@ICE_EEP1_AC97_PCM_LO = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [27 x i8] c"  AC'97 record     : 0x%x\0A\00", align 1
@ICE_EEP1_AC97_REC_LO = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [27 x i8] c"  AC'97 record src : 0x%x\0A\00", align 1
@ICE_EEP1_AC97_RECSRC = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [28 x i8] c"  DAC ID #%i        : 0x%x\0A\00", align 1
@ICE_EEP1_DAC_ID = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [28 x i8] c"  ADC ID #%i        : 0x%x\0A\00", align 1
@ICE_EEP1_ADC_ID = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [29 x i8] c"  Extra #%02i        : 0x%x\0A\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"\0ARegisters:\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"  PSDOUT03         : 0x%04x\0A\00", align 1
@ROUTE_PSDOUT03 = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [29 x i8] c"  CAPTURE          : 0x%08x\0A\00", align 1
@ROUTE_CAPTURE = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [29 x i8] c"  SPDOUT           : 0x%04x\0A\00", align 1
@ROUTE_SPDOUT = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [29 x i8] c"  RATE             : 0x%02x\0A\00", align 1
@RATE = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [29 x i8] c"  GPIO_DATA        : 0x%02x\0A\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"  GPIO_WRITE_MASK  : 0x%02x\0A\00", align 1
@ICE1712_IREG_GPIO_WRITE_MASK = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [29 x i8] c"  GPIO_DIRECTION   : 0x%02x\0A\00", align 1
@ICE1712_IREG_GPIO_DIRECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @snd_ice1712_proc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ice1712_proc_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %7 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %8 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %7, i32 0, i32 0
  %9 = load %struct.snd_ice1712*, %struct.snd_ice1712** %8, align 8
  store %struct.snd_ice1712* %9, %struct.snd_ice1712** %5, align 8
  %10 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %12 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %18 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %20 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %21 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %26 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %27 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  %31 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %32 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %33 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %35)
  %37 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %38 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %39 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @ICE_EEP1_CODEC, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %44)
  %46 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %47 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %48 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @ICE_EEP1_ACLINK, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %53)
  %55 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %56 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %57 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @ICE_EEP1_I2SID, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %62)
  %64 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %65 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %66 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* @ICE_EEP1_SPDIF, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %71)
  %73 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %74 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %75 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %77)
  %79 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %80 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %81 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %79, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %83)
  %85 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %86 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %87 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %85, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i32 %89)
  %91 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %92 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %93 = load i32, i32* @ICE_EEP1_AC97_MAIN_LO, align 4
  %94 = call i32 @eeprom_double(%struct.snd_ice1712* %92, i32 %93)
  %95 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %91, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 %94)
  %96 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %97 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %98 = load i32, i32* @ICE_EEP1_AC97_PCM_LO, align 4
  %99 = call i32 @eeprom_double(%struct.snd_ice1712* %97, i32 %98)
  %100 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %96, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 %99)
  %101 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %102 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %103 = load i32, i32* @ICE_EEP1_AC97_REC_LO, align 4
  %104 = call i32 @eeprom_double(%struct.snd_ice1712* %102, i32 %103)
  %105 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %101, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i32 %104)
  %106 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %107 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %108 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* @ICE_EEP1_AC97_RECSRC, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %106, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i32 %113)
  store i32 0, i32* %6, align 4
  br label %115

115:                                              ; preds = %132, %2
  %116 = load i32, i32* %6, align 4
  %117 = icmp ult i32 %116, 4
  br i1 %117, label %118, label %135

118:                                              ; preds = %115
  %119 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %120 = load i32, i32* %6, align 4
  %121 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %122 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* @ICE_EEP1_DAC_ID, align 4
  %126 = load i32, i32* %6, align 4
  %127 = add i32 %125, %126
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %124, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %119, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), i32 %120, i32 %130)
  br label %132

132:                                              ; preds = %118
  %133 = load i32, i32* %6, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %6, align 4
  br label %115

135:                                              ; preds = %115
  store i32 0, i32* %6, align 4
  br label %136

136:                                              ; preds = %153, %135
  %137 = load i32, i32* %6, align 4
  %138 = icmp ult i32 %137, 4
  br i1 %138, label %139, label %156

139:                                              ; preds = %136
  %140 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %141 = load i32, i32* %6, align 4
  %142 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %143 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* @ICE_EEP1_ADC_ID, align 4
  %147 = load i32, i32* %6, align 4
  %148 = add i32 %146, %147
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %145, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %140, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i32 %141, i32 %151)
  br label %153

153:                                              ; preds = %139
  %154 = load i32, i32* %6, align 4
  %155 = add i32 %154, 1
  store i32 %155, i32* %6, align 4
  br label %136

156:                                              ; preds = %136
  store i32 28, i32* %6, align 4
  br label %157

157:                                              ; preds = %176, %156
  %158 = load i32, i32* %6, align 4
  %159 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %160 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp ult i32 %158, %162
  br i1 %163, label %164, label %179

164:                                              ; preds = %157
  %165 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %166 = load i32, i32* %6, align 4
  %167 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %168 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 3
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %6, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %165, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i32 %166, i32 %174)
  br label %176

176:                                              ; preds = %164
  %177 = load i32, i32* %6, align 4
  %178 = add i32 %177, 1
  store i32 %178, i32* %6, align 4
  br label %157

179:                                              ; preds = %157
  %180 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %181 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %180, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  %182 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %183 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %184 = load i32, i32* @ROUTE_PSDOUT03, align 4
  %185 = call i32 @ICEMT(%struct.snd_ice1712* %183, i32 %184)
  %186 = call i64 @inw(i32 %185)
  %187 = trunc i64 %186 to i32
  %188 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %182, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i32 %187)
  %189 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %190 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %191 = load i32, i32* @ROUTE_CAPTURE, align 4
  %192 = call i32 @ICEMT(%struct.snd_ice1712* %190, i32 %191)
  %193 = call i32 @inl(i32 %192)
  %194 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %189, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0), i32 %193)
  %195 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %196 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %197 = load i32, i32* @ROUTE_SPDOUT, align 4
  %198 = call i32 @ICEMT(%struct.snd_ice1712* %196, i32 %197)
  %199 = call i64 @inw(i32 %198)
  %200 = trunc i64 %199 to i32
  %201 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %195, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 %200)
  %202 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %203 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %204 = load i32, i32* @RATE, align 4
  %205 = call i32 @ICEMT(%struct.snd_ice1712* %203, i32 %204)
  %206 = call i64 @inb(i32 %205)
  %207 = trunc i64 %206 to i32
  %208 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %202, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0), i32 %207)
  %209 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %210 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %211 = call i64 @snd_ice1712_get_gpio_data(%struct.snd_ice1712* %210)
  %212 = trunc i64 %211 to i32
  %213 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %209, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i64 0, i64 0), i32 %212)
  %214 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %215 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %216 = load i32, i32* @ICE1712_IREG_GPIO_WRITE_MASK, align 4
  %217 = call i64 @snd_ice1712_read(%struct.snd_ice1712* %215, i32 %216)
  %218 = trunc i64 %217 to i32
  %219 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %214, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i64 0, i64 0), i32 %218)
  %220 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %221 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %222 = load i32, i32* @ICE1712_IREG_GPIO_DIRECTION, align 4
  %223 = call i64 @snd_ice1712_read(%struct.snd_ice1712* %221, i32 %222)
  %224 = trunc i64 %223 to i32
  %225 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %220, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i64 0, i64 0), i32 %224)
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i32 @eeprom_double(%struct.snd_ice1712*, i32) #1

declare dso_local i64 @inw(i32) #1

declare dso_local i32 @ICEMT(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i64 @inb(i32) #1

declare dso_local i64 @snd_ice1712_get_gpio_data(%struct.snd_ice1712*) #1

declare dso_local i64 @snd_ice1712_read(%struct.snd_ice1712*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
