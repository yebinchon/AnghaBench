; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_proc_read_aes32.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_proc_read_aes32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.hdspm* }
%struct.hdspm = type { i32, i32, i64, i32, i32, i64, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.snd_info_buffer = type { i32 }

@HDSPM_statusRegister = common dso_local global i32 0, align 4
@HDSPM_statusRegister2 = common dso_local global i32 0, align 4
@HDSPM_timecodeRegister = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s (Card #%d) Rev.%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"IRQ: %d Registers bus: 0x%lx VM: 0x%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"--- System ---\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"IRQ Pending: Audio=%d, MIDI0=%d, MIDI1=%d, IRQcount=%d\0A\00", align 1
@HDSPM_audioIRQPending = common dso_local global i32 0, align 4
@HDSPM_midi0IRQPending = common dso_local global i32 0, align 4
@HDSPM_midi1IRQPending = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [66 x i8] c"HW pointer: id = %d, rawptr = %d (%d->%d) estimated= %ld (bytes)\0A\00", align 1
@HDSPM_BufferID = common dso_local global i32 0, align 4
@HDSPM_BufferPositionMask = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [54 x i8] c"MIDI FIFO: Out1=0x%x, Out2=0x%x, In1=0x%x, In2=0x%x \0A\00", align 1
@HDSPM_midiStatusOut0 = common dso_local global i32 0, align 4
@HDSPM_midiStatusOut1 = common dso_local global i32 0, align 4
@HDSPM_midiStatusIn0 = common dso_local global i32 0, align 4
@HDSPM_midiStatusIn1 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"MIDIoverMADI FIFO: In=0x%x, Out=0x%x \0A\00", align 1
@HDSPM_midiStatusIn2 = common dso_local global i32 0, align 4
@HDSPM_midiStatusOut2 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [62 x i8] c"Register: ctrl1=0x%x, ctrl2=0x%x, status1=0x%x, status2=0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"--- Settings ---\0A\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"Size (Latency): %d samples (2 periods of %lu bytes)\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Line out: %s\0A\00", align 1
@HDSPM_LineOut = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"on \00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"ClearTrackMarker %s, Emphasis %s, Dolby %s\0A\00", align 1
@HDSPM_clr_tms = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@HDSPM_Emphasis = common dso_local global i32 0, align 4
@HDSPM_Dolby = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [38 x i8] c"Preferred Sync Reference: Word Clock\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"Preferred Sync Reference: AES%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"System Clock Frequency: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"Double speed: %s\0A\00", align 1
@HDSPM_DS_DoubleWire = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [12 x i8] c"Double wire\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"Single wire\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"Quad speed: %s\0A\00", align 1
@HDSPM_QS_DoubleWire = common dso_local global i32 0, align 4
@HDSPM_QS_QuadWire = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [10 x i8] c"Quad wire\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"--- Status:\0A\00", align 1
@HDSPM_AES32_wcLock = common dso_local global i32 0, align 4
@HDSPM_AES32_wcSync = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [25 x i8] c"Word: %s  Frequency: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"Sync   \00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"Lock   \00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"No Lock\00", align 1
@HDSPM_AES32_wcFreq_bit = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [26 x i8] c"AES%d: %s  Frequency: %d\0A\00", align 1
@HDSPM_LockAES = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"Word Clock\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"AES1\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"AES2\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"AES3\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"AES4\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"AES5\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"AES6\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"AES7\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"AES8\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"TCO\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"Sync In\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"---\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"AutoSync ref = %s\0A\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @snd_hdspm_proc_read_aes32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_hdspm_proc_read_aes32(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.hdspm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %14 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %15 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %14, i32 0, i32 0
  %16 = load %struct.hdspm*, %struct.hdspm** %15, align 8
  store %struct.hdspm* %16, %struct.hdspm** %5, align 8
  %17 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %18 = load i32, i32* @HDSPM_statusRegister, align 4
  %19 = call i32 @hdspm_read(%struct.hdspm* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %21 = load i32, i32* @HDSPM_statusRegister2, align 4
  %22 = call i32 @hdspm_read(%struct.hdspm* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %24 = load i32, i32* @HDSPM_timecodeRegister, align 4
  %25 = call i32 @hdspm_read(%struct.hdspm* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %27 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %28 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %27, i32 0, i32 10
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %31 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %30, i32 0, i32 9
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  %36 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %37 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %29, i64 %35, i32 %38)
  %40 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %41 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %42 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %45 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %48 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %46, i64 %49)
  %51 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %52 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @HDSPM_audioIRQPending, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @HDSPM_midi0IRQPending, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 1, i32 0
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @HDSPM_midi1IRQPending, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 1, i32 0
  %69 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %70 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %53, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %56, i32 %62, i32 %68, i32 %71)
  %73 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @HDSPM_BufferID, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 1, i32 0
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @HDSPM_BufferPositionMask, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @HDSPM_BufferPositionMask, align 4
  %85 = and i32 %83, %84
  %86 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %87 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = mul nsw i32 2, %89
  %91 = urem i32 %85, %90
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @HDSPM_BufferPositionMask, align 4
  %94 = and i32 %92, %93
  %95 = sub i32 %94, 64
  %96 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %97 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = mul nsw i32 2, %99
  %101 = urem i32 %95, %100
  %102 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %103 = call i64 @hdspm_hw_pointer(%struct.hdspm* %102)
  %104 = mul nsw i64 %103, 4
  %105 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %73, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i32 %79, i32 %82, i32 %91, i32 %101, i64 %104)
  %106 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %107 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %108 = load i32, i32* @HDSPM_midiStatusOut0, align 4
  %109 = call i32 @hdspm_read(%struct.hdspm* %107, i32 %108)
  %110 = and i32 %109, 255
  %111 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %112 = load i32, i32* @HDSPM_midiStatusOut1, align 4
  %113 = call i32 @hdspm_read(%struct.hdspm* %111, i32 %112)
  %114 = and i32 %113, 255
  %115 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %116 = load i32, i32* @HDSPM_midiStatusIn0, align 4
  %117 = call i32 @hdspm_read(%struct.hdspm* %115, i32 %116)
  %118 = and i32 %117, 255
  %119 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %120 = load i32, i32* @HDSPM_midiStatusIn1, align 4
  %121 = call i32 @hdspm_read(%struct.hdspm* %119, i32 %120)
  %122 = and i32 %121, 255
  %123 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %106, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %110, i32 %114, i32 %118, i32 %122)
  %124 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %125 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %126 = load i32, i32* @HDSPM_midiStatusIn2, align 4
  %127 = call i32 @hdspm_read(%struct.hdspm* %125, i32 %126)
  %128 = and i32 %127, 255
  %129 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %130 = load i32, i32* @HDSPM_midiStatusOut2, align 4
  %131 = call i32 @hdspm_read(%struct.hdspm* %129, i32 %130)
  %132 = and i32 %131, 255
  %133 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %124, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %128, i32 %132)
  %134 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %135 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %136 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %139 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* %7, align 4
  %143 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %134, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), i32 %137, i32 %140, i32 %141, i32 %142)
  %144 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %145 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %144, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %146 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %147 = call i32 @hdspm_get_latency(%struct.hdspm* %146)
  store i32 %147, i32* %13, align 4
  %148 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %149 = load i32, i32* %13, align 4
  %150 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %151 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %148, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0), i32 %149, i64 %152)
  %154 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %155 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %156 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @HDSPM_LineOut, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)
  %163 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %154, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %162)
  %164 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %165 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %166 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @HDSPM_clr_tms, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)
  %173 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %174 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @HDSPM_Emphasis, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)
  %181 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %182 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @HDSPM_Dolby, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)
  %189 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %164, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0), i8* %172, i8* %180, i8* %188)
  %190 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %191 = call i32 @hdspm_pref_sync_ref(%struct.hdspm* %190)
  store i32 %191, i32* %11, align 4
  %192 = load i32, i32* %11, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %2
  %195 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %196 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %195, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0))
  br label %201

197:                                              ; preds = %2
  %198 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %199 = load i32, i32* %11, align 4
  %200 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %198, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i32 %199)
  br label %201

201:                                              ; preds = %197, %194
  %202 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %203 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %204 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %202, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i32 %205)
  %207 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %208 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %209 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @HDSPM_DS_DoubleWire, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  %214 = zext i1 %213 to i64
  %215 = select i1 %213, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0)
  %216 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %207, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i8* %215)
  %217 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %218 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %219 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @HDSPM_QS_DoubleWire, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %201
  br label %234

225:                                              ; preds = %201
  %226 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %227 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @HDSPM_QS_QuadWire, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  %232 = zext i1 %231 to i64
  %233 = select i1 %231, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0)
  br label %234

234:                                              ; preds = %225, %224
  %235 = phi i8* [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), %224 ], [ %233, %225 ]
  %236 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %217, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8* %235)
  %237 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %238 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %237, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0))
  %239 = load i32, i32* %6, align 4
  %240 = load i32, i32* @HDSPM_AES32_wcLock, align 4
  %241 = and i32 %239, %240
  store i32 %241, i32* %9, align 4
  %242 = load i32, i32* %9, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %234
  %245 = load i32, i32* %6, align 4
  %246 = load i32, i32* @HDSPM_AES32_wcSync, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br label %249

249:                                              ; preds = %244, %234
  %250 = phi i1 [ false, %234 ], [ %248, %244 ]
  %251 = zext i1 %250 to i32
  store i32 %251, i32* %10, align 4
  %252 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %253 = load i32, i32* %9, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %260

255:                                              ; preds = %249
  %256 = load i32, i32* %10, align 4
  %257 = icmp ne i32 %256, 0
  %258 = zext i1 %257 to i64
  %259 = select i1 %257, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0)
  br label %261

260:                                              ; preds = %249
  br label %261

261:                                              ; preds = %260, %255
  %262 = phi i8* [ %259, %255 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), %260 ]
  %263 = load i32, i32* %6, align 4
  %264 = load i32, i32* @HDSPM_AES32_wcFreq_bit, align 4
  %265 = lshr i32 %263, %264
  %266 = and i32 %265, 15
  %267 = call i32 @HDSPM_bit2freq(i32 %266)
  %268 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %252, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), i8* %262, i32 %267)
  store i32 0, i32* %13, align 4
  br label %269

269:                                              ; preds = %291, %261
  %270 = load i32, i32* %13, align 4
  %271 = icmp slt i32 %270, 8
  br i1 %271, label %272, label %294

272:                                              ; preds = %269
  %273 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %274 = load i32, i32* %13, align 4
  %275 = add nsw i32 %274, 1
  %276 = load i32, i32* %7, align 4
  %277 = load i32, i32* @HDSPM_LockAES, align 4
  %278 = load i32, i32* %13, align 4
  %279 = ashr i32 %277, %278
  %280 = and i32 %276, %279
  %281 = icmp ne i32 %280, 0
  %282 = zext i1 %281 to i64
  %283 = select i1 %281, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0)
  %284 = load i32, i32* %8, align 4
  %285 = load i32, i32* %13, align 4
  %286 = mul nsw i32 4, %285
  %287 = lshr i32 %284, %286
  %288 = and i32 %287, 15
  %289 = call i32 @HDSPM_bit2freq(i32 %288)
  %290 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %273, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i64 0, i64 0), i32 %275, i8* %283, i32 %289)
  br label %291

291:                                              ; preds = %272
  %292 = load i32, i32* %13, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %13, align 4
  br label %269

294:                                              ; preds = %269
  %295 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %296 = call i32 @hdspm_autosync_ref(%struct.hdspm* %295)
  switch i32 %296, label %309 [
    i32 131, label %297
    i32 128, label %298
    i32 139, label %299
    i32 138, label %300
    i32 137, label %301
    i32 136, label %302
    i32 135, label %303
    i32 134, label %304
    i32 133, label %305
    i32 132, label %306
    i32 129, label %307
    i32 130, label %308
  ]

297:                                              ; preds = %294
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i8** %12, align 8
  br label %310

298:                                              ; preds = %294
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0), i8** %12, align 8
  br label %310

299:                                              ; preds = %294
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i8** %12, align 8
  br label %310

300:                                              ; preds = %294
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i8** %12, align 8
  br label %310

301:                                              ; preds = %294
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i8** %12, align 8
  br label %310

302:                                              ; preds = %294
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i8** %12, align 8
  br label %310

303:                                              ; preds = %294
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i8** %12, align 8
  br label %310

304:                                              ; preds = %294
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), i8** %12, align 8
  br label %310

305:                                              ; preds = %294
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i8** %12, align 8
  br label %310

306:                                              ; preds = %294
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), i8** %12, align 8
  br label %310

307:                                              ; preds = %294
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i8** %12, align 8
  br label %310

308:                                              ; preds = %294
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0), i8** %12, align 8
  br label %310

309:                                              ; preds = %294
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0), i8** %12, align 8
  br label %310

310:                                              ; preds = %309, %308, %307, %306, %305, %304, %303, %302, %301, %300, %299, %298, %297
  %311 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %312 = load i8*, i8** %12, align 8
  %313 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %311, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i64 0, i64 0), i8* %312)
  %314 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %315 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %316 = call i32 @snd_hdspm_proc_read_tco(%struct.snd_info_entry* %314, %struct.snd_info_buffer* %315)
  %317 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %318 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %317, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0))
  ret void
}

declare dso_local i32 @hdspm_read(%struct.hdspm*, i32) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i64 @hdspm_hw_pointer(%struct.hdspm*) #1

declare dso_local i32 @hdspm_get_latency(%struct.hdspm*) #1

declare dso_local i32 @hdspm_pref_sync_ref(%struct.hdspm*) #1

declare dso_local i32 @HDSPM_bit2freq(i32) #1

declare dso_local i32 @hdspm_autosync_ref(%struct.hdspm*) #1

declare dso_local i32 @snd_hdspm_proc_read_tco(%struct.snd_info_entry*, %struct.snd_info_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
