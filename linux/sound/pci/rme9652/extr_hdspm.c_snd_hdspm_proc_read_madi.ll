; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_proc_read_madi.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_proc_read_madi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.hdspm* }
%struct.hdspm = type { i32, i32, i64, i32, i32, i64, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.snd_info_buffer = type { i32 }

@HDSPM_statusRegister = common dso_local global i32 0, align 4
@HDSPM_statusRegister2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s (Card #%d) Rev.%x Status2first3bits: %x\0A\00", align 1
@HDSPM_version0 = common dso_local global i32 0, align 4
@HDSPM_version1 = common dso_local global i32 0, align 4
@HDSPM_version2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"HW Serial: 0x%06x%06x\0A\00", align 1
@HDSPM_midiStatusIn1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"IRQ: %d Registers bus: 0x%lx VM: 0x%lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"--- System ---\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"IRQ Pending: Audio=%d, MIDI0=%d, MIDI1=%d, IRQcount=%d\0A\00", align 1
@HDSPM_audioIRQPending = common dso_local global i32 0, align 4
@HDSPM_midi0IRQPending = common dso_local global i32 0, align 4
@HDSPM_midi1IRQPending = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [66 x i8] c"HW pointer: id = %d, rawptr = %d (%d->%d) estimated= %ld (bytes)\0A\00", align 1
@HDSPM_BufferID = common dso_local global i32 0, align 4
@HDSPM_BufferPositionMask = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [54 x i8] c"MIDI FIFO: Out1=0x%x, Out2=0x%x, In1=0x%x, In2=0x%x \0A\00", align 1
@HDSPM_midiStatusOut0 = common dso_local global i32 0, align 4
@HDSPM_midiStatusOut1 = common dso_local global i32 0, align 4
@HDSPM_midiStatusIn0 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"MIDIoverMADI FIFO: In=0x%x, Out=0x%x \0A\00", align 1
@HDSPM_midiStatusIn2 = common dso_local global i32 0, align 4
@HDSPM_midiStatusOut2 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [62 x i8] c"Register: ctrl1=0x%x, ctrl2=0x%x, status1=0x%x, status2=0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"--- Settings ---\0A\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"Size (Latency): %d samples (2 periods of %lu bytes)\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Line out: %s\0A\00", align 1
@HDSPM_LineOut = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"on \00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.14 = private unnamed_addr constant [67 x i8] c"ClearTrackMarker = %s, Transmit in %s Channel Mode, Auto Input %s\0A\00", align 1
@HDSPM_clr_tms = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@HDSPM_TX_64ch = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [3 x i8] c"64\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"56\00", align 1
@HDSPM_AutoInp = common dso_local global i32 0, align 4
@HDSPM_ClockModeMaster = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"AutoSync\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"Master\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"AutoSync Reference: %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"Word Clock\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"MADI Sync\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"TCO\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"Sync In\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"XXXX Clock\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"Preferred Sync Reference: %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"System Clock Frequency: %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"--- Status:\0A\00", align 1
@HDSPM_madiSync = common dso_local global i32 0, align 4
@HDSPM_wcSync = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [30 x i8] c"Inputs MADI=%s, WordClock=%s\0A\00", align 1
@HDSPM_madiLock = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [5 x i8] c"Sync\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"Lock\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"NoLock\00", align 1
@HDSPM_wcLock = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [16 x i8] c"Input not valid\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"---\00", align 1
@.str.35 = private unnamed_addr constant [57 x i8] c"AutoSync: Reference= %s, Freq=%d (MADI = %d, Word = %d)\0A\00", align 1
@HDSPM_madiFreqMask = common dso_local global i32 0, align 4
@HDSPM_wcFreqMask = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [20 x i8] c"Input: %s, Mode=%s\0A\00", align 1
@HDSPM_AB_int = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [5 x i8] c"Coax\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"Optical\00", align 1
@HDSPM_RX_64ch = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [12 x i8] c"64 channels\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"56 channels\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @snd_hdspm_proc_read_madi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_hdspm_proc_read_madi(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.hdspm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %13 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %14 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %13, i32 0, i32 0
  %15 = load %struct.hdspm*, %struct.hdspm** %14, align 8
  store %struct.hdspm* %15, %struct.hdspm** %5, align 8
  %16 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %17 = load i32, i32* @HDSPM_statusRegister, align 4
  %18 = call i32 @hdspm_read(%struct.hdspm* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %20 = load i32, i32* @HDSPM_statusRegister2, align 4
  %21 = call i32 @hdspm_read(%struct.hdspm* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %23 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %24 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %23, i32 0, i32 11
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %27 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %26, i32 0, i32 10
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  %32 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %33 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %32, i32 0, i32 9
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @HDSPM_version0, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @HDSPM_version1, align 4
  %40 = and i32 %38, %39
  %41 = or i32 %37, %40
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @HDSPM_version2, align 4
  %44 = and i32 %42, %43
  %45 = or i32 %41, %44
  %46 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %22, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %25, i64 %31, i32 %34, i32 %45)
  %47 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %48 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %49 = load i32, i32* @HDSPM_midiStatusIn1, align 4
  %50 = call i32 @hdspm_read(%struct.hdspm* %48, i32 %49)
  %51 = ashr i32 %50, 8
  %52 = and i32 %51, 16777215
  %53 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %54 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %53, i32 0, i32 8
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %55)
  %57 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %58 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %59 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %62 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %65 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %63, i64 %66)
  %68 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %69 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %70 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @HDSPM_audioIRQPending, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @HDSPM_midi0IRQPending, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 1, i32 0
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @HDSPM_midi1IRQPending, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 1, i32 0
  %86 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %87 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %70, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %73, i32 %79, i32 %85, i32 %88)
  %90 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @HDSPM_BufferID, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 1, i32 0
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @HDSPM_BufferPositionMask, align 4
  %99 = and i32 %97, %98
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @HDSPM_BufferPositionMask, align 4
  %102 = and i32 %100, %101
  %103 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %104 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  %107 = mul nsw i32 2, %106
  %108 = urem i32 %102, %107
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @HDSPM_BufferPositionMask, align 4
  %111 = and i32 %109, %110
  %112 = sub i32 %111, 64
  %113 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %114 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = mul nsw i32 2, %116
  %118 = urem i32 %112, %117
  %119 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %120 = call i64 @hdspm_hw_pointer(%struct.hdspm* %119)
  %121 = mul nsw i64 %120, 4
  %122 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %90, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0), i32 %96, i32 %99, i32 %108, i32 %118, i64 %121)
  %123 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %124 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %125 = load i32, i32* @HDSPM_midiStatusOut0, align 4
  %126 = call i32 @hdspm_read(%struct.hdspm* %124, i32 %125)
  %127 = and i32 %126, 255
  %128 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %129 = load i32, i32* @HDSPM_midiStatusOut1, align 4
  %130 = call i32 @hdspm_read(%struct.hdspm* %128, i32 %129)
  %131 = and i32 %130, 255
  %132 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %133 = load i32, i32* @HDSPM_midiStatusIn0, align 4
  %134 = call i32 @hdspm_read(%struct.hdspm* %132, i32 %133)
  %135 = and i32 %134, 255
  %136 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %137 = load i32, i32* @HDSPM_midiStatusIn1, align 4
  %138 = call i32 @hdspm_read(%struct.hdspm* %136, i32 %137)
  %139 = and i32 %138, 255
  %140 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %123, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 %127, i32 %131, i32 %135, i32 %139)
  %141 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %142 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %143 = load i32, i32* @HDSPM_midiStatusIn2, align 4
  %144 = call i32 @hdspm_read(%struct.hdspm* %142, i32 %143)
  %145 = and i32 %144, 255
  %146 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %147 = load i32, i32* @HDSPM_midiStatusOut2, align 4
  %148 = call i32 @hdspm_read(%struct.hdspm* %146, i32 %147)
  %149 = and i32 %148, 255
  %150 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %141, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %145, i32 %149)
  %151 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %152 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %153 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %156 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* %7, align 4
  %160 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %151, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0), i32 %154, i32 %157, i32 %158, i32 %159)
  %161 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %162 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %161, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %163 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %164 = call i32 @hdspm_get_latency(%struct.hdspm* %163)
  store i32 %164, i32* %11, align 4
  %165 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %166 = load i32, i32* %11, align 4
  %167 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %168 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %165, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0), i32 %166, i64 %169)
  %171 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %172 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %173 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @HDSPM_LineOut, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  %178 = zext i1 %177 to i64
  %179 = select i1 %177, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0)
  %180 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %171, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %179)
  %181 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %182 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %183 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @HDSPM_clr_tms, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  %188 = zext i1 %187 to i64
  %189 = select i1 %187, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0)
  %190 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %191 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @HDSPM_TX_64ch, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  %196 = zext i1 %195 to i64
  %197 = select i1 %195, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0)
  %198 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %199 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @HDSPM_AutoInp, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  %204 = zext i1 %203 to i64
  %205 = select i1 %203, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0)
  %206 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %181, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.14, i64 0, i64 0), i8* %189, i8* %197, i8* %205)
  %207 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %208 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @HDSPM_ClockModeMaster, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i8** %10, align 8
  br label %215

214:                                              ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8** %10, align 8
  br label %215

215:                                              ; preds = %214, %213
  %216 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %217 = load i8*, i8** %10, align 8
  %218 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %216, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i8* %217)
  %219 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %220 = call i32 @hdspm_pref_sync_ref(%struct.hdspm* %219)
  switch i32 %220, label %225 [
    i32 128, label %221
    i32 131, label %222
    i32 129, label %223
    i32 130, label %224
  ]

221:                                              ; preds = %215
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8** %8, align 8
  br label %226

222:                                              ; preds = %215
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i8** %8, align 8
  br label %226

223:                                              ; preds = %215
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i8** %8, align 8
  br label %226

224:                                              ; preds = %215
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8** %8, align 8
  br label %226

225:                                              ; preds = %215
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i8** %8, align 8
  br label %226

226:                                              ; preds = %225, %224, %223, %222, %221
  %227 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %228 = load i8*, i8** %8, align 8
  %229 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %227, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i64 0, i64 0), i8* %228)
  %230 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %231 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %232 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %230, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0), i32 %233)
  %235 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %236 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %235, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0))
  %237 = load i32, i32* %6, align 4
  %238 = load i32, i32* @HDSPM_madiSync, align 4
  %239 = and i32 %237, %238
  store i32 %239, i32* %11, align 4
  %240 = load i32, i32* %7, align 4
  %241 = load i32, i32* @HDSPM_wcSync, align 4
  %242 = and i32 %240, %241
  store i32 %242, i32* %12, align 4
  %243 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %244 = load i32, i32* %6, align 4
  %245 = load i32, i32* @HDSPM_madiLock, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %226
  %249 = load i32, i32* %11, align 4
  %250 = icmp ne i32 %249, 0
  %251 = zext i1 %250 to i64
  %252 = select i1 %250, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0)
  br label %254

253:                                              ; preds = %226
  br label %254

254:                                              ; preds = %253, %248
  %255 = phi i8* [ %252, %248 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), %253 ]
  %256 = load i32, i32* %7, align 4
  %257 = load i32, i32* @HDSPM_wcLock, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %254
  %261 = load i32, i32* %12, align 4
  %262 = icmp ne i32 %261, 0
  %263 = zext i1 %262 to i64
  %264 = select i1 %262, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0)
  br label %266

265:                                              ; preds = %254
  br label %266

266:                                              ; preds = %265, %260
  %267 = phi i8* [ %264, %260 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), %265 ]
  %268 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %243, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i64 0, i64 0), i8* %255, i8* %267)
  %269 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %270 = call i32 @hdspm_autosync_ref(%struct.hdspm* %269)
  switch i32 %270, label %276 [
    i32 134, label %271
    i32 133, label %272
    i32 132, label %273
    i32 136, label %274
    i32 135, label %275
  ]

271:                                              ; preds = %266
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8** %9, align 8
  br label %277

272:                                              ; preds = %266
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i8** %9, align 8
  br label %277

273:                                              ; preds = %266
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8** %9, align 8
  br label %277

274:                                              ; preds = %266
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i8** %9, align 8
  br label %277

275:                                              ; preds = %266
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0), i8** %9, align 8
  br label %277

276:                                              ; preds = %266
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0), i8** %9, align 8
  br label %277

277:                                              ; preds = %276, %275, %274, %273, %272, %271
  %278 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %279 = load i8*, i8** %9, align 8
  %280 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %281 = call i32 @hdspm_external_sample_rate(%struct.hdspm* %280)
  %282 = load i32, i32* %6, align 4
  %283 = load i32, i32* @HDSPM_madiFreqMask, align 4
  %284 = and i32 %282, %283
  %285 = lshr i32 %284, 22
  %286 = load i32, i32* %7, align 4
  %287 = load i32, i32* @HDSPM_wcFreqMask, align 4
  %288 = and i32 %286, %287
  %289 = lshr i32 %288, 5
  %290 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %278, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.35, i64 0, i64 0), i8* %279, i32 %281, i32 %285, i32 %289)
  %291 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %292 = load i32, i32* %6, align 4
  %293 = load i32, i32* @HDSPM_AB_int, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  %296 = zext i1 %295 to i64
  %297 = select i1 %295, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i64 0, i64 0)
  %298 = load i32, i32* %6, align 4
  %299 = load i32, i32* @HDSPM_RX_64ch, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  %302 = zext i1 %301 to i64
  %303 = select i1 %301, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0)
  %304 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %291, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i64 0, i64 0), i8* %297, i8* %303)
  %305 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %306 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %307 = call i32 @snd_hdspm_proc_read_tco(%struct.snd_info_entry* %305, %struct.snd_info_buffer* %306)
  %308 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %309 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %308, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0))
  ret void
}

declare dso_local i32 @hdspm_read(%struct.hdspm*, i32) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i64 @hdspm_hw_pointer(%struct.hdspm*) #1

declare dso_local i32 @hdspm_get_latency(%struct.hdspm*) #1

declare dso_local i32 @hdspm_pref_sync_ref(%struct.hdspm*) #1

declare dso_local i32 @hdspm_autosync_ref(%struct.hdspm*) #1

declare dso_local i32 @hdspm_external_sample_rate(%struct.hdspm*) #1

declare dso_local i32 @snd_hdspm_proc_read_tco(%struct.snd_info_entry*, %struct.snd_info_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
