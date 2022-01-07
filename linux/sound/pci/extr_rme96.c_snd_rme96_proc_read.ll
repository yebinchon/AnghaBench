; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_proc_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_proc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.rme96* }
%struct.rme96 = type { i32, i32, i64*, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.snd_info_buffer = type { i32 }

@RME96_IO_CONTROL_REGISTER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c" (index #%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"\0AGeneral settings\0A\00", align 1
@RME96_WCR_IDIS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"  period size: N/A (interrupts disabled)\0A\00", align 1
@RME96_WCR_ISEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"  period size: 2048 bytes\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"  period size: 8192 bytes\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0AInput settings\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"  input: optical\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"  input: coaxial\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"  input: internal\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"  input: XLR\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"  input: analog\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"\0A  sample rate: no valid signal\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c" (8 channels)\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c" (2 channels)\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"  sample rate: %d Hz\0A\00", align 1
@RME96_WCR_MODE24_2 = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [25 x i8] c"  sample format: 24 bit\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"  sample format: 16 bit\0A\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"\0AOutput settings\0A\00", align 1
@RME96_WCR_SEL = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [34 x i8] c"  output signal: normal playback\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"  output signal: same as input\0A\00", align 1
@RME96_WCR_MODE24 = common dso_local global i32 0, align 4
@RME96_AR_WSEL = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [35 x i8] c"  sample clock source: word clock\0A\00", align 1
@RME96_WCR_MASTER = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [33 x i8] c"  sample clock source: internal\0A\00", align 1
@.str.22 = private unnamed_addr constant [79 x i8] c"  sample clock source: autosync (internal anyway due to analog input setting)\0A\00", align 1
@.str.23 = private unnamed_addr constant [74 x i8] c"  sample clock source: autosync (internal anyway due to no valid signal)\0A\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"  sample clock source: autosync\0A\00", align 1
@RME96_WCR_PRO = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [34 x i8] c"  format: AES/EBU (professional)\0A\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"  format: IEC958 (consumer)\0A\00", align 1
@RME96_WCR_EMP = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [16 x i8] c"  emphasis: on\0A\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"  emphasis: off\0A\00", align 1
@RME96_WCR_DOLBY = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [25 x i8] c"  non-audio (dolby): on\0A\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"  non-audio (dolby): off\0A\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"\0AAnalog output settings\0A\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"  monitored ADAT tracks: 1+2\0A\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"  monitored ADAT tracks: 3+4\0A\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"  monitored ADAT tracks: 5+6\0A\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"  monitored ADAT tracks: 7+8\0A\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"  attenuation: 0 dB\0A\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"  attenuation: -6 dB\0A\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"  attenuation: -12 dB\0A\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"  attenuation: -18 dB\0A\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"  volume left: %u\0A\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"  volume right: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @snd_rme96_proc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_rme96_proc_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rme96*, align 8
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %7 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %8 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %7, i32 0, i32 0
  %9 = load %struct.rme96*, %struct.rme96** %8, align 8
  store %struct.rme96* %9, %struct.rme96** %6, align 8
  %10 = load %struct.rme96*, %struct.rme96** %6, align 8
  %11 = getelementptr inbounds %struct.rme96, %struct.rme96* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RME96_IO_CONTROL_REGISTER, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  %16 = load %struct.rme96*, %struct.rme96** %6, align 8
  %17 = getelementptr inbounds %struct.rme96, %struct.rme96* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 8
  %18 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %19 = load %struct.rme96*, %struct.rme96** %6, align 8
  %20 = getelementptr inbounds %struct.rme96, %struct.rme96* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %18, i8* %25)
  %27 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %28 = load %struct.rme96*, %struct.rme96** %6, align 8
  %29 = getelementptr inbounds %struct.rme96, %struct.rme96* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  %34 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %36 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.rme96*, %struct.rme96** %6, align 8
  %38 = getelementptr inbounds %struct.rme96, %struct.rme96* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @RME96_WCR_IDIS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %2
  %44 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %45 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %44, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %60

46:                                               ; preds = %2
  %47 = load %struct.rme96*, %struct.rme96** %6, align 8
  %48 = getelementptr inbounds %struct.rme96, %struct.rme96* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @RME96_WCR_ISEL, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %55 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %59

56:                                               ; preds = %46
  %57 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %58 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %53
  br label %60

60:                                               ; preds = %59, %43
  %61 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %62 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %63 = load %struct.rme96*, %struct.rme96** %6, align 8
  %64 = call i32 @snd_rme96_getinputtype(%struct.rme96* %63)
  switch i32 %64, label %80 [
    i32 133, label %65
    i32 135, label %68
    i32 134, label %71
    i32 132, label %74
    i32 136, label %77
  ]

65:                                               ; preds = %60
  %66 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %67 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %80

68:                                               ; preds = %60
  %69 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %70 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %80

71:                                               ; preds = %60
  %72 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %73 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %80

74:                                               ; preds = %60
  %75 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %76 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %75, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %80

77:                                               ; preds = %60
  %78 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %79 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  br label %80

80:                                               ; preds = %60, %77, %74, %71, %68, %65
  %81 = load %struct.rme96*, %struct.rme96** %6, align 8
  %82 = call i64 @snd_rme96_capture_getrate(%struct.rme96* %81, i32* %5)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %86 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %85, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  br label %101

87:                                               ; preds = %80
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %92 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %91, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  br label %96

93:                                               ; preds = %87
  %94 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %95 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %94, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %90
  %97 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %98 = load %struct.rme96*, %struct.rme96** %6, align 8
  %99 = call i64 @snd_rme96_capture_getrate(%struct.rme96* %98, i32* %5)
  %100 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %97, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i64 %99)
  br label %101

101:                                              ; preds = %96, %84
  %102 = load %struct.rme96*, %struct.rme96** %6, align 8
  %103 = getelementptr inbounds %struct.rme96, %struct.rme96* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @RME96_WCR_MODE24_2, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %110 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %109, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0))
  br label %114

111:                                              ; preds = %101
  %112 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %113 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %112, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %108
  %115 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %116 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %115, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0))
  %117 = load %struct.rme96*, %struct.rme96** %6, align 8
  %118 = getelementptr inbounds %struct.rme96, %struct.rme96* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @RME96_WCR_SEL, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %114
  %124 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %125 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %124, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0))
  br label %129

126:                                              ; preds = %114
  %127 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %128 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %127, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0))
  br label %129

129:                                              ; preds = %126, %123
  %130 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %131 = load %struct.rme96*, %struct.rme96** %6, align 8
  %132 = call i64 @snd_rme96_playback_getrate(%struct.rme96* %131)
  %133 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %130, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i64 %132)
  %134 = load %struct.rme96*, %struct.rme96** %6, align 8
  %135 = getelementptr inbounds %struct.rme96, %struct.rme96* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @RME96_WCR_MODE24, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %129
  %141 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %142 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %141, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0))
  br label %146

143:                                              ; preds = %129
  %144 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %145 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %144, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0))
  br label %146

146:                                              ; preds = %143, %140
  %147 = load %struct.rme96*, %struct.rme96** %6, align 8
  %148 = getelementptr inbounds %struct.rme96, %struct.rme96* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @RME96_AR_WSEL, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %146
  %154 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %155 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %154, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i64 0, i64 0))
  br label %186

156:                                              ; preds = %146
  %157 = load %struct.rme96*, %struct.rme96** %6, align 8
  %158 = getelementptr inbounds %struct.rme96, %struct.rme96* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @RME96_WCR_MASTER, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %156
  %164 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %165 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %164, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0))
  br label %185

166:                                              ; preds = %156
  %167 = load %struct.rme96*, %struct.rme96** %6, align 8
  %168 = call i32 @snd_rme96_getinputtype(%struct.rme96* %167)
  %169 = icmp eq i32 %168, 136
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  %171 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %172 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %171, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.22, i64 0, i64 0))
  br label %184

173:                                              ; preds = %166
  %174 = load %struct.rme96*, %struct.rme96** %6, align 8
  %175 = call i64 @snd_rme96_capture_getrate(%struct.rme96* %174, i32* %5)
  %176 = icmp slt i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %179 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %178, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.23, i64 0, i64 0))
  br label %183

180:                                              ; preds = %173
  %181 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %182 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %181, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0))
  br label %183

183:                                              ; preds = %180, %177
  br label %184

184:                                              ; preds = %183, %170
  br label %185

185:                                              ; preds = %184, %163
  br label %186

186:                                              ; preds = %185, %153
  %187 = load %struct.rme96*, %struct.rme96** %6, align 8
  %188 = getelementptr inbounds %struct.rme96, %struct.rme96* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @RME96_WCR_PRO, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %186
  %194 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %195 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %194, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i64 0, i64 0))
  br label %199

196:                                              ; preds = %186
  %197 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %198 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %197, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i64 0, i64 0))
  br label %199

199:                                              ; preds = %196, %193
  %200 = load %struct.rme96*, %struct.rme96** %6, align 8
  %201 = getelementptr inbounds %struct.rme96, %struct.rme96* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @RME96_WCR_EMP, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %199
  %207 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %208 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %207, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0))
  br label %212

209:                                              ; preds = %199
  %210 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %211 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %210, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0))
  br label %212

212:                                              ; preds = %209, %206
  %213 = load %struct.rme96*, %struct.rme96** %6, align 8
  %214 = getelementptr inbounds %struct.rme96, %struct.rme96* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @RME96_WCR_DOLBY, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %212
  %220 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %221 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %220, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i64 0, i64 0))
  br label %225

222:                                              ; preds = %212
  %223 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %224 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %223, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i64 0, i64 0))
  br label %225

225:                                              ; preds = %222, %219
  %226 = load %struct.rme96*, %struct.rme96** %6, align 8
  %227 = call i64 @RME96_HAS_ANALOG_IN(%struct.rme96* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %276

229:                                              ; preds = %225
  %230 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %231 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %230, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i64 0, i64 0))
  %232 = load %struct.rme96*, %struct.rme96** %6, align 8
  %233 = call i32 @snd_rme96_getmontracks(%struct.rme96* %232)
  switch i32 %233, label %246 [
    i32 131, label %234
    i32 130, label %237
    i32 129, label %240
    i32 128, label %243
  ]

234:                                              ; preds = %229
  %235 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %236 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %235, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i64 0, i64 0))
  br label %246

237:                                              ; preds = %229
  %238 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %239 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %238, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.33, i64 0, i64 0))
  br label %246

240:                                              ; preds = %229
  %241 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %242 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %241, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.34, i64 0, i64 0))
  br label %246

243:                                              ; preds = %229
  %244 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %245 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %244, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i64 0, i64 0))
  br label %246

246:                                              ; preds = %229, %243, %240, %237, %234
  %247 = load %struct.rme96*, %struct.rme96** %6, align 8
  %248 = call i32 @snd_rme96_getattenuation(%struct.rme96* %247)
  switch i32 %248, label %261 [
    i32 140, label %249
    i32 137, label %252
    i32 139, label %255
    i32 138, label %258
  ]

249:                                              ; preds = %246
  %250 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %251 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %250, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i64 0, i64 0))
  br label %261

252:                                              ; preds = %246
  %253 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %254 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %253, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i64 0, i64 0))
  br label %261

255:                                              ; preds = %246
  %256 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %257 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %256, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i64 0, i64 0))
  br label %261

258:                                              ; preds = %246
  %259 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %260 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %259, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0))
  br label %261

261:                                              ; preds = %246, %258, %255, %252, %249
  %262 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %263 = load %struct.rme96*, %struct.rme96** %6, align 8
  %264 = getelementptr inbounds %struct.rme96, %struct.rme96* %263, i32 0, i32 2
  %265 = load i64*, i64** %264, align 8
  %266 = getelementptr inbounds i64, i64* %265, i64 0
  %267 = load i64, i64* %266, align 8
  %268 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %262, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.40, i64 0, i64 0), i64 %267)
  %269 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %270 = load %struct.rme96*, %struct.rme96** %6, align 8
  %271 = getelementptr inbounds %struct.rme96, %struct.rme96* %270, i32 0, i32 2
  %272 = load i64*, i64** %271, align 8
  %273 = getelementptr inbounds i64, i64* %272, i64 1
  %274 = load i64, i64* %273, align 8
  %275 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %269, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i64 0, i64 0), i64 %274)
  br label %276

276:                                              ; preds = %261, %225
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i32 @snd_rme96_getinputtype(%struct.rme96*) #1

declare dso_local i64 @snd_rme96_capture_getrate(%struct.rme96*, i32*) #1

declare dso_local i64 @snd_rme96_playback_getrate(%struct.rme96*) #1

declare dso_local i64 @RME96_HAS_ANALOG_IN(%struct.rme96*) #1

declare dso_local i32 @snd_rme96_getmontracks(%struct.rme96*) #1

declare dso_local i32 @snd_rme96_getattenuation(%struct.rme96*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
