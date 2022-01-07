; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_ad1889.c_snd_ad1889_proc_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_ad1889.c_snd_ad1889_proc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_ad1889* }
%struct.snd_ad1889 = type { i32 }
%struct.snd_info_buffer = type { i32 }

@AD_DS_WSMC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Wave output: %s\0A\00", align 1
@AD_DS_WSMC_WAEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Wave Channels: %s\0A\00", align 1
@AD_DS_WSMC_WAST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"stereo\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"mono\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Wave Quality: %d-bit linear\0A\00", align 1
@AD_DS_WSMC_WA16 = common dso_local global i32 0, align 4
@AD_DS_WSMC_WARQ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"Wave FIFO: %d %s words\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Synthesis output: %s\0A\00", align 1
@AD_DS_WSMC_SYEN = common dso_local global i32 0, align 4
@AD_DS_WSMC_SYRQ = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"Synthesis FIFO: %d %s words\0A\0A\00", align 1
@AD_DS_RAMC = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"ADC input: %s\0A\00", align 1
@AD_DS_RAMC_ADEN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"ADC Channels: %s\0A\00", align 1
@AD_DS_RAMC_ADST = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [28 x i8] c"ADC Quality: %d-bit linear\0A\00", align 1
@AD_DS_RAMC_AD16 = common dso_local global i32 0, align 4
@AD_DS_RAMC_ACRQ = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [24 x i8] c"ADC FIFO: %d %s words\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Resampler input: %s\0A\00", align 1
@AD_DS_RAMC_REEN = common dso_local global i32 0, align 4
@AD_DS_RAMC_RERQ = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [30 x i8] c"Resampler FIFO: %d %s words\0A\0A\00", align 1
@AD_DS_WADA = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [18 x i8] c"Left: %s, -%d dB\0A\00", align 1
@AD_DS_WADA_LWAM = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [5 x i8] c"mute\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"unmute\00", align 1
@AD_DS_WADA_LWAA = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [19 x i8] c"Right: %s, -%d dB\0A\00", align 1
@AD_DS_WADA_RWAM = common dso_local global i32 0, align 4
@AD_DS_WADA_RWAA = common dso_local global i32 0, align 4
@AD_DS_WAS = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [24 x i8] c"Wave samplerate: %u Hz\0A\00", align 1
@AD_DS_RES = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [29 x i8] c"Resampler samplerate: %u Hz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @snd_ad1889_proc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ad1889_proc_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_ad1889*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %8 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %9 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %8, i32 0, i32 0
  %10 = load %struct.snd_ad1889*, %struct.snd_ad1889** %9, align 8
  store %struct.snd_ad1889* %10, %struct.snd_ad1889** %5, align 8
  %11 = load %struct.snd_ad1889*, %struct.snd_ad1889** %5, align 8
  %12 = load i32, i32* @AD_DS_WSMC, align 4
  %13 = call i32 @ad1889_readw(%struct.snd_ad1889* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @AD_DS_WSMC_WAEN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %21 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @AD_DS_WSMC_WAST, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %29 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %28)
  %30 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @AD_DS_WSMC_WA16, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 16, i32 8
  %37 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @AD_DS_WSMC_WARQ, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %2
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @AD_DS_WSMC_WARQ, align 4
  %45 = and i32 %43, %44
  %46 = ashr i32 %45, 12
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 12, i32 18
  br label %52

51:                                               ; preds = %2
  br label %52

52:                                               ; preds = %51, %42
  %53 = phi i32 [ %50, %42 ], [ 4, %51 ]
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @AD_DS_WSMC_WAST, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 2, i32 1
  %60 = load i32, i32* %7, align 4
  %61 = sdiv i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @AD_DS_WSMC_WAST, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %70 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %63, i8* %69)
  %71 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @AD_DS_WSMC_SYEN, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %78 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %77)
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @AD_DS_WSMC_SYRQ, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %52
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @AD_DS_WSMC_SYRQ, align 4
  %86 = and i32 %84, %85
  %87 = ashr i32 %86, 4
  %88 = and i32 %87, 1
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 12, i32 18
  br label %93

92:                                               ; preds = %52
  br label %93

93:                                               ; preds = %92, %83
  %94 = phi i32 [ %91, %83 ], [ 4, %92 ]
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @AD_DS_WSMC_WAST, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 2, i32 1
  %101 = load i32, i32* %7, align 4
  %102 = sdiv i32 %101, %100
  store i32 %102, i32* %7, align 4
  %103 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @AD_DS_WSMC_WAST, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %111 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %103, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %104, i8* %110)
  %112 = load %struct.snd_ad1889*, %struct.snd_ad1889** %5, align 8
  %113 = load i32, i32* @AD_DS_RAMC, align 4
  %114 = call i32 @ad1889_readw(%struct.snd_ad1889* %112, i32 %113)
  store i32 %114, i32* %6, align 4
  %115 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @AD_DS_RAMC_ADEN, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %122 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %115, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* %121)
  %123 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @AD_DS_RAMC_ADST, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %130 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %123, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8* %129)
  %131 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @AD_DS_RAMC_AD16, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i32 16, i32 8
  %138 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %131, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* @AD_DS_RAMC_ACRQ, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %93
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* @AD_DS_RAMC_ACRQ, align 4
  %146 = and i32 %144, %145
  %147 = ashr i32 %146, 4
  %148 = and i32 %147, 1
  %149 = icmp ne i32 %148, 0
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i32 12, i32 18
  br label %153

152:                                              ; preds = %93
  br label %153

153:                                              ; preds = %152, %143
  %154 = phi i32 [ %151, %143 ], [ 4, %152 ]
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* @AD_DS_RAMC_ADST, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i32 2, i32 1
  %161 = load i32, i32* %7, align 4
  %162 = sdiv i32 %161, %160
  store i32 %162, i32* %7, align 4
  %163 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* @AD_DS_RAMC_ADST, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %171 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %163, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %164, i8* %170)
  %172 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* @AD_DS_RAMC_REEN, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %179 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %172, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i8* %178)
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* @AD_DS_RAMC_RERQ, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %153
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* @AD_DS_RAMC_RERQ, align 4
  %187 = and i32 %185, %186
  %188 = ashr i32 %187, 12
  %189 = and i32 %188, 1
  %190 = icmp ne i32 %189, 0
  %191 = zext i1 %190 to i64
  %192 = select i1 %190, i32 12, i32 18
  br label %194

193:                                              ; preds = %153
  br label %194

194:                                              ; preds = %193, %184
  %195 = phi i32 [ %192, %184 ], [ 4, %193 ]
  store i32 %195, i32* %7, align 4
  %196 = load i32, i32* %6, align 4
  %197 = load i32, i32* @AD_DS_RAMC_ADST, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  %200 = zext i1 %199 to i64
  %201 = select i1 %199, i32 2, i32 1
  %202 = load i32, i32* %7, align 4
  %203 = sdiv i32 %202, %201
  store i32 %203, i32* %7, align 4
  %204 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %205 = load i32, i32* %7, align 4
  %206 = load i32, i32* %6, align 4
  %207 = load i32, i32* @AD_DS_WSMC_WAST, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  %210 = zext i1 %209 to i64
  %211 = select i1 %209, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %212 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %204, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), i32 %205, i8* %211)
  %213 = load %struct.snd_ad1889*, %struct.snd_ad1889** %5, align 8
  %214 = load i32, i32* @AD_DS_WADA, align 4
  %215 = call i32 @ad1889_readw(%struct.snd_ad1889* %213, i32 %214)
  store i32 %215, i32* %6, align 4
  %216 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %217 = load i32, i32* %6, align 4
  %218 = load i32, i32* @AD_DS_WADA_LWAM, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  %221 = zext i1 %220 to i64
  %222 = select i1 %220, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0)
  %223 = load i32, i32* %6, align 4
  %224 = load i32, i32* @AD_DS_WADA_LWAA, align 4
  %225 = and i32 %223, %224
  %226 = ashr i32 %225, 8
  %227 = mul nsw i32 %226, 3
  %228 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %216, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i8* %222, i32 %227)
  %229 = load %struct.snd_ad1889*, %struct.snd_ad1889** %5, align 8
  %230 = load i32, i32* @AD_DS_WADA, align 4
  %231 = call i32 @ad1889_readw(%struct.snd_ad1889* %229, i32 %230)
  store i32 %231, i32* %6, align 4
  %232 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %233 = load i32, i32* %6, align 4
  %234 = load i32, i32* @AD_DS_WADA_RWAM, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  %237 = zext i1 %236 to i64
  %238 = select i1 %236, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0)
  %239 = load i32, i32* %6, align 4
  %240 = load i32, i32* @AD_DS_WADA_RWAA, align 4
  %241 = and i32 %239, %240
  %242 = mul nsw i32 %241, 3
  %243 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %232, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0), i8* %238, i32 %242)
  %244 = load %struct.snd_ad1889*, %struct.snd_ad1889** %5, align 8
  %245 = load i32, i32* @AD_DS_WAS, align 4
  %246 = call i32 @ad1889_readw(%struct.snd_ad1889* %244, i32 %245)
  store i32 %246, i32* %6, align 4
  %247 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %248 = load i32, i32* %6, align 4
  %249 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %247, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i32 %248)
  %250 = load %struct.snd_ad1889*, %struct.snd_ad1889** %5, align 8
  %251 = load i32, i32* @AD_DS_RES, align 4
  %252 = call i32 @ad1889_readw(%struct.snd_ad1889* %250, i32 %251)
  store i32 %252, i32* %6, align 4
  %253 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %254 = load i32, i32* %6, align 4
  %255 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %253, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0), i32 %254)
  ret void
}

declare dso_local i32 @ad1889_readw(%struct.snd_ad1889*, i32) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
