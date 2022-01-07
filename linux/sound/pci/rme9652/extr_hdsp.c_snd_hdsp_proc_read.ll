; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_proc_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_proc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.hdsp* }
%struct.hdsp = type { i32, i32, i32, i64, i32, i64, i64, i64, i32, i64, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.snd_info_buffer = type { i32 }

@HDSP_statusRegister = common dso_local global i32 0, align 4
@HDSP_status2Register = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s (Card #%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Buffers: capture %p playback %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"IRQ: %d Registers bus: 0x%lx VM: 0x%lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Control register: 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Control2 register: 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Status register: 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Status2 register: 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"No I/O box connected.\0APlease connect one and upload firmware.\0A\00", align 1
@HDSP_FirmwareCached = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [61 x i8] c"Firmware loading from cache failed, please upload manually.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [56 x i8] c"No firmware loaded nor cached, please upload firmware.\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"FIFO status: %d\0A\00", align 1
@HDSP_fifoStatus = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"MIDI1 Output status: 0x%x\0A\00", align 1
@HDSP_midiStatusOut0 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [26 x i8] c"MIDI1 Input status: 0x%x\0A\00", align 1
@HDSP_midiStatusIn0 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [27 x i8] c"MIDI2 Output status: 0x%x\0A\00", align 1
@HDSP_midiStatusOut1 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [26 x i8] c"MIDI2 Input status: 0x%x\0A\00", align 1
@HDSP_midiStatusIn1 = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [22 x i8] c"Use Midi Tasklet: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@HDSP_LatencyMask = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [60 x i8] c"Buffer Size (Latency): %d samples (2 periods of %lu bytes)\0A\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"Hardware pointer (frames): %ld\0A\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"Precise pointer: %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"Line out: %s\0A\00", align 1
@HDSP_LineOut = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [22 x i8] c"Firmware version: %d\0A\00", align 1
@HDSP_version0 = common dso_local global i32 0, align 4
@HDSP_version1 = common dso_local global i32 0, align 4
@HDSP_version2 = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [9 x i8] c"AutoSync\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"Internal 32 kHz\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"Internal 44.1 kHz\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"Internal 48 kHz\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"Internal 64 kHz\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"Internal 88.2 kHz\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"Internal 96 kHz\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"Internal 128 kHz\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"Internal 176.4 kHz\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"Internal 192 kHz\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"Sample Clock Source: %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"Slave\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"Master\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"Word Clock\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"ADAT Sync\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"SPDIF\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"ADAT1\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"ADAT2\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"ADAT3\00", align 1
@.str.44 = private unnamed_addr constant [30 x i8] c"Preferred Sync Reference: %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"---\00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"AutoSync Reference: %s\0A\00", align 1
@.str.48 = private unnamed_addr constant [24 x i8] c"AutoSync Frequency: %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"System Clock Mode: %s\0A\00", align 1
@.str.50 = private unnamed_addr constant [28 x i8] c"System Clock Frequency: %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"System Clock Locked: %s\0A\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@RPM = common dso_local global i32 0, align 4
@.str.54 = private unnamed_addr constant [23 x i8] c"IEC958 input: Optical\0A\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"IEC958 input: Coaxial\0A\00", align 1
@.str.56 = private unnamed_addr constant [24 x i8] c"IEC958 input: Internal\0A\00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c"IEC958 input: AES\0A\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"IEC958 input: ???\0A\00", align 1
@HDSP_RPM_Bypass = common dso_local global i32 0, align 4
@.str.59 = private unnamed_addr constant [22 x i8] c"RPM Bypass: disabled\0A\00", align 1
@.str.60 = private unnamed_addr constant [21 x i8] c"RPM Bypass: enabled\0A\00", align 1
@HDSP_RPM_Disconnect = common dso_local global i32 0, align 4
@.str.61 = private unnamed_addr constant [18 x i8] c"RPM disconnected\0A\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"RPM connected\0A\00", align 1
@HDSP_RPM_Inp12 = common dso_local global i32 0, align 4
@.str.63 = private unnamed_addr constant [23 x i8] c"Input 1/2: Phono, 6dB\0A\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"Input 1/2: Phono, 0dB\0A\00", align 1
@.str.65 = private unnamed_addr constant [24 x i8] c"Input 1/2: Phono, -6dB\0A\00", align 1
@.str.66 = private unnamed_addr constant [22 x i8] c"Input 1/2: Line, 0dB\0A\00", align 1
@.str.67 = private unnamed_addr constant [23 x i8] c"Input 1/2: Line, -6dB\0A\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"Input 1/2: ???\0A\00", align 1
@HDSP_RPM_Inp34 = common dso_local global i32 0, align 4
@.str.69 = private unnamed_addr constant [23 x i8] c"Input 3/4: Phono, 6dB\0A\00", align 1
@.str.70 = private unnamed_addr constant [23 x i8] c"Input 3/4: Phono, 0dB\0A\00", align 1
@.str.71 = private unnamed_addr constant [24 x i8] c"Input 3/4: Phono, -6dB\0A\00", align 1
@.str.72 = private unnamed_addr constant [22 x i8] c"Input 3/4: Line, 0dB\0A\00", align 1
@.str.73 = private unnamed_addr constant [23 x i8] c"Input 3/4: Line, -6dB\0A\00", align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"Input 3/4: ???\0A\00", align 1
@HDSP_SPDIFOpticalOut = common dso_local global i32 0, align 4
@.str.75 = private unnamed_addr constant [32 x i8] c"IEC958 output: Coaxial & ADAT1\0A\00", align 1
@.str.76 = private unnamed_addr constant [29 x i8] c"IEC958 output: Coaxial only\0A\00", align 1
@HDSP_SPDIFProfessional = common dso_local global i32 0, align 4
@.str.77 = private unnamed_addr constant [30 x i8] c"IEC958 quality: Professional\0A\00", align 1
@.str.78 = private unnamed_addr constant [26 x i8] c"IEC958 quality: Consumer\0A\00", align 1
@HDSP_SPDIFEmphasis = common dso_local global i32 0, align 4
@.str.79 = private unnamed_addr constant [21 x i8] c"IEC958 emphasis: on\0A\00", align 1
@.str.80 = private unnamed_addr constant [22 x i8] c"IEC958 emphasis: off\0A\00", align 1
@HDSP_SPDIFNonAudio = common dso_local global i32 0, align 4
@.str.81 = private unnamed_addr constant [21 x i8] c"IEC958 NonAudio: on\0A\00", align 1
@.str.82 = private unnamed_addr constant [22 x i8] c"IEC958 NonAudio: off\0A\00", align 1
@.str.83 = private unnamed_addr constant [24 x i8] c"IEC958 sample rate: %d\0A\00", align 1
@.str.84 = private unnamed_addr constant [36 x i8] c"IEC958 sample rate: Error flag set\0A\00", align 1
@HDSP_Sync0 = common dso_local global i32 0, align 4
@HDSP_Lock0 = common dso_local global i32 0, align 4
@.str.85 = private unnamed_addr constant [11 x i8] c"ADAT1: %s\0A\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"Sync\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"Lock\00", align 1
@.str.88 = private unnamed_addr constant [16 x i8] c"ADAT1: No Lock\0A\00", align 1
@HDSP_Sync1 = common dso_local global i32 0, align 4
@HDSP_Lock1 = common dso_local global i32 0, align 4
@.str.89 = private unnamed_addr constant [11 x i8] c"ADAT2: %s\0A\00", align 1
@.str.90 = private unnamed_addr constant [16 x i8] c"ADAT2: No Lock\0A\00", align 1
@HDSP_Sync2 = common dso_local global i32 0, align 4
@HDSP_Lock2 = common dso_local global i32 0, align 4
@.str.91 = private unnamed_addr constant [11 x i8] c"ADAT3: %s\0A\00", align 1
@.str.92 = private unnamed_addr constant [16 x i8] c"ADAT3: No Lock\0A\00", align 1
@HDSP_SPDIFSync = common dso_local global i32 0, align 4
@HDSP_SPDIFErrorFlag = common dso_local global i32 0, align 4
@.str.93 = private unnamed_addr constant [16 x i8] c"SPDIF: No Lock\0A\00", align 1
@.str.94 = private unnamed_addr constant [11 x i8] c"SPDIF: %s\0A\00", align 1
@HDSP_wc_sync = common dso_local global i32 0, align 4
@HDSP_wc_lock = common dso_local global i32 0, align 4
@.str.95 = private unnamed_addr constant [16 x i8] c"Word Clock: %s\0A\00", align 1
@.str.96 = private unnamed_addr constant [21 x i8] c"Word Clock: No Lock\0A\00", align 1
@HDSP_TimecodeSync = common dso_local global i32 0, align 4
@HDSP_TimecodeLock = common dso_local global i32 0, align 4
@.str.97 = private unnamed_addr constant [15 x i8] c"ADAT Sync: %s\0A\00", align 1
@.str.98 = private unnamed_addr constant [20 x i8] c"ADAT Sync: No Lock\0A\00", align 1
@H9632 = common dso_local global i32 0, align 4
@.str.99 = private unnamed_addr constant [8 x i8] c"-10 dBV\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"+4 dBu\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c"Lo Gain\00", align 1
@.str.102 = private unnamed_addr constant [14 x i8] c"AD Gain : %s\0A\00", align 1
@.str.103 = private unnamed_addr constant [8 x i8] c"Hi Gain\00", align 1
@.str.104 = private unnamed_addr constant [14 x i8] c"DA Gain : %s\0A\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"0 dB\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"-6 dB\00", align 1
@.str.107 = private unnamed_addr constant [7 x i8] c"-12 dB\00", align 1
@.str.108 = private unnamed_addr constant [18 x i8] c"Phones Gain : %s\0A\00", align 1
@.str.109 = private unnamed_addr constant [25 x i8] c"XLR Breakout Cable : %s\0A\00", align 1
@HDSP_XLRBreakoutCable = common dso_local global i32 0, align 4
@.str.110 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@HDSP_AnalogExtensionBoard = common dso_local global i32 0, align 4
@.str.112 = private unnamed_addr constant [27 x i8] c"AEB : on (ADAT1 internal)\0A\00", align 1
@.str.113 = private unnamed_addr constant [28 x i8] c"AEB : off (ADAT1 external)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @snd_hdsp_proc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_hdsp_proc_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.hdsp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %15 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %16 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %15, i32 0, i32 0
  %17 = load %struct.hdsp*, %struct.hdsp** %16, align 8
  store %struct.hdsp* %17, %struct.hdsp** %5, align 8
  %18 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %19 = load i32, i32* @HDSP_statusRegister, align 4
  %20 = call i32 @hdsp_read(%struct.hdsp* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %22 = load i32, i32* @HDSP_status2Register, align 4
  %23 = call i32 @hdsp_read(%struct.hdsp* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %25 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %26 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %25, i32 0, i32 15
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %29 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %28, i32 0, i32 14
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  %34 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %27, i64 %33)
  %35 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %36 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %37 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %36, i32 0, i32 13
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %40 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %39, i32 0, i32 12
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %41)
  %43 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %44 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %45 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %44, i32 0, i32 11
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %48 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %47, i32 0, i32 10
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %51 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %50, i32 0, i32 9
  %52 = load i64, i64* %51, align 8
  %53 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %49, i64 %52)
  %54 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %55 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %56 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  %59 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %60 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %61 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %62)
  %64 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %65)
  %67 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %68)
  %70 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %71 = call i64 @hdsp_check_for_iobox(%struct.hdsp* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %2
  %74 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %75 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %74, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0))
  br label %614

76:                                               ; preds = %2
  %77 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %78 = call i64 @hdsp_check_for_firmware(%struct.hdsp* %77, i32 0)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %107

80:                                               ; preds = %76
  %81 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %82 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @HDSP_FirmwareCached, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %80
  %88 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %89 = call i64 @snd_hdsp_load_firmware_from_cache(%struct.hdsp* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %93 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %92, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i64 0, i64 0))
  br label %614

94:                                               ; preds = %87
  br label %106

95:                                               ; preds = %80
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %13, align 4
  %98 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %99 = call i32 @hdsp_request_fw_loader(%struct.hdsp* %98)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %104 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %103, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0))
  br label %614

105:                                              ; preds = %95
  br label %106

106:                                              ; preds = %105, %94
  br label %107

107:                                              ; preds = %106, %76
  %108 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %109 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %110 = load i32, i32* @HDSP_fifoStatus, align 4
  %111 = call i32 @hdsp_read(%struct.hdsp* %109, i32 %110)
  %112 = and i32 %111, 255
  %113 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %108, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %112)
  %114 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %115 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %116 = load i32, i32* @HDSP_midiStatusOut0, align 4
  %117 = call i32 @hdsp_read(%struct.hdsp* %115, i32 %116)
  %118 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %114, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i32 %117)
  %119 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %120 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %121 = load i32, i32* @HDSP_midiStatusIn0, align 4
  %122 = call i32 @hdsp_read(%struct.hdsp* %120, i32 %121)
  %123 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %119, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %122)
  %124 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %125 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %126 = load i32, i32* @HDSP_midiStatusOut1, align 4
  %127 = call i32 @hdsp_read(%struct.hdsp* %125, i32 %126)
  %128 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %124, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 %127)
  %129 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %130 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %131 = load i32, i32* @HDSP_midiStatusIn1, align 4
  %132 = call i32 @hdsp_read(%struct.hdsp* %130, i32 %131)
  %133 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %129, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 %132)
  %134 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %135 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %136 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %135, i32 0, i32 7
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)
  %141 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %134, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i8* %140)
  %142 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %143 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %142, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %144 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %145 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @HDSP_LatencyMask, align 4
  %148 = and i32 %146, %147
  %149 = call i32 @hdsp_decode_latency(i32 %148)
  %150 = add nsw i32 6, %149
  %151 = shl i32 1, %150
  store i32 %151, i32* %12, align 4
  %152 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %153 = load i32, i32* %12, align 4
  %154 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %155 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %154, i32 0, i32 6
  %156 = load i64, i64* %155, align 8
  %157 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %152, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.19, i64 0, i64 0), i32 %153, i64 %156)
  %158 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %159 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %160 = call i32 @hdsp_hw_pointer(%struct.hdsp* %159)
  %161 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %158, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0), i32 %160)
  %162 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %163 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %164 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %163, i32 0, i32 5
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)
  %169 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %162, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i8* %168)
  %170 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %171 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %172 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @HDSP_LineOut, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)
  %179 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %170, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* %178)
  %180 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* @HDSP_version0, align 4
  %183 = and i32 %181, %182
  %184 = load i32, i32* %7, align 4
  %185 = load i32, i32* @HDSP_version1, align 4
  %186 = and i32 %184, %185
  %187 = shl i32 %186, 1
  %188 = or i32 %183, %187
  %189 = load i32, i32* %7, align 4
  %190 = load i32, i32* @HDSP_version2, align 4
  %191 = and i32 %189, %190
  %192 = shl i32 %191, 2
  %193 = or i32 %188, %192
  %194 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %180, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0), i32 %193)
  %195 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %196 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %195, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %197 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %198 = call i32 @hdsp_clock_source(%struct.hdsp* %197)
  switch i32 %198, label %209 [
    i32 157, label %199
    i32 153, label %200
    i32 152, label %201
    i32 151, label %202
    i32 150, label %203
    i32 149, label %204
    i32 148, label %205
    i32 156, label %206
    i32 155, label %207
    i32 154, label %208
  ]

199:                                              ; preds = %107
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i8** %11, align 8
  br label %210

200:                                              ; preds = %107
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i8** %11, align 8
  br label %210

201:                                              ; preds = %107
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0), i8** %11, align 8
  br label %210

202:                                              ; preds = %107
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0), i8** %11, align 8
  br label %210

203:                                              ; preds = %107
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i8** %11, align 8
  br label %210

204:                                              ; preds = %107
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i8** %11, align 8
  br label %210

205:                                              ; preds = %107
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0), i8** %11, align 8
  br label %210

206:                                              ; preds = %107
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0), i8** %11, align 8
  br label %210

207:                                              ; preds = %107
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i64 0, i64 0), i8** %11, align 8
  br label %210

208:                                              ; preds = %107
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0), i8** %11, align 8
  br label %210

209:                                              ; preds = %107
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0), i8** %11, align 8
  br label %210

210:                                              ; preds = %209, %208, %207, %206, %205, %204, %203, %202, %201, %200, %199
  %211 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %212 = load i8*, i8** %11, align 8
  %213 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %211, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0), i8* %212)
  %214 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %215 = call i64 @hdsp_system_clock_mode(%struct.hdsp* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %210
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0), i8** %10, align 8
  br label %219

218:                                              ; preds = %210
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i8** %10, align 8
  br label %219

219:                                              ; preds = %218, %217
  %220 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %221 = call i32 @hdsp_pref_sync_ref(%struct.hdsp* %220)
  switch i32 %221, label %228 [
    i32 128, label %222
    i32 130, label %223
    i32 129, label %224
    i32 133, label %225
    i32 132, label %226
    i32 131, label %227
  ]

222:                                              ; preds = %219
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0), i8** %8, align 8
  br label %229

223:                                              ; preds = %219
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0), i8** %8, align 8
  br label %229

224:                                              ; preds = %219
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0), i8** %8, align 8
  br label %229

225:                                              ; preds = %219
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0), i8** %8, align 8
  br label %229

226:                                              ; preds = %219
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0), i8** %8, align 8
  br label %229

227:                                              ; preds = %219
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0), i8** %8, align 8
  br label %229

228:                                              ; preds = %219
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0), i8** %8, align 8
  br label %229

229:                                              ; preds = %228, %227, %226, %225, %224, %223, %222
  %230 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %231 = load i8*, i8** %8, align 8
  %232 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %230, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.44, i64 0, i64 0), i8* %231)
  %233 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %234 = call i32 @hdsp_autosync_ref(%struct.hdsp* %233)
  switch i32 %234, label %242 [
    i32 158, label %235
    i32 161, label %236
    i32 159, label %237
    i32 160, label %238
    i32 164, label %239
    i32 163, label %240
    i32 162, label %241
  ]

235:                                              ; preds = %229
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0), i8** %9, align 8
  br label %243

236:                                              ; preds = %229
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0), i8** %9, align 8
  br label %243

237:                                              ; preds = %229
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0), i8** %9, align 8
  br label %243

238:                                              ; preds = %229
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), i8** %9, align 8
  br label %243

239:                                              ; preds = %229
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0), i8** %9, align 8
  br label %243

240:                                              ; preds = %229
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0), i8** %9, align 8
  br label %243

241:                                              ; preds = %229
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0), i8** %9, align 8
  br label %243

242:                                              ; preds = %229
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0), i8** %9, align 8
  br label %243

243:                                              ; preds = %242, %241, %240, %239, %238, %237, %236, %235
  %244 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %245 = load i8*, i8** %9, align 8
  %246 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %244, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.47, i64 0, i64 0), i8* %245)
  %247 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %248 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %249 = call i32 @hdsp_external_sample_rate(%struct.hdsp* %248)
  %250 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %247, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.48, i64 0, i64 0), i32 %249)
  %251 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %252 = load i8*, i8** %10, align 8
  %253 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %251, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.49, i64 0, i64 0), i8* %252)
  %254 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %255 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %256 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 8
  %258 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %254, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.50, i64 0, i64 0), i32 %257)
  %259 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %260 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %261 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %260, i32 0, i32 3
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  %264 = zext i1 %263 to i64
  %265 = select i1 %263, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i64 0, i64 0)
  %266 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %259, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.51, i64 0, i64 0), i8* %265)
  %267 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %268 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %267, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %269 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %270 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @RPM, align 4
  %273 = icmp ne i32 %271, %272
  br i1 %273, label %274, label %293

274:                                              ; preds = %243
  %275 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %276 = call i32 @hdsp_spdif_in(%struct.hdsp* %275)
  switch i32 %276, label %289 [
    i32 134, label %277
    i32 136, label %280
    i32 135, label %283
    i32 137, label %286
  ]

277:                                              ; preds = %274
  %278 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %279 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %278, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.54, i64 0, i64 0))
  br label %292

280:                                              ; preds = %274
  %281 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %282 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %281, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.55, i64 0, i64 0))
  br label %292

283:                                              ; preds = %274
  %284 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %285 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %284, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.56, i64 0, i64 0))
  br label %292

286:                                              ; preds = %274
  %287 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %288 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %287, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i64 0, i64 0))
  br label %292

289:                                              ; preds = %274
  %290 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %291 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %290, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i64 0, i64 0))
  br label %292

292:                                              ; preds = %289, %286, %283, %280, %277
  br label %293

293:                                              ; preds = %292, %243
  %294 = load i32, i32* @RPM, align 4
  %295 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %296 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 8
  %298 = icmp eq i32 %294, %297
  br i1 %298, label %299, label %374

299:                                              ; preds = %293
  %300 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %301 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* @HDSP_RPM_Bypass, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %299
  %307 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %308 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %307, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.59, i64 0, i64 0))
  br label %312

309:                                              ; preds = %299
  %310 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %311 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %310, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.60, i64 0, i64 0))
  br label %312

312:                                              ; preds = %309, %306
  %313 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %314 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* @HDSP_RPM_Disconnect, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %312
  %320 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %321 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %320, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.61, i64 0, i64 0))
  br label %325

322:                                              ; preds = %312
  %323 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %324 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %323, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i64 0, i64 0))
  br label %325

325:                                              ; preds = %322, %319
  %326 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %327 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = load i32, i32* @HDSP_RPM_Inp12, align 4
  %330 = and i32 %328, %329
  switch i32 %330, label %346 [
    i32 144, label %331
    i32 145, label %334
    i32 143, label %337
    i32 147, label %340
    i32 146, label %343
  ]

331:                                              ; preds = %325
  %332 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %333 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %332, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.63, i64 0, i64 0))
  br label %349

334:                                              ; preds = %325
  %335 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %336 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %335, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.64, i64 0, i64 0))
  br label %349

337:                                              ; preds = %325
  %338 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %339 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %338, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.65, i64 0, i64 0))
  br label %349

340:                                              ; preds = %325
  %341 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %342 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %341, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.66, i64 0, i64 0))
  br label %349

343:                                              ; preds = %325
  %344 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %345 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %344, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.67, i64 0, i64 0))
  br label %349

346:                                              ; preds = %325
  %347 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %348 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %347, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.68, i64 0, i64 0))
  br label %349

349:                                              ; preds = %346, %343, %340, %337, %334, %331
  %350 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %351 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = load i32, i32* @HDSP_RPM_Inp34, align 4
  %354 = and i32 %352, %353
  switch i32 %354, label %370 [
    i32 139, label %355
    i32 140, label %358
    i32 138, label %361
    i32 142, label %364
    i32 141, label %367
  ]

355:                                              ; preds = %349
  %356 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %357 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %356, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.69, i64 0, i64 0))
  br label %373

358:                                              ; preds = %349
  %359 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %360 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %359, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.70, i64 0, i64 0))
  br label %373

361:                                              ; preds = %349
  %362 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %363 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %362, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.71, i64 0, i64 0))
  br label %373

364:                                              ; preds = %349
  %365 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %366 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %365, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.72, i64 0, i64 0))
  br label %373

367:                                              ; preds = %349
  %368 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %369 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %368, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.73, i64 0, i64 0))
  br label %373

370:                                              ; preds = %349
  %371 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %372 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %371, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i64 0, i64 0))
  br label %373

373:                                              ; preds = %370, %367, %364, %361, %358, %355
  br label %439

374:                                              ; preds = %293
  %375 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %376 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = load i32, i32* @HDSP_SPDIFOpticalOut, align 4
  %379 = and i32 %377, %378
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %384

381:                                              ; preds = %374
  %382 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %383 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %382, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.75, i64 0, i64 0))
  br label %387

384:                                              ; preds = %374
  %385 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %386 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %385, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.76, i64 0, i64 0))
  br label %387

387:                                              ; preds = %384, %381
  %388 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %389 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = load i32, i32* @HDSP_SPDIFProfessional, align 4
  %392 = and i32 %390, %391
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %397

394:                                              ; preds = %387
  %395 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %396 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %395, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.77, i64 0, i64 0))
  br label %400

397:                                              ; preds = %387
  %398 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %399 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %398, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.78, i64 0, i64 0))
  br label %400

400:                                              ; preds = %397, %394
  %401 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %402 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  %404 = load i32, i32* @HDSP_SPDIFEmphasis, align 4
  %405 = and i32 %403, %404
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %410

407:                                              ; preds = %400
  %408 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %409 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %408, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.79, i64 0, i64 0))
  br label %413

410:                                              ; preds = %400
  %411 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %412 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %411, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.80, i64 0, i64 0))
  br label %413

413:                                              ; preds = %410, %407
  %414 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %415 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 8
  %417 = load i32, i32* @HDSP_SPDIFNonAudio, align 4
  %418 = and i32 %416, %417
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %423

420:                                              ; preds = %413
  %421 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %422 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %421, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.81, i64 0, i64 0))
  br label %426

423:                                              ; preds = %413
  %424 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %425 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %424, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.82, i64 0, i64 0))
  br label %426

426:                                              ; preds = %423, %420
  %427 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %428 = call i32 @hdsp_spdif_sample_rate(%struct.hdsp* %427)
  store i32 %428, i32* %12, align 4
  %429 = load i32, i32* %12, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %435

431:                                              ; preds = %426
  %432 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %433 = load i32, i32* %12, align 4
  %434 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %432, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.83, i64 0, i64 0), i32 %433)
  br label %438

435:                                              ; preds = %426
  %436 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %437 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %436, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.84, i64 0, i64 0))
  br label %438

438:                                              ; preds = %435, %431
  br label %439

439:                                              ; preds = %438, %373
  %440 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %441 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %440, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %442 = load i32, i32* %6, align 4
  %443 = load i32, i32* @HDSP_Sync0, align 4
  %444 = and i32 %442, %443
  store i32 %444, i32* %12, align 4
  %445 = load i32, i32* %6, align 4
  %446 = load i32, i32* @HDSP_Lock0, align 4
  %447 = and i32 %445, %446
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %456

449:                                              ; preds = %439
  %450 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %451 = load i32, i32* %12, align 4
  %452 = icmp ne i32 %451, 0
  %453 = zext i1 %452 to i64
  %454 = select i1 %452, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i64 0, i64 0)
  %455 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %450, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.85, i64 0, i64 0), i8* %454)
  br label %459

456:                                              ; preds = %439
  %457 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %458 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %457, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.88, i64 0, i64 0))
  br label %459

459:                                              ; preds = %456, %449
  %460 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %461 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %460, i32 0, i32 2
  %462 = load i32, i32* %461, align 8
  switch i32 %462, label %500 [
    i32 166, label %463
    i32 165, label %463
  ]

463:                                              ; preds = %459, %459
  %464 = load i32, i32* %6, align 4
  %465 = load i32, i32* @HDSP_Sync1, align 4
  %466 = and i32 %464, %465
  store i32 %466, i32* %12, align 4
  %467 = load i32, i32* %6, align 4
  %468 = load i32, i32* @HDSP_Lock1, align 4
  %469 = and i32 %467, %468
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %478

471:                                              ; preds = %463
  %472 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %473 = load i32, i32* %12, align 4
  %474 = icmp ne i32 %473, 0
  %475 = zext i1 %474 to i64
  %476 = select i1 %474, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i64 0, i64 0)
  %477 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %472, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i64 0, i64 0), i8* %476)
  br label %481

478:                                              ; preds = %463
  %479 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %480 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %479, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.90, i64 0, i64 0))
  br label %481

481:                                              ; preds = %478, %471
  %482 = load i32, i32* %6, align 4
  %483 = load i32, i32* @HDSP_Sync2, align 4
  %484 = and i32 %482, %483
  store i32 %484, i32* %12, align 4
  %485 = load i32, i32* %6, align 4
  %486 = load i32, i32* @HDSP_Lock2, align 4
  %487 = and i32 %485, %486
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %496

489:                                              ; preds = %481
  %490 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %491 = load i32, i32* %12, align 4
  %492 = icmp ne i32 %491, 0
  %493 = zext i1 %492 to i64
  %494 = select i1 %492, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i64 0, i64 0)
  %495 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %490, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.91, i64 0, i64 0), i8* %494)
  br label %499

496:                                              ; preds = %481
  %497 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %498 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %497, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.92, i64 0, i64 0))
  br label %499

499:                                              ; preds = %496, %489
  br label %501

500:                                              ; preds = %459
  br label %501

501:                                              ; preds = %500, %499
  %502 = load i32, i32* %6, align 4
  %503 = load i32, i32* @HDSP_SPDIFSync, align 4
  %504 = and i32 %502, %503
  store i32 %504, i32* %12, align 4
  %505 = load i32, i32* %6, align 4
  %506 = load i32, i32* @HDSP_SPDIFErrorFlag, align 4
  %507 = and i32 %505, %506
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %512

509:                                              ; preds = %501
  %510 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %511 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %510, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.93, i64 0, i64 0))
  br label %519

512:                                              ; preds = %501
  %513 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %514 = load i32, i32* %12, align 4
  %515 = icmp ne i32 %514, 0
  %516 = zext i1 %515 to i64
  %517 = select i1 %515, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i64 0, i64 0)
  %518 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %513, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.94, i64 0, i64 0), i8* %517)
  br label %519

519:                                              ; preds = %512, %509
  %520 = load i32, i32* %7, align 4
  %521 = load i32, i32* @HDSP_wc_sync, align 4
  %522 = and i32 %520, %521
  store i32 %522, i32* %12, align 4
  %523 = load i32, i32* %7, align 4
  %524 = load i32, i32* @HDSP_wc_lock, align 4
  %525 = and i32 %523, %524
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %527, label %534

527:                                              ; preds = %519
  %528 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %529 = load i32, i32* %12, align 4
  %530 = icmp ne i32 %529, 0
  %531 = zext i1 %530 to i64
  %532 = select i1 %530, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i64 0, i64 0)
  %533 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %528, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.95, i64 0, i64 0), i8* %532)
  br label %537

534:                                              ; preds = %519
  %535 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %536 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %535, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.96, i64 0, i64 0))
  br label %537

537:                                              ; preds = %534, %527
  %538 = load i32, i32* %6, align 4
  %539 = load i32, i32* @HDSP_TimecodeSync, align 4
  %540 = and i32 %538, %539
  store i32 %540, i32* %12, align 4
  %541 = load i32, i32* %6, align 4
  %542 = load i32, i32* @HDSP_TimecodeLock, align 4
  %543 = and i32 %541, %542
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %552

545:                                              ; preds = %537
  %546 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %547 = load i32, i32* %12, align 4
  %548 = icmp ne i32 %547, 0
  %549 = zext i1 %548 to i64
  %550 = select i1 %548, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i64 0, i64 0)
  %551 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %546, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.97, i64 0, i64 0), i8* %550)
  br label %555

552:                                              ; preds = %537
  %553 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %554 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %553, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.98, i64 0, i64 0))
  br label %555

555:                                              ; preds = %552, %545
  %556 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %557 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %556, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %558 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %559 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %558, i32 0, i32 2
  %560 = load i32, i32* %559, align 8
  %561 = load i32, i32* @H9632, align 4
  %562 = icmp eq i32 %560, %561
  br i1 %562, label %563, label %614

563:                                              ; preds = %555
  %564 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %565 = call i32 @hdsp_ad_gain(%struct.hdsp* %564)
  switch i32 %565, label %568 [
    i32 0, label %566
    i32 1, label %567
  ]

566:                                              ; preds = %563
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.99, i64 0, i64 0), i8** %14, align 8
  br label %569

567:                                              ; preds = %563
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i64 0, i64 0), i8** %14, align 8
  br label %569

568:                                              ; preds = %563
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.101, i64 0, i64 0), i8** %14, align 8
  br label %569

569:                                              ; preds = %568, %567, %566
  %570 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %571 = load i8*, i8** %14, align 8
  %572 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %570, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.102, i64 0, i64 0), i8* %571)
  %573 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %574 = call i32 @hdsp_da_gain(%struct.hdsp* %573)
  switch i32 %574, label %577 [
    i32 0, label %575
    i32 1, label %576
  ]

575:                                              ; preds = %569
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.103, i64 0, i64 0), i8** %14, align 8
  br label %578

576:                                              ; preds = %569
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i64 0, i64 0), i8** %14, align 8
  br label %578

577:                                              ; preds = %569
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.99, i64 0, i64 0), i8** %14, align 8
  br label %578

578:                                              ; preds = %577, %576, %575
  %579 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %580 = load i8*, i8** %14, align 8
  %581 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %579, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.104, i64 0, i64 0), i8* %580)
  %582 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %583 = call i32 @hdsp_phone_gain(%struct.hdsp* %582)
  switch i32 %583, label %586 [
    i32 0, label %584
    i32 1, label %585
  ]

584:                                              ; preds = %578
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i64 0, i64 0), i8** %14, align 8
  br label %587

585:                                              ; preds = %578
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.106, i64 0, i64 0), i8** %14, align 8
  br label %587

586:                                              ; preds = %578
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.107, i64 0, i64 0), i8** %14, align 8
  br label %587

587:                                              ; preds = %586, %585, %584
  %588 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %589 = load i8*, i8** %14, align 8
  %590 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %588, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.108, i64 0, i64 0), i8* %589)
  %591 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %592 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %593 = load i32, i32* @HDSP_XLRBreakoutCable, align 4
  %594 = call i64 @hdsp_toggle_setting(%struct.hdsp* %592, i32 %593)
  %595 = icmp ne i64 %594, 0
  %596 = zext i1 %595 to i64
  %597 = select i1 %595, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.110, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i64 0, i64 0)
  %598 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %591, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.109, i64 0, i64 0), i8* %597)
  %599 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %600 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %599, i32 0, i32 0
  %601 = load i32, i32* %600, align 8
  %602 = load i32, i32* @HDSP_AnalogExtensionBoard, align 4
  %603 = and i32 %601, %602
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %605, label %608

605:                                              ; preds = %587
  %606 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %607 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %606, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.112, i64 0, i64 0))
  br label %611

608:                                              ; preds = %587
  %609 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %610 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %609, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.113, i64 0, i64 0))
  br label %611

611:                                              ; preds = %608, %605
  %612 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %613 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %612, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  br label %614

614:                                              ; preds = %73, %91, %102, %611, %555
  ret void
}

declare dso_local i32 @hdsp_read(%struct.hdsp*, i32) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i64 @hdsp_check_for_iobox(%struct.hdsp*) #1

declare dso_local i64 @hdsp_check_for_firmware(%struct.hdsp*, i32) #1

declare dso_local i64 @snd_hdsp_load_firmware_from_cache(%struct.hdsp*) #1

declare dso_local i32 @hdsp_request_fw_loader(%struct.hdsp*) #1

declare dso_local i32 @hdsp_decode_latency(i32) #1

declare dso_local i32 @hdsp_hw_pointer(%struct.hdsp*) #1

declare dso_local i32 @hdsp_clock_source(%struct.hdsp*) #1

declare dso_local i64 @hdsp_system_clock_mode(%struct.hdsp*) #1

declare dso_local i32 @hdsp_pref_sync_ref(%struct.hdsp*) #1

declare dso_local i32 @hdsp_autosync_ref(%struct.hdsp*) #1

declare dso_local i32 @hdsp_external_sample_rate(%struct.hdsp*) #1

declare dso_local i32 @hdsp_spdif_in(%struct.hdsp*) #1

declare dso_local i32 @hdsp_spdif_sample_rate(%struct.hdsp*) #1

declare dso_local i32 @hdsp_ad_gain(%struct.hdsp*) #1

declare dso_local i32 @hdsp_da_gain(%struct.hdsp*) #1

declare dso_local i32 @hdsp_phone_gain(%struct.hdsp*) #1

declare dso_local i64 @hdsp_toggle_setting(%struct.hdsp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
