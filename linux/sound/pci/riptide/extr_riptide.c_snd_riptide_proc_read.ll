; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/riptide/extr_riptide.c_snd_riptide_proc_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/riptide/extr_riptide.c_snd_riptide_proc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_riptide* }
%struct.snd_riptide = type { %struct.TYPE_14__*, %struct.TYPE_12__**, i32, %struct.TYPE_10__, %struct.cmdif*, i64, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.pcmhw* }
%struct.pcmhw = type { i32*, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.pcmhw* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.cmdif = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.snd_info_buffer = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Device ID: 0x%x\0AReceived IRQs: (%ld)%ld\0APorts:\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%c%02x: %08x\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"\0AVersion: ASIC: %d CODEC: %d AUXDSP: %d PROG: %d\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"\0ADigital mixer:\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"\0A %d: %d %d\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"\0AARM Commands num: %d failed: %d time: %d max: %d min: %d\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"\0AOpen streams %d:\0A\00", align 1
@PLAYBACK_SUBSTREAMS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"stream: %d mixer: %d source: %d (%d,%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"rate: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Paths:\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"%x->%x \00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @snd_riptide_proc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_riptide_proc_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_riptide*, align 8
  %6 = alloca %struct.pcmhw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cmdif*, align 8
  %9 = alloca [256 x i8], align 16
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %13 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %14 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %13, i32 0, i32 0
  %15 = load %struct.snd_riptide*, %struct.snd_riptide** %14, align 8
  store %struct.snd_riptide* %15, %struct.snd_riptide** %5, align 8
  store %struct.cmdif* null, %struct.cmdif** %8, align 8
  store i16 0, i16* %10, align 2
  store i16 0, i16* %11, align 2
  %16 = load %struct.snd_riptide*, %struct.snd_riptide** %5, align 8
  %17 = icmp ne %struct.snd_riptide* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %287

19:                                               ; preds = %2
  %20 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %21 = load %struct.snd_riptide*, %struct.snd_riptide** %5, align 8
  %22 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %21, i32 0, i32 9
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %28 = load %struct.snd_riptide*, %struct.snd_riptide** %5, align 8
  %29 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.snd_riptide*, %struct.snd_riptide** %5, align 8
  %32 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.snd_riptide*, %struct.snd_riptide** %5, align 8
  %35 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %27, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %33, i32 %36)
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %57, %19
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 64
  br i1 %40, label %41, label %60

41:                                               ; preds = %38
  %42 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = srem i32 %43, 16
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 32, i32 10
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.snd_riptide*, %struct.snd_riptide** %5, align 8
  %50 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = call i32 @inl(i64 %54)
  %56 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %48, i32 %55)
  br label %57

57:                                               ; preds = %41
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 4
  store i32 %59, i32* %7, align 4
  br label %38

60:                                               ; preds = %38
  %61 = load %struct.snd_riptide*, %struct.snd_riptide** %5, align 8
  %62 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %61, i32 0, i32 4
  %63 = load %struct.cmdif*, %struct.cmdif** %62, align 8
  store %struct.cmdif* %63, %struct.cmdif** %8, align 8
  %64 = icmp ne %struct.cmdif* %63, null
  br i1 %64, label %65, label %125

65:                                               ; preds = %60
  %66 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %67 = load %struct.snd_riptide*, %struct.snd_riptide** %5, align 8
  %68 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.snd_riptide*, %struct.snd_riptide** %5, align 8
  %73 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.snd_riptide*, %struct.snd_riptide** %5, align 8
  %78 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.snd_riptide*, %struct.snd_riptide** %5, align 8
  %83 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %66, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %71, i32 %76, i32 %81, i32 %86)
  %88 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %89 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %88, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %90

90:                                               ; preds = %104, %65
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %91, 12
  br i1 %92, label %93, label %107

93:                                               ; preds = %90
  %94 = load %struct.cmdif*, %struct.cmdif** %8, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @getmixer(%struct.cmdif* %94, i32 %95, i16* %10, i16* %11)
  %97 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i16, i16* %10, align 2
  %100 = zext i16 %99 to i32
  %101 = load i16, i16* %11, align 2
  %102 = zext i16 %101 to i32
  %103 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %97, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %98, i32 %100, i32 %102)
  br label %104

104:                                              ; preds = %93
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %90

107:                                              ; preds = %90
  %108 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %109 = load %struct.cmdif*, %struct.cmdif** %8, align 8
  %110 = getelementptr inbounds %struct.cmdif, %struct.cmdif* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.cmdif*, %struct.cmdif** %8, align 8
  %113 = getelementptr inbounds %struct.cmdif, %struct.cmdif* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.cmdif*, %struct.cmdif** %8, align 8
  %116 = getelementptr inbounds %struct.cmdif, %struct.cmdif* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.cmdif*, %struct.cmdif** %8, align 8
  %119 = getelementptr inbounds %struct.cmdif, %struct.cmdif* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.cmdif*, %struct.cmdif** %8, align 8
  %122 = getelementptr inbounds %struct.cmdif, %struct.cmdif* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %108, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i32 %111, i32 %114, i32 %117, i32 %120, i32 %123)
  br label %125

125:                                              ; preds = %107, %60
  %126 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %127 = load %struct.snd_riptide*, %struct.snd_riptide** %5, align 8
  %128 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %126, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %129)
  store i32 0, i32* %7, align 4
  br label %131

131:                                              ; preds = %202, %125
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @PLAYBACK_SUBSTREAMS, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %205

135:                                              ; preds = %131
  %136 = load %struct.snd_riptide*, %struct.snd_riptide** %5, align 8
  %137 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %136, i32 0, i32 1
  %138 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %138, i64 %140
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = icmp ne %struct.TYPE_12__* %142, null
  br i1 %143, label %144, label %201

144:                                              ; preds = %135
  %145 = load %struct.snd_riptide*, %struct.snd_riptide** %5, align 8
  %146 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %145, i32 0, i32 1
  %147 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %146, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %147, i64 %149
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %152, align 8
  %154 = icmp ne %struct.TYPE_11__* %153, null
  br i1 %154, label %155, label %201

155:                                              ; preds = %144
  %156 = load %struct.snd_riptide*, %struct.snd_riptide** %5, align 8
  %157 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %156, i32 0, i32 1
  %158 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %158, i64 %160
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = load %struct.pcmhw*, %struct.pcmhw** %165, align 8
  store %struct.pcmhw* %166, %struct.pcmhw** %6, align 8
  %167 = icmp ne %struct.pcmhw* %166, null
  br i1 %167, label %168, label %201

168:                                              ; preds = %155
  %169 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %170 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %171 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %174 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %177 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %180 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %185 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %169, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %172, i32 %175, i32 %178, i32 %183, i32 %188)
  %190 = load %struct.cmdif*, %struct.cmdif** %8, align 8
  %191 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %192 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = call i32 @getsamplerate(%struct.cmdif* %190, i32* %193, i32* %12)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %200, label %196

196:                                              ; preds = %168
  %197 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %198 = load i32, i32* %12, align 4
  %199 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %197, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %198)
  br label %200

200:                                              ; preds = %196, %168
  br label %201

201:                                              ; preds = %200, %155, %144, %135
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %7, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %7, align 4
  br label %131

205:                                              ; preds = %131
  %206 = load %struct.snd_riptide*, %struct.snd_riptide** %5, align 8
  %207 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %206, i32 0, i32 0
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %207, align 8
  %209 = icmp ne %struct.TYPE_14__* %208, null
  br i1 %209, label %210, label %259

210:                                              ; preds = %205
  %211 = load %struct.snd_riptide*, %struct.snd_riptide** %5, align 8
  %212 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %211, i32 0, i32 0
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %214, align 8
  %216 = icmp ne %struct.TYPE_13__* %215, null
  br i1 %216, label %217, label %259

217:                                              ; preds = %210
  %218 = load %struct.snd_riptide*, %struct.snd_riptide** %5, align 8
  %219 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %218, i32 0, i32 0
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 0
  %224 = load %struct.pcmhw*, %struct.pcmhw** %223, align 8
  store %struct.pcmhw* %224, %struct.pcmhw** %6, align 8
  %225 = icmp ne %struct.pcmhw* %224, null
  br i1 %225, label %226, label %259

226:                                              ; preds = %217
  %227 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %228 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %229 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %232 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %235 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %238 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 0
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %243 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 1
  %246 = load i32, i32* %245, align 4
  %247 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %227, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %230, i32 %233, i32 %236, i32 %241, i32 %246)
  %248 = load %struct.cmdif*, %struct.cmdif** %8, align 8
  %249 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %250 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = call i32 @getsamplerate(%struct.cmdif* %248, i32* %251, i32* %12)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %258, label %254

254:                                              ; preds = %226
  %255 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %256 = load i32, i32* %12, align 4
  %257 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %255, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %256)
  br label %258

258:                                              ; preds = %254, %226
  br label %259

259:                                              ; preds = %258, %217, %210, %205
  %260 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %261 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %260, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %262 = load %struct.cmdif*, %struct.cmdif** %8, align 8
  %263 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %264 = call i32 @getpaths(%struct.cmdif* %262, i8* %263)
  store i32 %264, i32* %7, align 4
  br label %265

265:                                              ; preds = %268, %259
  %266 = load i32, i32* %7, align 4
  %267 = icmp sge i32 %266, 2
  br i1 %267, label %268, label %284

268:                                              ; preds = %265
  %269 = load i32, i32* %7, align 4
  %270 = sub nsw i32 %269, 2
  store i32 %270, i32* %7, align 4
  %271 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %272 = load i32, i32* %7, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 %273
  %275 = load i8, i8* %274, align 1
  %276 = zext i8 %275 to i32
  %277 = load i32, i32* %7, align 4
  %278 = add nsw i32 %277, 1
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 %279
  %281 = load i8, i8* %280, align 1
  %282 = zext i8 %281 to i32
  %283 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %271, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %276, i32 %282)
  br label %265

284:                                              ; preds = %265
  %285 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %286 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %285, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %287

287:                                              ; preds = %284, %18
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @getmixer(%struct.cmdif*, i32, i16*, i16*) #1

declare dso_local i32 @getsamplerate(%struct.cmdif*, i32*, i32*) #1

declare dso_local i32 @getpaths(%struct.cmdif*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
