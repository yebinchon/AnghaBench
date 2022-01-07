; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_snd_rme9652_proc_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_snd_rme9652_proc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { i64 }
%struct.snd_info_buffer = type { i32 }
%struct.snd_rme9652 = type { i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@RME9652_status_register = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s (Card #%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Buffers: capture %p playback %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"IRQ: %d Registers bus: 0x%lx VM: 0x%lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Control register: %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@RME9652_latency = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"Latency: %d samples (2 periods of %lu bytes)\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Hardware pointer (frames): %ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Passthru: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@RME9652_Master = common dso_local global i32 0, align 4
@RME9652_wsel = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"Clock mode: autosync\0A\00", align 1
@RME9652_wsel_rd = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"Clock mode: word clock\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"Clock mode: word clock (no signal)\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Clock mode: master\0A\00", align 1
@RME9652_SyncPref_Mask = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [26 x i8] c"Pref. sync source: ADAT1\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Pref. sync source: ADAT2\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"Pref. sync source: ADAT3\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"Pref. sync source: IEC958\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"Pref. sync source: ???\0A\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"\0AADAT1 Input source: %s\0A\00", align 1
@RME9652_ADAT1_INTERNAL = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [9 x i8] c"Internal\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"ADAT1 optical\00", align 1
@RME9652_inp = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [21 x i8] c"IEC958 input: ADAT1\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"IEC958 input: Coaxial\0A\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"IEC958 input: Internal\0A\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"IEC958 input: ???\0A\00", align 1
@RME9652_opt_out = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [32 x i8] c"IEC958 output: Coaxial & ADAT1\0A\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"IEC958 output: Coaxial only\0A\00", align 1
@RME9652_PRO = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [30 x i8] c"IEC958 quality: Professional\0A\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"IEC958 quality: Consumer\0A\00", align 1
@RME9652_EMP = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [21 x i8] c"IEC958 emphasis: on\0A\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"IEC958 emphasis: off\0A\00", align 1
@RME9652_Dolby = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [18 x i8] c"IEC958 Dolby: on\0A\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"IEC958 Dolby: off\0A\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"IEC958 sample rate: error flag set\0A\00", align 1
@.str.35 = private unnamed_addr constant [34 x i8] c"IEC958 sample rate: undetermined\0A\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"IEC958 sample rate: %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"ADAT Sample rate: %dHz\0A\00", align 1
@RME9652_sync_0 = common dso_local global i32 0, align 4
@RME9652_lock_0 = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [11 x i8] c"ADAT1: %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"Sync\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"Lock\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"ADAT1: No Lock\0A\00", align 1
@RME9652_sync_1 = common dso_local global i32 0, align 4
@RME9652_lock_1 = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [11 x i8] c"ADAT2: %s\0A\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"ADAT2: No Lock\0A\00", align 1
@RME9652_sync_2 = common dso_local global i32 0, align 4
@RME9652_lock_2 = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [11 x i8] c"ADAT3: %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"ADAT3: No Lock\0A\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"Timecode signal: %s\0A\00", align 1
@RME9652_tc_valid = common dso_local global i32 0, align 4
@.str.47 = private unnamed_addr constant [16 x i8] c"Punch Status:\0A\0A\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"%2d:  on \00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"%2d: off \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @snd_rme9652_proc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_rme9652_proc_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_rme9652*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %11 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %12 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.snd_rme9652*
  store %struct.snd_rme9652* %14, %struct.snd_rme9652** %5, align 8
  %15 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %16 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %18 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %19 = load i32, i32* @RME9652_status_register, align 4
  %20 = call i32 @rme9652_read(%struct.snd_rme9652* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %22 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %23 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %22, i32 0, i32 12
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %26 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %25, i32 0, i32 11
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  %31 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %24, i64 %30)
  %32 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %33 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %34 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %33, i32 0, i32 10
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %37 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %38)
  %40 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %41 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %42 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %45 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %48 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %46, i64 %49)
  %51 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %52 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %53 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %57 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %58 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %59 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @RME9652_latency, align 4
  %62 = and i32 %60, %61
  %63 = call i32 @rme9652_decode_latency(i32 %62)
  %64 = add nsw i32 6, %63
  %65 = shl i32 1, %64
  store i32 %65, i32* %10, align 4
  %66 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %69 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %66, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %67, i64 %70)
  %72 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %73 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %74 = call i32 @rme9652_hw_pointer(%struct.snd_rme9652* %73)
  %75 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %74)
  %76 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %77 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %78 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)
  %83 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %82)
  %84 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %85 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @RME9652_Master, align 4
  %88 = load i32, i32* @RME9652_wsel, align 4
  %89 = or i32 %87, %88
  %90 = and i32 %86, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %2
  %93 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %94 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %118

95:                                               ; preds = %2
  %96 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %97 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @RME9652_wsel, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %95
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @RME9652_wsel_rd, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %109 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %108, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  br label %113

110:                                              ; preds = %102
  %111 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %112 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %111, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0))
  br label %113

113:                                              ; preds = %110, %107
  br label %117

114:                                              ; preds = %95
  %115 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %116 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %115, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %113
  br label %118

118:                                              ; preds = %117, %92
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %143

121:                                              ; preds = %118
  %122 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %123 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @RME9652_SyncPref_Mask, align 4
  %126 = and i32 %124, %125
  switch i32 %126, label %139 [
    i32 131, label %127
    i32 130, label %130
    i32 129, label %133
    i32 128, label %136
  ]

127:                                              ; preds = %121
  %128 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %129 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %128, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  br label %142

130:                                              ; preds = %121
  %131 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %132 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %131, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0))
  br label %142

133:                                              ; preds = %121
  %134 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %135 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %134, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0))
  br label %142

136:                                              ; preds = %121
  %137 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %138 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %137, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0))
  br label %142

139:                                              ; preds = %121
  %140 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %141 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %140, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %136, %133, %130, %127
  br label %143

143:                                              ; preds = %142, %118
  %144 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %145 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = icmp sge i32 %146, 15
  br i1 %147, label %148, label %159

148:                                              ; preds = %143
  %149 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %150 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %151 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @RME9652_ADAT1_INTERNAL, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0)
  %158 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %149, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0), i8* %157)
  br label %159

159:                                              ; preds = %148, %143
  %160 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %161 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %160, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %162 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %163 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @RME9652_inp, align 4
  %166 = and i32 %164, %165
  %167 = call i32 @rme9652_decode_spdif_in(i32 %166)
  switch i32 %167, label %177 [
    i32 132, label %168
    i32 134, label %171
    i32 133, label %174
  ]

168:                                              ; preds = %159
  %169 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %170 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %169, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0))
  br label %180

171:                                              ; preds = %159
  %172 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %173 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %172, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0))
  br label %180

174:                                              ; preds = %159
  %175 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %176 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %175, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0))
  br label %180

177:                                              ; preds = %159
  %178 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %179 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %178, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0))
  br label %180

180:                                              ; preds = %177, %174, %171, %168
  %181 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %182 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @RME9652_opt_out, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %180
  %188 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %189 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %188, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.26, i64 0, i64 0))
  br label %193

190:                                              ; preds = %180
  %191 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %192 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %191, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i64 0, i64 0))
  br label %193

193:                                              ; preds = %190, %187
  %194 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %195 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @RME9652_PRO, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %193
  %201 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %202 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %201, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0))
  br label %206

203:                                              ; preds = %193
  %204 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %205 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %204, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i64 0, i64 0))
  br label %206

206:                                              ; preds = %203, %200
  %207 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %208 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @RME9652_EMP, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %206
  %214 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %215 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %214, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0))
  br label %219

216:                                              ; preds = %206
  %217 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %218 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %217, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i64 0, i64 0))
  br label %219

219:                                              ; preds = %216, %213
  %220 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %221 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @RME9652_Dolby, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %219
  %227 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %228 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %227, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0))
  br label %232

229:                                              ; preds = %219
  %230 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %231 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %230, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i64 0, i64 0))
  br label %232

232:                                              ; preds = %229, %226
  %233 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %234 = call i32 @rme9652_spdif_sample_rate(%struct.snd_rme9652* %233)
  store i32 %234, i32* %8, align 4
  %235 = load i32, i32* %8, align 4
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %232
  %238 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %239 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %238, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i64 0, i64 0))
  br label %251

240:                                              ; preds = %232
  %241 = load i32, i32* %8, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %240
  %244 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %245 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %244, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.35, i64 0, i64 0))
  br label %250

246:                                              ; preds = %240
  %247 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %248 = load i32, i32* %8, align 4
  %249 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %247, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i64 0, i64 0), i32 %248)
  br label %250

250:                                              ; preds = %246, %243
  br label %251

251:                                              ; preds = %250, %237
  %252 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %253 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %252, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %254 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %255 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %256 = call i32 @rme9652_adat_sample_rate(%struct.snd_rme9652* %255)
  %257 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %254, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.37, i64 0, i64 0), i32 %256)
  %258 = load i32, i32* %9, align 4
  %259 = load i32, i32* @RME9652_sync_0, align 4
  %260 = and i32 %258, %259
  store i32 %260, i32* %10, align 4
  %261 = load i32, i32* %9, align 4
  %262 = load i32, i32* @RME9652_lock_0, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %272

265:                                              ; preds = %251
  %266 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %267 = load i32, i32* %10, align 4
  %268 = icmp ne i32 %267, 0
  %269 = zext i1 %268 to i64
  %270 = select i1 %268, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0)
  %271 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %266, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0), i8* %270)
  br label %275

272:                                              ; preds = %251
  %273 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %274 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %273, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i64 0, i64 0))
  br label %275

275:                                              ; preds = %272, %265
  %276 = load i32, i32* %9, align 4
  %277 = load i32, i32* @RME9652_sync_1, align 4
  %278 = and i32 %276, %277
  store i32 %278, i32* %10, align 4
  %279 = load i32, i32* %9, align 4
  %280 = load i32, i32* @RME9652_lock_1, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %290

283:                                              ; preds = %275
  %284 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %285 = load i32, i32* %10, align 4
  %286 = icmp ne i32 %285, 0
  %287 = zext i1 %286 to i64
  %288 = select i1 %286, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0)
  %289 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %284, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i8* %288)
  br label %293

290:                                              ; preds = %275
  %291 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %292 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %291, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i64 0, i64 0))
  br label %293

293:                                              ; preds = %290, %283
  %294 = load i32, i32* %9, align 4
  %295 = load i32, i32* @RME9652_sync_2, align 4
  %296 = and i32 %294, %295
  store i32 %296, i32* %10, align 4
  %297 = load i32, i32* %9, align 4
  %298 = load i32, i32* @RME9652_lock_2, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %308

301:                                              ; preds = %293
  %302 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %303 = load i32, i32* %10, align 4
  %304 = icmp ne i32 %303, 0
  %305 = zext i1 %304 to i64
  %306 = select i1 %304, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0)
  %307 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %302, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i64 0, i64 0), i8* %306)
  br label %311

308:                                              ; preds = %293
  %309 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %310 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %309, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i64 0, i64 0))
  br label %311

311:                                              ; preds = %308, %301
  %312 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %313 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %312, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %314 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %315 = load i32, i32* %9, align 4
  %316 = load i32, i32* @RME9652_tc_valid, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  %319 = zext i1 %318 to i64
  %320 = select i1 %318, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)
  %321 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %314, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.46, i64 0, i64 0), i8* %320)
  %322 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %323 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %322, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %324

324:                                              ; preds = %355, %311
  %325 = load i32, i32* %8, align 4
  %326 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %327 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 4
  %329 = icmp slt i32 %325, %328
  br i1 %329, label %330, label %358

330:                                              ; preds = %324
  %331 = load i32, i32* %6, align 4
  %332 = load i32, i32* %8, align 4
  %333 = shl i32 1, %332
  %334 = and i32 %331, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %341

336:                                              ; preds = %330
  %337 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %338 = load i32, i32* %8, align 4
  %339 = add nsw i32 %338, 1
  %340 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %337, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i64 0, i64 0), i32 %339)
  br label %346

341:                                              ; preds = %330
  %342 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %343 = load i32, i32* %8, align 4
  %344 = add nsw i32 %343, 1
  %345 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %342, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i64 0, i64 0), i32 %344)
  br label %346

346:                                              ; preds = %341, %336
  %347 = load i32, i32* %8, align 4
  %348 = add nsw i32 %347, 1
  %349 = srem i32 %348, 8
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %354

351:                                              ; preds = %346
  %352 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %353 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %352, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %354

354:                                              ; preds = %351, %346
  br label %355

355:                                              ; preds = %354
  %356 = load i32, i32* %8, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %8, align 4
  br label %324

358:                                              ; preds = %324
  %359 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %360 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %359, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @rme9652_read(%struct.snd_rme9652*, i32) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i32 @rme9652_decode_latency(i32) #1

declare dso_local i32 @rme9652_hw_pointer(%struct.snd_rme9652*) #1

declare dso_local i32 @rme9652_decode_spdif_in(i32) #1

declare dso_local i32 @rme9652_spdif_sample_rate(%struct.snd_rme9652*) #1

declare dso_local i32 @rme9652_adat_sample_rate(%struct.snd_rme9652*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
