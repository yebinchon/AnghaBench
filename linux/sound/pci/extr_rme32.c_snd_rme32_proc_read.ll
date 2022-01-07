; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme32.c_snd_rme32_proc_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme32.c_snd_rme32_proc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { i64 }
%struct.snd_info_buffer = type { i32 }
%struct.rme32 = type { i32, i32, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i8*, i64 }

@RME32_IO_CONTROL_REGISTER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c" (index #%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"\0AGeneral settings\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"  Full-duplex mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"  Half-duplex mode\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"  receiver: CS8414\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"  receiver: CS8412\0A\00", align 1
@RME32_WCR_MODE24 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"  format: 24 bit\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"  format: 16 bit\00", align 1
@RME32_WCR_MONO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c", Mono\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c", Stereo\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"\0AInput settings\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"  input: optical\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"  input: coaxial\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"  input: internal\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"  input: XLR\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"\0A  sample rate: no valid signal\0A\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c" (8 channels)\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c" (2 channels)\0A\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"  sample rate: %d Hz\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"\0AOutput settings\0A\00", align 1
@RME32_WCR_SEL = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [33 x i8] c"  output signal: normal playback\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"  output signal: same as input\00", align 1
@RME32_WCR_MUTE = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [10 x i8] c" (muted)\0A\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@RME32_WCR_FREQ_0 = common dso_local global i32 0, align 4
@RME32_WCR_FREQ_1 = common dso_local global i32 0, align 4
@RME32_RCR_KMODE = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [33 x i8] c"  sample clock source: AutoSync\0A\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"  sample clock source: Internal\0A\00", align 1
@RME32_WCR_PRO = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [34 x i8] c"  format: AES/EBU (professional)\0A\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"  format: IEC958 (consumer)\0A\00", align 1
@RME32_WCR_EMP = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [16 x i8] c"  emphasis: on\0A\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"  emphasis: off\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @snd_rme32_proc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_rme32_proc_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rme32*, align 8
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %7 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %8 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.rme32*
  store %struct.rme32* %10, %struct.rme32** %6, align 8
  %11 = load %struct.rme32*, %struct.rme32** %6, align 8
  %12 = getelementptr inbounds %struct.rme32, %struct.rme32* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @RME32_IO_CONTROL_REGISTER, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  %17 = load %struct.rme32*, %struct.rme32** %6, align 8
  %18 = getelementptr inbounds %struct.rme32, %struct.rme32* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %20 = load %struct.rme32*, %struct.rme32** %6, align 8
  %21 = getelementptr inbounds %struct.rme32, %struct.rme32* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %19, i8* %24)
  %26 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %27 = load %struct.rme32*, %struct.rme32** %6, align 8
  %28 = getelementptr inbounds %struct.rme32, %struct.rme32* %27, i32 0, i32 3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  %33 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %35 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.rme32*, %struct.rme32** %6, align 8
  %37 = getelementptr inbounds %struct.rme32, %struct.rme32* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %2
  %41 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %42 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %46

43:                                               ; preds = %2
  %44 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %45 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %40
  %47 = load %struct.rme32*, %struct.rme32** %6, align 8
  %48 = call i64 @RME32_PRO_WITH_8414(%struct.rme32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %52 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %56

53:                                               ; preds = %46
  %54 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %55 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %50
  %57 = load %struct.rme32*, %struct.rme32** %6, align 8
  %58 = getelementptr inbounds %struct.rme32, %struct.rme32* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @RME32_WCR_MODE24, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %65 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %69

66:                                               ; preds = %56
  %67 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %68 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %67, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %63
  %70 = load %struct.rme32*, %struct.rme32** %6, align 8
  %71 = getelementptr inbounds %struct.rme32, %struct.rme32* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @RME32_WCR_MONO, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %78 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %82

79:                                               ; preds = %69
  %80 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %81 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %76
  %83 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %84 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %85 = load %struct.rme32*, %struct.rme32** %6, align 8
  %86 = call i32 @snd_rme32_getinputtype(%struct.rme32* %85)
  switch i32 %86, label %99 [
    i32 129, label %87
    i32 131, label %90
    i32 130, label %93
    i32 128, label %96
  ]

87:                                               ; preds = %82
  %88 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %89 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %88, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  br label %99

90:                                               ; preds = %82
  %91 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %92 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %91, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  br label %99

93:                                               ; preds = %82
  %94 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %95 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %94, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  br label %99

96:                                               ; preds = %82
  %97 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %98 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %97, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  br label %99

99:                                               ; preds = %82, %96, %93, %90, %87
  %100 = load %struct.rme32*, %struct.rme32** %6, align 8
  %101 = call i64 @snd_rme32_capture_getrate(%struct.rme32* %100, i32* %5)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %105 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %104, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0))
  br label %120

106:                                              ; preds = %99
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %111 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %110, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  br label %115

112:                                              ; preds = %106
  %113 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %114 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %113, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  br label %115

115:                                              ; preds = %112, %109
  %116 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %117 = load %struct.rme32*, %struct.rme32** %6, align 8
  %118 = call i64 @snd_rme32_capture_getrate(%struct.rme32* %117, i32* %5)
  %119 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %116, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i64 %118)
  br label %120

120:                                              ; preds = %115, %103
  %121 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %122 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %121, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0))
  %123 = load %struct.rme32*, %struct.rme32** %6, align 8
  %124 = getelementptr inbounds %struct.rme32, %struct.rme32* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @RME32_WCR_SEL, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %120
  %130 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %131 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %130, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0))
  br label %135

132:                                              ; preds = %120
  %133 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %134 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %133, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0))
  br label %135

135:                                              ; preds = %132, %129
  %136 = load %struct.rme32*, %struct.rme32** %6, align 8
  %137 = getelementptr inbounds %struct.rme32, %struct.rme32* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @RME32_WCR_MUTE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %135
  %143 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %144 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %143, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  br label %148

145:                                              ; preds = %135
  %146 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %147 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %146, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  br label %148

148:                                              ; preds = %145, %142
  %149 = load %struct.rme32*, %struct.rme32** %6, align 8
  %150 = getelementptr inbounds %struct.rme32, %struct.rme32* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @RME32_WCR_FREQ_0, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %162, label %155

155:                                              ; preds = %148
  %156 = load %struct.rme32*, %struct.rme32** %6, align 8
  %157 = getelementptr inbounds %struct.rme32, %struct.rme32* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @RME32_WCR_FREQ_1, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %155, %148
  %163 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %164 = load %struct.rme32*, %struct.rme32** %6, align 8
  %165 = call i32 @snd_rme32_playback_getrate(%struct.rme32* %164)
  %166 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %163, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i32 %165)
  br label %167

167:                                              ; preds = %162, %155
  %168 = load %struct.rme32*, %struct.rme32** %6, align 8
  %169 = getelementptr inbounds %struct.rme32, %struct.rme32* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @RME32_RCR_KMODE, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %167
  %175 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %176 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %175, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0))
  br label %180

177:                                              ; preds = %167
  %178 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %179 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %178, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i64 0, i64 0))
  br label %180

180:                                              ; preds = %177, %174
  %181 = load %struct.rme32*, %struct.rme32** %6, align 8
  %182 = getelementptr inbounds %struct.rme32, %struct.rme32* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @RME32_WCR_PRO, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %180
  %188 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %189 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %188, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0))
  br label %193

190:                                              ; preds = %180
  %191 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %192 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %191, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i64 0, i64 0))
  br label %193

193:                                              ; preds = %190, %187
  %194 = load %struct.rme32*, %struct.rme32** %6, align 8
  %195 = getelementptr inbounds %struct.rme32, %struct.rme32* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @RME32_WCR_EMP, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %193
  %201 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %202 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %201, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0))
  br label %206

203:                                              ; preds = %193
  %204 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %205 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %204, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0))
  br label %206

206:                                              ; preds = %203, %200
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i64 @RME32_PRO_WITH_8414(%struct.rme32*) #1

declare dso_local i32 @snd_rme32_getinputtype(%struct.rme32*) #1

declare dso_local i64 @snd_rme32_capture_getrate(%struct.rme32*, i32*) #1

declare dso_local i32 @snd_rme32_playback_getrate(%struct.rme32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
