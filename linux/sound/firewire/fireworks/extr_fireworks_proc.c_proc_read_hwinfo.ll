; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_proc.c_proc_read_hwinfo.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_proc.c_proc_read_hwinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_efw* }
%struct.snd_efw = type { i32 }
%struct.snd_info_buffer = type { i32 }
%struct.snd_efw_hwinfo = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"guid_hi: 0x%X\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"guid_lo: 0x%X\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"type: 0x%X\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"version: 0x%X\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"vendor_name: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"model_name: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"dsp_version: 0x%X\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"arm_version: 0x%X\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"fpga_version: 0x%X\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"flags: 0x%X\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"max_sample_rate: 0x%X\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"min_sample_rate: 0x%X\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"supported_clock: 0x%X\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"phys out: 0x%X\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"phys in: 0x%X\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"phys in grps: 0x%X\0A\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"phys in grp[%d]: type 0x%X, count 0x%X\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"phys out grps: 0x%X\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"phys out grps[%d]: type 0x%X, count 0x%X\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"amdtp rx pcm channels 1x: 0x%X\0A\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"amdtp tx pcm channels 1x: 0x%X\0A\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"amdtp rx pcm channels 2x: 0x%X\0A\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"amdtp tx pcm channels 2x: 0x%X\0A\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"amdtp rx pcm channels 4x: 0x%X\0A\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"amdtp tx pcm channels 4x: 0x%X\0A\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"midi out ports: 0x%X\0A\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"midi in ports: 0x%X\0A\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"mixer playback channels: 0x%X\0A\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"mixer capture channels: 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @proc_read_hwinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_read_hwinfo(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_efw*, align 8
  %6 = alloca i16, align 2
  %7 = alloca %struct.snd_efw_hwinfo*, align 8
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %8 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %9 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %8, i32 0, i32 0
  %10 = load %struct.snd_efw*, %struct.snd_efw** %9, align 8
  store %struct.snd_efw* %10, %struct.snd_efw** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.snd_efw_hwinfo* @kmalloc(i32 64, i32 %11)
  store %struct.snd_efw_hwinfo* %12, %struct.snd_efw_hwinfo** %7, align 8
  %13 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %7, align 8
  %14 = icmp eq %struct.snd_efw_hwinfo* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %225

16:                                               ; preds = %2
  %17 = load %struct.snd_efw*, %struct.snd_efw** %5, align 8
  %18 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %7, align 8
  %19 = call i64 @snd_efw_command_get_hwinfo(%struct.snd_efw* %17, %struct.snd_efw_hwinfo* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %222

22:                                               ; preds = %16
  %23 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %24 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %7, align 8
  %25 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %24, i32 0, i32 0
  %26 = load i16, i16* %25, align 8
  %27 = call i32 (%struct.snd_info_buffer*, i8*, i16, ...) @snd_iprintf(%struct.snd_info_buffer* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i16 zeroext %26)
  %28 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %29 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %7, align 8
  %30 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %29, i32 0, i32 1
  %31 = load i16, i16* %30, align 2
  %32 = call i32 (%struct.snd_info_buffer*, i8*, i16, ...) @snd_iprintf(%struct.snd_info_buffer* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %31)
  %33 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %34 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %7, align 8
  %35 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %34, i32 0, i32 2
  %36 = load i16, i16* %35, align 4
  %37 = call i32 (%struct.snd_info_buffer*, i8*, i16, ...) @snd_iprintf(%struct.snd_info_buffer* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i16 zeroext %36)
  %38 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %39 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %7, align 8
  %40 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %39, i32 0, i32 3
  %41 = load i16, i16* %40, align 2
  %42 = call i32 (%struct.snd_info_buffer*, i8*, i16, ...) @snd_iprintf(%struct.snd_info_buffer* %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i16 zeroext %41)
  %43 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %44 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %7, align 8
  %45 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %44, i32 0, i32 4
  %46 = load i16, i16* %45, align 8
  %47 = call i32 (%struct.snd_info_buffer*, i8*, i16, ...) @snd_iprintf(%struct.snd_info_buffer* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i16 zeroext %46)
  %48 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %49 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %7, align 8
  %50 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %49, i32 0, i32 5
  %51 = load i16, i16* %50, align 2
  %52 = call i32 (%struct.snd_info_buffer*, i8*, i16, ...) @snd_iprintf(%struct.snd_info_buffer* %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i16 zeroext %51)
  %53 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %54 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %7, align 8
  %55 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %54, i32 0, i32 6
  %56 = load i16, i16* %55, align 4
  %57 = call i32 (%struct.snd_info_buffer*, i8*, i16, ...) @snd_iprintf(%struct.snd_info_buffer* %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i16 zeroext %56)
  %58 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %59 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %7, align 8
  %60 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %59, i32 0, i32 7
  %61 = load i16, i16* %60, align 2
  %62 = call i32 (%struct.snd_info_buffer*, i8*, i16, ...) @snd_iprintf(%struct.snd_info_buffer* %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i16 zeroext %61)
  %63 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %64 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %7, align 8
  %65 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %64, i32 0, i32 8
  %66 = load i16, i16* %65, align 8
  %67 = call i32 (%struct.snd_info_buffer*, i8*, i16, ...) @snd_iprintf(%struct.snd_info_buffer* %63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i16 zeroext %66)
  %68 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %69 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %7, align 8
  %70 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %69, i32 0, i32 9
  %71 = load i16, i16* %70, align 2
  %72 = call i32 (%struct.snd_info_buffer*, i8*, i16, ...) @snd_iprintf(%struct.snd_info_buffer* %68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i16 zeroext %71)
  %73 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %74 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %7, align 8
  %75 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %74, i32 0, i32 10
  %76 = load i16, i16* %75, align 4
  %77 = call i32 (%struct.snd_info_buffer*, i8*, i16, ...) @snd_iprintf(%struct.snd_info_buffer* %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i16 zeroext %76)
  %78 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %79 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %7, align 8
  %80 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %79, i32 0, i32 11
  %81 = load i16, i16* %80, align 2
  %82 = call i32 (%struct.snd_info_buffer*, i8*, i16, ...) @snd_iprintf(%struct.snd_info_buffer* %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i16 zeroext %81)
  %83 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %84 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %7, align 8
  %85 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %84, i32 0, i32 12
  %86 = load i16, i16* %85, align 8
  %87 = call i32 (%struct.snd_info_buffer*, i8*, i16, ...) @snd_iprintf(%struct.snd_info_buffer* %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i16 zeroext %86)
  %88 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %89 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %7, align 8
  %90 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %89, i32 0, i32 13
  %91 = load i16, i16* %90, align 2
  %92 = call i32 (%struct.snd_info_buffer*, i8*, i16, ...) @snd_iprintf(%struct.snd_info_buffer* %88, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i16 zeroext %91)
  %93 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %94 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %7, align 8
  %95 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %94, i32 0, i32 14
  %96 = load i16, i16* %95, align 4
  %97 = call i32 (%struct.snd_info_buffer*, i8*, i16, ...) @snd_iprintf(%struct.snd_info_buffer* %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i16 zeroext %96)
  %98 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %99 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %7, align 8
  %100 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %99, i32 0, i32 15
  %101 = load i16, i16* %100, align 2
  %102 = call i32 (%struct.snd_info_buffer*, i8*, i16, ...) @snd_iprintf(%struct.snd_info_buffer* %98, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i16 zeroext %101)
  store i16 0, i16* %6, align 2
  br label %103

103:                                              ; preds = %131, %22
  %104 = load i16, i16* %6, align 2
  %105 = zext i16 %104 to i32
  %106 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %7, align 8
  %107 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %106, i32 0, i32 15
  %108 = load i16, i16* %107, align 2
  %109 = zext i16 %108 to i32
  %110 = icmp slt i32 %105, %109
  br i1 %110, label %111, label %134

111:                                              ; preds = %103
  %112 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %113 = load i16, i16* %6, align 2
  %114 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %7, align 8
  %115 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %114, i32 0, i32 27
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i16, i16* %6, align 2
  %118 = zext i16 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %7, align 8
  %123 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %122, i32 0, i32 27
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = load i16, i16* %6, align 2
  %126 = zext i16 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (%struct.snd_info_buffer*, i8*, i16, ...) @snd_iprintf(%struct.snd_info_buffer* %112, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0), i16 zeroext %113, i32 %121, i32 %129)
  br label %131

131:                                              ; preds = %111
  %132 = load i16, i16* %6, align 2
  %133 = add i16 %132, 1
  store i16 %133, i16* %6, align 2
  br label %103

134:                                              ; preds = %103
  %135 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %136 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %7, align 8
  %137 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %136, i32 0, i32 16
  %138 = load i16, i16* %137, align 8
  %139 = call i32 (%struct.snd_info_buffer*, i8*, i16, ...) @snd_iprintf(%struct.snd_info_buffer* %135, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i16 zeroext %138)
  store i16 0, i16* %6, align 2
  br label %140

140:                                              ; preds = %168, %134
  %141 = load i16, i16* %6, align 2
  %142 = zext i16 %141 to i32
  %143 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %7, align 8
  %144 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %143, i32 0, i32 16
  %145 = load i16, i16* %144, align 8
  %146 = zext i16 %145 to i32
  %147 = icmp slt i32 %142, %146
  br i1 %147, label %148, label %171

148:                                              ; preds = %140
  %149 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %150 = load i16, i16* %6, align 2
  %151 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %7, align 8
  %152 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %151, i32 0, i32 27
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = load i16, i16* %6, align 2
  %155 = zext i16 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %7, align 8
  %160 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %159, i32 0, i32 27
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = load i16, i16* %6, align 2
  %163 = zext i16 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (%struct.snd_info_buffer*, i8*, i16, ...) @snd_iprintf(%struct.snd_info_buffer* %149, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0), i16 zeroext %150, i32 %158, i32 %166)
  br label %168

168:                                              ; preds = %148
  %169 = load i16, i16* %6, align 2
  %170 = add i16 %169, 1
  store i16 %170, i16* %6, align 2
  br label %140

171:                                              ; preds = %140
  %172 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %173 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %7, align 8
  %174 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %173, i32 0, i32 17
  %175 = load i16, i16* %174, align 2
  %176 = call i32 (%struct.snd_info_buffer*, i8*, i16, ...) @snd_iprintf(%struct.snd_info_buffer* %172, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0), i16 zeroext %175)
  %177 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %178 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %7, align 8
  %179 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %178, i32 0, i32 18
  %180 = load i16, i16* %179, align 4
  %181 = call i32 (%struct.snd_info_buffer*, i8*, i16, ...) @snd_iprintf(%struct.snd_info_buffer* %177, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0), i16 zeroext %180)
  %182 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %183 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %7, align 8
  %184 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %183, i32 0, i32 19
  %185 = load i16, i16* %184, align 2
  %186 = call i32 (%struct.snd_info_buffer*, i8*, i16, ...) @snd_iprintf(%struct.snd_info_buffer* %182, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0), i16 zeroext %185)
  %187 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %188 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %7, align 8
  %189 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %188, i32 0, i32 20
  %190 = load i16, i16* %189, align 8
  %191 = call i32 (%struct.snd_info_buffer*, i8*, i16, ...) @snd_iprintf(%struct.snd_info_buffer* %187, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i64 0, i64 0), i16 zeroext %190)
  %192 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %193 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %7, align 8
  %194 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %193, i32 0, i32 21
  %195 = load i16, i16* %194, align 2
  %196 = call i32 (%struct.snd_info_buffer*, i8*, i16, ...) @snd_iprintf(%struct.snd_info_buffer* %192, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0), i16 zeroext %195)
  %197 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %198 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %7, align 8
  %199 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %198, i32 0, i32 22
  %200 = load i16, i16* %199, align 4
  %201 = call i32 (%struct.snd_info_buffer*, i8*, i16, ...) @snd_iprintf(%struct.snd_info_buffer* %197, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0), i16 zeroext %200)
  %202 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %203 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %7, align 8
  %204 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %203, i32 0, i32 23
  %205 = load i16, i16* %204, align 2
  %206 = call i32 (%struct.snd_info_buffer*, i8*, i16, ...) @snd_iprintf(%struct.snd_info_buffer* %202, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0), i16 zeroext %205)
  %207 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %208 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %7, align 8
  %209 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %208, i32 0, i32 24
  %210 = load i16, i16* %209, align 8
  %211 = call i32 (%struct.snd_info_buffer*, i8*, i16, ...) @snd_iprintf(%struct.snd_info_buffer* %207, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0), i16 zeroext %210)
  %212 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %213 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %7, align 8
  %214 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %213, i32 0, i32 25
  %215 = load i16, i16* %214, align 2
  %216 = call i32 (%struct.snd_info_buffer*, i8*, i16, ...) @snd_iprintf(%struct.snd_info_buffer* %212, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i16 zeroext %215)
  %217 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %218 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %7, align 8
  %219 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %218, i32 0, i32 26
  %220 = load i16, i16* %219, align 4
  %221 = call i32 (%struct.snd_info_buffer*, i8*, i16, ...) @snd_iprintf(%struct.snd_info_buffer* %217, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0), i16 zeroext %220)
  br label %222

222:                                              ; preds = %171, %21
  %223 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %7, align 8
  %224 = call i32 @kfree(%struct.snd_efw_hwinfo* %223)
  br label %225

225:                                              ; preds = %222, %15
  ret void
}

declare dso_local %struct.snd_efw_hwinfo* @kmalloc(i32, i32) #1

declare dso_local i64 @snd_efw_command_get_hwinfo(%struct.snd_efw*, %struct.snd_efw_hwinfo*) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, i16 zeroext, ...) #1

declare dso_local i32 @kfree(%struct.snd_efw_hwinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
