; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emuproc.c_snd_emu10k1_proc_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emuproc.c_snd_emu10k1_proc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_emu10k1* }
%struct.snd_emu10k1 = type { i32*, i64, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.snd_info_buffer = type { i32 }

@snd_emu10k1_proc_read.creative_outs = internal global [32 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [10 x i8] c"AC97 Left\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"AC97 Right\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Optical IEC958 Left\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Optical IEC958 Right\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Center\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"LFE\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Headphone Left\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Headphone Right\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Surround Left\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Surround Right\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"PCM Capture Left\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"PCM Capture Right\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"MIC Capture\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"AC97 Surround Left\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"AC97 Surround Right\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"Analog Center\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"Analog LFE\00", align 1
@snd_emu10k1_proc_read.audigy_outs = internal global [64 x i8*] [i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0)], align 16
@.str.18 = private unnamed_addr constant [19 x i8] c"Digital Front Left\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"Digital Front Right\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"Digital Center\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"Digital LEF\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"Digital Rear Left\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Digital Rear Right\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"Front Left\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"Front Right\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"Rear Left\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"Rear Right\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"AC97 Front Left\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"AC97 Front Right\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"ADC Capture Left\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"ADC Capture Right\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"FXBUS2_0\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"FXBUS2_1\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"FXBUS2_2\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"FXBUS2_3\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"FXBUS2_4\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"FXBUS2_5\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"FXBUS2_6\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"FXBUS2_7\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"FXBUS2_8\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"FXBUS2_9\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"FXBUS2_10\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"FXBUS2_11\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"FXBUS2_12\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"FXBUS2_13\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"FXBUS2_14\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"FXBUS2_15\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"FXBUS2_16\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"FXBUS2_17\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"FXBUS2_18\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"FXBUS2_19\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"FXBUS2_20\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"FXBUS2_21\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"FXBUS2_22\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"FXBUS2_23\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"FXBUS2_24\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"FXBUS2_25\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"FXBUS2_26\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"FXBUS2_27\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"FXBUS2_28\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"FXBUS2_29\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"FXBUS2_30\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"FXBUS2_31\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"EMU10K1\0A\0A\00", align 1
@.str.65 = private unnamed_addr constant [28 x i8] c"Card                  : %s\0A\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"Audigy\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"EMU APS\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"Creative\00", align 1
@.str.69 = private unnamed_addr constant [30 x i8] c"Internal TRAM (words) : 0x%x\0A\00", align 1
@.str.70 = private unnamed_addr constant [30 x i8] c"External TRAM (words) : 0x%x\0A\00", align 1
@.str.71 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.72 = private unnamed_addr constant [25 x i8] c"Effect Send Routing   :\0A\00", align 1
@NUM_G = common dso_local global i32 0, align 4
@A_FXRT1 = common dso_local global i32 0, align 4
@FXRT = common dso_local global i32 0, align 4
@A_FXRT2 = common dso_local global i32 0, align 4
@.str.73 = private unnamed_addr constant [31 x i8] c"Ch%i: A=%i, B=%i, C=%i, D=%i, \00", align 1
@.str.74 = private unnamed_addr constant [24 x i8] c"E=%i, F=%i, G=%i, H=%i\0A\00", align 1
@.str.75 = private unnamed_addr constant [30 x i8] c"Ch%i: A=%i, B=%i, C=%i, D=%i\0A\00", align 1
@.str.76 = private unnamed_addr constant [26 x i8] c"\0ACaptured FX Outputs   :\0A\00", align 1
@.str.77 = private unnamed_addr constant [20 x i8] c"  Output %02i [%s]\0A\00", align 1
@.str.78 = private unnamed_addr constant [26 x i8] c"\0AAll FX Outputs        :\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @snd_emu10k1_proc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_emu10k1_proc_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_emu10k1*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %11 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %12 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %11, i32 0, i32 0
  %13 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %12, align 8
  store %struct.snd_emu10k1* %13, %struct.snd_emu10k1** %5, align 8
  %14 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %15 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 64, i32 32
  store i32 %19, i32* %8, align 4
  %20 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %21 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8** getelementptr inbounds ([64 x i8*], [64 x i8*]* @snd_emu10k1_proc_read.audigy_outs, i64 0, i64 0), i8** getelementptr inbounds ([32 x i8*], [32 x i8*]* @snd_emu10k1_proc_read.creative_outs, i64 0, i64 0)
  store i8** %25, i8*** %9, align 8
  %26 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %27 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i64 0, i64 0))
  %28 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %29 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %30 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  br label %43

34:                                               ; preds = %2
  %35 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %36 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %35, i32 0, i32 3
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i64 0, i64 0)
  br label %43

43:                                               ; preds = %34, %33
  %44 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0), %33 ], [ %42, %34 ]
  %45 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.65, i64 0, i64 0), i8* %44)
  %46 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %47 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %48 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.69, i64 0, i64 0), i32 %50)
  %52 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %53 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %54 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = sdiv i32 %58, 2
  %60 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.70, i64 0, i64 0), i32 %59)
  %61 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %62 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0))
  %63 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %64 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.72, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %147, %43
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @NUM_G, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %150

69:                                               ; preds = %65
  %70 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %71 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %76 = load i32, i32* @A_FXRT1, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1* %75, i32 %76, i32 %77)
  br label %84

79:                                               ; preds = %69
  %80 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %81 = load i32, i32* @FXRT, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1* %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %79, %74
  %85 = phi i32 [ %78, %74 ], [ %83, %79 ]
  store i32 %85, i32* %6, align 4
  %86 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %87 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %92 = load i32, i32* @A_FXRT2, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1* %91, i32 %92, i32 %93)
  br label %96

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95, %90
  %97 = phi i32 [ %94, %90 ], [ 0, %95 ]
  store i32 %97, i32* %7, align 4
  %98 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %99 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %130

102:                                              ; preds = %96
  %103 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %6, align 4
  %106 = and i32 %105, 63
  %107 = load i32, i32* %6, align 4
  %108 = lshr i32 %107, 8
  %109 = and i32 %108, 63
  %110 = load i32, i32* %6, align 4
  %111 = lshr i32 %110, 16
  %112 = and i32 %111, 63
  %113 = load i32, i32* %6, align 4
  %114 = lshr i32 %113, 24
  %115 = and i32 %114, 63
  %116 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %103, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.73, i64 0, i64 0), i32 %104, i32 %106, i32 %109, i32 %112, i32 %115)
  %117 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %118 = load i32, i32* %7, align 4
  %119 = and i32 %118, 63
  %120 = load i32, i32* %7, align 4
  %121 = lshr i32 %120, 8
  %122 = and i32 %121, 63
  %123 = load i32, i32* %7, align 4
  %124 = lshr i32 %123, 16
  %125 = and i32 %124, 63
  %126 = load i32, i32* %7, align 4
  %127 = lshr i32 %126, 24
  %128 = and i32 %127, 63
  %129 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %117, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.74, i64 0, i64 0), i32 %119, i32 %122, i32 %125, i32 %128)
  br label %146

130:                                              ; preds = %96
  %131 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %6, align 4
  %134 = lshr i32 %133, 16
  %135 = and i32 %134, 15
  %136 = load i32, i32* %6, align 4
  %137 = lshr i32 %136, 20
  %138 = and i32 %137, 15
  %139 = load i32, i32* %6, align 4
  %140 = lshr i32 %139, 24
  %141 = and i32 %140, 15
  %142 = load i32, i32* %6, align 4
  %143 = lshr i32 %142, 28
  %144 = and i32 %143, 15
  %145 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %131, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.75, i64 0, i64 0), i32 %132, i32 %135, i32 %138, i32 %141, i32 %144)
  br label %146

146:                                              ; preds = %130, %102
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %10, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %10, align 4
  br label %65

150:                                              ; preds = %65
  %151 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %152 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %151, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.76, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %153

153:                                              ; preds = %181, %150
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %8, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %184

157:                                              ; preds = %153
  %158 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %159 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sdiv i32 %161, 32
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %10, align 4
  %167 = srem i32 %166, 32
  %168 = shl i32 1, %167
  %169 = and i32 %165, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %157
  %172 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %173 = load i32, i32* %10, align 4
  %174 = load i8**, i8*** %9, align 8
  %175 = load i32, i32* %10, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8*, i8** %174, i64 %176
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %172, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.77, i64 0, i64 0), i32 %173, i8* %178)
  br label %180

180:                                              ; preds = %171, %157
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %10, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %10, align 4
  br label %153

184:                                              ; preds = %153
  %185 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %186 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %185, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.78, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %187

187:                                              ; preds = %205, %184
  %188 = load i32, i32* %10, align 4
  %189 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %190 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  %193 = zext i1 %192 to i64
  %194 = select i1 %192, i32 64, i32 32
  %195 = icmp slt i32 %188, %194
  br i1 %195, label %196, label %208

196:                                              ; preds = %187
  %197 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %198 = load i32, i32* %10, align 4
  %199 = load i8**, i8*** %9, align 8
  %200 = load i32, i32* %10, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8*, i8** %199, i64 %201
  %203 = load i8*, i8** %202, align 8
  %204 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %197, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.77, i64 0, i64 0), i32 %198, i8* %203)
  br label %205

205:                                              ; preds = %196
  %206 = load i32, i32* %10, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %10, align 4
  br label %187

208:                                              ; preds = %187
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
