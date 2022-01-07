; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_proc_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_proc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_pcxhr* }
%struct.snd_pcxhr = type { %struct.pcxhr_mgr* }
%struct.pcxhr_mgr = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.snd_info_buffer = type { i32 }
%struct.pcxhr_rmh = type { i32*, i32, i32, i32, i64, i8** }

@.str = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@PCXHR_FIRMWARE_DSP_MAIN_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"module version %s\0A\00", align 1
@PCXHR_DRIVER_VERSION_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"dsp version %d.%d.%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"analog io available\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"digital only board\0A\00", align 1
@CMD_GET_DSP_RESOURCES = common dso_local global i32 0, align 4
@PCXHR_IRQ_TIMER_FREQ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"cpu load    %d%%\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"buffer pool %d/%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"dma granularity : %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"dsp time errors : %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"dsp async pipe xrun errors : %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"dsp async stream xrun errors : %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"dsp async last other error : %x\0A\00", align 1
@PCXHR_SIZE_MAX_STATUS = common dso_local global i8* null, align 8
@CMD_LAST_INDEX = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"debug[%02d] = %06x\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"no firmware loaded\0A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @pcxhr_proc_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcxhr_proc_info(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_pcxhr*, align 8
  %6 = alloca %struct.pcxhr_mgr*, align 8
  %7 = alloca %struct.pcxhr_rmh, align 8
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %14 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %15 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %14, i32 0, i32 0
  %16 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %15, align 8
  store %struct.snd_pcxhr* %16, %struct.snd_pcxhr** %5, align 8
  %17 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %18 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %17, i32 0, i32 0
  %19 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %18, align 8
  store %struct.pcxhr_mgr* %19, %struct.pcxhr_mgr** %6, align 8
  %20 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %21 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %22 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %26 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @PCXHR_FIRMWARE_DSP_MAIN_INDEX, align 4
  %29 = shl i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %202

32:                                               ; preds = %2
  %33 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %34 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 16
  %37 = and i32 %36, 255
  %38 = trunc i32 %37 to i16
  store i16 %38, i16* %8, align 2
  %39 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %40 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 8
  %43 = and i32 %42, 255
  %44 = trunc i32 %43 to i16
  store i16 %44, i16* %9, align 2
  %45 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %46 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 255
  %49 = trunc i32 %48 to i16
  store i16 %49, i16* %10, align 2
  %50 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %51 = load i32, i32* @PCXHR_DRIVER_VERSION_STRING, align 4
  %52 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %54 = load i16, i16* %8, align 2
  %55 = sext i16 %54 to i32
  %56 = load i16, i16* %9, align 2
  %57 = sext i16 %56 to i32
  %58 = load i16, i16* %10, align 2
  %59 = sext i16 %58 to i32
  %60 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %57, i32 %59)
  %61 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %62 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %61, i32 0, i32 8
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %32
  %66 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %67 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %71

68:                                               ; preds = %32
  %69 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %70 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32, i32* @CMD_GET_DSP_RESOURCES, align 4
  %73 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %7, i32 %72)
  %74 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %75 = call i32 @pcxhr_send_msg(%struct.pcxhr_mgr* %74, %struct.pcxhr_rmh* %7)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %134, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %7, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %11, align 4
  %82 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %7, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %133

88:                                               ; preds = %77
  %89 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %90 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %114

93:                                               ; preds = %88
  %94 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %95 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 48000
  br i1 %97, label %98, label %114

98:                                               ; preds = %93
  %99 = load i32, i32* %12, align 4
  %100 = mul nsw i32 %99, 48000
  %101 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %102 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = sdiv i32 %100, %103
  store i32 %104, i32* %12, align 4
  %105 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %106 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @PCXHR_IRQ_TIMER_FREQ, align 4
  %109 = icmp sge i32 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %98
  %111 = load i32, i32* %12, align 4
  %112 = mul nsw i32 %111, 2
  store i32 %112, i32* %12, align 4
  br label %113

113:                                              ; preds = %110, %98
  br label %114

114:                                              ; preds = %113, %93, %88
  %115 = load i32, i32* %11, align 4
  %116 = mul nsw i32 100, %115
  %117 = load i32, i32* %12, align 4
  %118 = sdiv i32 %116, %117
  %119 = sub nsw i32 100, %118
  store i32 %119, i32* %11, align 4
  %120 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %121 = load i32, i32* %11, align 4
  %122 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %120, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %121)
  %123 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %124 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %7, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 2
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %7, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 3
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %123, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %127, i32 %131)
  br label %133

133:                                              ; preds = %114, %77
  br label %134

134:                                              ; preds = %133, %71
  %135 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %136 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %137 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %135, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %138)
  %140 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %141 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %142 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %140, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %143)
  %145 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %146 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %147 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %145, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %148)
  %150 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %151 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %152 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %150, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i32 %153)
  %155 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %156 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %157 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %155, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i32 %158)
  %160 = load i8*, i8** @PCXHR_SIZE_MAX_STATUS, align 8
  %161 = getelementptr i8, i8* %160, i64 16896
  %162 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %7, i32 0, i32 5
  %163 = load i8**, i8*** %162, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i64 0
  store i8* %161, i8** %164, align 8
  %165 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %7, i32 0, i32 1
  store i32 1, i32* %165, align 8
  %166 = load i8*, i8** @PCXHR_SIZE_MAX_STATUS, align 8
  %167 = ptrtoint i8* %166 to i32
  %168 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %7, i32 0, i32 2
  store i32 %167, i32* %168, align 4
  %169 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %7, i32 0, i32 4
  store i64 0, i64* %169, align 8
  %170 = load i32, i32* @CMD_LAST_INDEX, align 4
  %171 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %7, i32 0, i32 3
  store i32 %170, i32* %171, align 8
  %172 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %173 = call i32 @pcxhr_send_msg(%struct.pcxhr_mgr* %172, %struct.pcxhr_rmh* %7)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %201, label %175

175:                                              ; preds = %134
  %176 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %7, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = icmp sgt i32 %177, 8
  br i1 %178, label %179, label %181

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %7, i32 0, i32 2
  store i32 8, i32* %180, align 4
  br label %181

181:                                              ; preds = %179, %175
  store i32 0, i32* %13, align 4
  br label %182

182:                                              ; preds = %197, %181
  %183 = load i32, i32* %13, align 4
  %184 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %7, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = icmp slt i32 %183, %185
  br i1 %186, label %187, label %200

187:                                              ; preds = %182
  %188 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %189 = load i32, i32* %13, align 4
  %190 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %7, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %13, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %188, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %189, i32 %195)
  br label %197

197:                                              ; preds = %187
  %198 = load i32, i32* %13, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %13, align 4
  br label %182

200:                                              ; preds = %182
  br label %201

201:                                              ; preds = %200, %134
  br label %205

202:                                              ; preds = %2
  %203 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %204 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %203, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  br label %205

205:                                              ; preds = %202, %201
  %206 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %207 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %206, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i32 @pcxhr_init_rmh(%struct.pcxhr_rmh*, i32) #1

declare dso_local i32 @pcxhr_send_msg(%struct.pcxhr_mgr*, %struct.pcxhr_rmh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
