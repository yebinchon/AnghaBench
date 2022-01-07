; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_start_linked_stream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_start_linked_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { i32, %struct.TYPE_2__*, i32, i32, i64, %struct.snd_pcxhr** }
%struct.TYPE_2__ = type { i32 }
%struct.snd_pcxhr = type { i32, i32, %struct.pcxhr_stream*, %struct.pcxhr_stream* }
%struct.pcxhr_stream = type { i64, i32 }
%struct.pcxhr_pipe = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"pcxhr_start_linked_stream : no pipes\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"pcxhr_start_linked_stream : playback_mask=%x capture_mask=%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"pcxhr_start_linked_stream : error stop pipes (P%x C%x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"pcxhr_start_linked_stream : error start pipes (P%x C%x)\0A\00", align 1
@PCXHR_STREAM_STATUS_STARTED = common dso_local global i64 0, align 8
@PCXHR_STREAM_STATUS_RUNNING = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcxhr_mgr*)* @pcxhr_start_linked_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcxhr_start_linked_stream(%struct.pcxhr_mgr* %0) #0 {
  %2 = alloca %struct.pcxhr_mgr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcxhr_pipe*, align 8
  %7 = alloca %struct.snd_pcxhr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pcxhr_stream*, align 8
  %11 = alloca %struct.pcxhr_stream*, align 8
  %12 = alloca %struct.pcxhr_stream*, align 8
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %2, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %14 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %13, i32 0, i32 2
  %15 = call i32 @mutex_lock(i32* %14)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %84, %1
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %19 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %87

22:                                               ; preds = %16
  %23 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %24 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %23, i32 0, i32 5
  %25 = load %struct.snd_pcxhr**, %struct.snd_pcxhr*** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.snd_pcxhr*, %struct.snd_pcxhr** %25, i64 %27
  %29 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %28, align 8
  store %struct.snd_pcxhr* %29, %struct.snd_pcxhr** %7, align 8
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %53, %22
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %7, align 8
  %33 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %30
  %37 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %7, align 8
  %38 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %37, i32 0, i32 3
  %39 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %39, i64 %41
  %43 = call i64 @pcxhr_stream_scheduled_get_pipe(%struct.pcxhr_stream* %42, %struct.pcxhr_pipe** %6)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load %struct.pcxhr_pipe*, %struct.pcxhr_pipe** %6, align 8
  %47 = getelementptr inbounds %struct.pcxhr_pipe, %struct.pcxhr_pipe* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 1, %48
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %45, %36
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %30

56:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %80, %56
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %7, align 8
  %60 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %57
  %64 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %7, align 8
  %65 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %64, i32 0, i32 2
  %66 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %66, i64 %68
  %70 = call i64 @pcxhr_stream_scheduled_get_pipe(%struct.pcxhr_stream* %69, %struct.pcxhr_pipe** %6)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %63
  %73 = load %struct.pcxhr_pipe*, %struct.pcxhr_pipe** %6, align 8
  %74 = getelementptr inbounds %struct.pcxhr_pipe, %struct.pcxhr_pipe* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 1, %75
  %77 = load i32, i32* %9, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %9, align 4
  br label %83

79:                                               ; preds = %63
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %57

83:                                               ; preds = %72, %57
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %3, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %3, align 4
  br label %16

87:                                               ; preds = %16
  %88 = load i32, i32* %8, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %87
  %91 = load i32, i32* %9, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %95 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %94, i32 0, i32 2
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %98 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %97, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = call i32 (i32*, i8*, ...) @dev_err(i32* %100, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %377

102:                                              ; preds = %90, %87
  %103 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %104 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %103, i32 0, i32 1
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @dev_dbg(i32* %106, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i64 %108, i32 %109)
  %111 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @pcxhr_set_pipe_state(%struct.pcxhr_mgr* %111, i32 %112, i32 %113, i32 0)
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %102
  %118 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %119 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %118, i32 0, i32 2
  %120 = call i32 @mutex_unlock(i32* %119)
  %121 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %122 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %121, i32 0, i32 1
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %8, align 4
  %127 = call i32 (i32*, i8*, ...) @dev_err(i32* %124, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %125, i32 %126)
  br label %377

128:                                              ; preds = %102
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %195, %128
  %130 = load i32, i32* %3, align 4
  %131 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %132 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp slt i32 %130, %133
  br i1 %134, label %135, label %198

135:                                              ; preds = %129
  %136 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %137 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %136, i32 0, i32 5
  %138 = load %struct.snd_pcxhr**, %struct.snd_pcxhr*** %137, align 8
  %139 = load i32, i32* %3, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.snd_pcxhr*, %struct.snd_pcxhr** %138, i64 %140
  %142 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %141, align 8
  store %struct.snd_pcxhr* %142, %struct.snd_pcxhr** %7, align 8
  store i32 0, i32* %4, align 4
  br label %143

143:                                              ; preds = %165, %135
  %144 = load i32, i32* %4, align 4
  %145 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %7, align 8
  %146 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %168

149:                                              ; preds = %143
  %150 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %7, align 8
  %151 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %150, i32 0, i32 3
  %152 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %151, align 8
  %153 = load i32, i32* %4, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %152, i64 %154
  store %struct.pcxhr_stream* %155, %struct.pcxhr_stream** %10, align 8
  %156 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %10, align 8
  %157 = call i64 @pcxhr_stream_scheduled_get_pipe(%struct.pcxhr_stream* %156, %struct.pcxhr_pipe** %6)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %149
  %160 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %10, align 8
  %161 = call i32 @pcxhr_set_format(%struct.pcxhr_stream* %160)
  store i32 %161, i32* %5, align 4
  %162 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %10, align 8
  %163 = call i32 @pcxhr_update_r_buffer(%struct.pcxhr_stream* %162)
  store i32 %163, i32* %5, align 4
  br label %164

164:                                              ; preds = %159, %149
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %4, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %4, align 4
  br label %143

168:                                              ; preds = %143
  store i32 0, i32* %4, align 4
  br label %169

169:                                              ; preds = %191, %168
  %170 = load i32, i32* %4, align 4
  %171 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %7, align 8
  %172 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = icmp slt i32 %170, %173
  br i1 %174, label %175, label %194

175:                                              ; preds = %169
  %176 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %7, align 8
  %177 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %176, i32 0, i32 2
  %178 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %177, align 8
  %179 = load i32, i32* %4, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %178, i64 %180
  store %struct.pcxhr_stream* %181, %struct.pcxhr_stream** %10, align 8
  %182 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %10, align 8
  %183 = call i64 @pcxhr_stream_scheduled_get_pipe(%struct.pcxhr_stream* %182, %struct.pcxhr_pipe** %6)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %175
  %186 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %10, align 8
  %187 = call i32 @pcxhr_set_format(%struct.pcxhr_stream* %186)
  store i32 %187, i32* %5, align 4
  %188 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %10, align 8
  %189 = call i32 @pcxhr_update_r_buffer(%struct.pcxhr_stream* %188)
  store i32 %189, i32* %5, align 4
  br label %190

190:                                              ; preds = %185, %175
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %4, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %4, align 4
  br label %169

194:                                              ; preds = %169
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %3, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %3, align 4
  br label %129

198:                                              ; preds = %129
  store i32 0, i32* %3, align 4
  br label %199

199:                                              ; preds = %263, %198
  %200 = load i32, i32* %3, align 4
  %201 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %202 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp slt i32 %200, %203
  br i1 %204, label %205, label %266

205:                                              ; preds = %199
  %206 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %207 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %206, i32 0, i32 5
  %208 = load %struct.snd_pcxhr**, %struct.snd_pcxhr*** %207, align 8
  %209 = load i32, i32* %3, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.snd_pcxhr*, %struct.snd_pcxhr** %208, i64 %210
  %212 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %211, align 8
  store %struct.snd_pcxhr* %212, %struct.snd_pcxhr** %7, align 8
  store i32 0, i32* %4, align 4
  br label %213

213:                                              ; preds = %234, %205
  %214 = load i32, i32* %4, align 4
  %215 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %7, align 8
  %216 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp slt i32 %214, %217
  br i1 %218, label %219, label %237

219:                                              ; preds = %213
  %220 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %7, align 8
  %221 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %220, i32 0, i32 3
  %222 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %221, align 8
  %223 = load i32, i32* %4, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %222, i64 %224
  store %struct.pcxhr_stream* %225, %struct.pcxhr_stream** %11, align 8
  %226 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %11, align 8
  %227 = call i64 @pcxhr_stream_scheduled_get_pipe(%struct.pcxhr_stream* %226, %struct.pcxhr_pipe** %6)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %219
  %230 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %7, align 8
  %231 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %11, align 8
  %232 = call i32 @pcxhr_set_stream_state(%struct.snd_pcxhr* %230, %struct.pcxhr_stream* %231)
  store i32 %232, i32* %5, align 4
  br label %233

233:                                              ; preds = %229, %219
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %4, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %4, align 4
  br label %213

237:                                              ; preds = %213
  store i32 0, i32* %4, align 4
  br label %238

238:                                              ; preds = %259, %237
  %239 = load i32, i32* %4, align 4
  %240 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %7, align 8
  %241 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = icmp slt i32 %239, %242
  br i1 %243, label %244, label %262

244:                                              ; preds = %238
  %245 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %7, align 8
  %246 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %245, i32 0, i32 2
  %247 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %246, align 8
  %248 = load i32, i32* %4, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %247, i64 %249
  store %struct.pcxhr_stream* %250, %struct.pcxhr_stream** %11, align 8
  %251 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %11, align 8
  %252 = call i64 @pcxhr_stream_scheduled_get_pipe(%struct.pcxhr_stream* %251, %struct.pcxhr_pipe** %6)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %244
  %255 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %7, align 8
  %256 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %11, align 8
  %257 = call i32 @pcxhr_set_stream_state(%struct.snd_pcxhr* %255, %struct.pcxhr_stream* %256)
  store i32 %257, i32* %5, align 4
  br label %258

258:                                              ; preds = %254, %244
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %4, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %4, align 4
  br label %238

262:                                              ; preds = %238
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %3, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %3, align 4
  br label %199

266:                                              ; preds = %199
  %267 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %268 = load i32, i32* %9, align 4
  %269 = load i32, i32* %8, align 4
  %270 = call i32 @pcxhr_set_pipe_state(%struct.pcxhr_mgr* %267, i32 %268, i32 %269, i32 1)
  store i32 %270, i32* %5, align 4
  %271 = load i32, i32* %5, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %284

273:                                              ; preds = %266
  %274 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %275 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %274, i32 0, i32 2
  %276 = call i32 @mutex_unlock(i32* %275)
  %277 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %278 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %277, i32 0, i32 1
  %279 = load %struct.TYPE_2__*, %struct.TYPE_2__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %279, i32 0, i32 0
  %281 = load i32, i32* %9, align 4
  %282 = load i32, i32* %8, align 4
  %283 = call i32 (i32*, i8*, ...) @dev_err(i32* %280, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %281, i32 %282)
  br label %377

284:                                              ; preds = %266
  %285 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %286 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %285, i32 0, i32 3
  %287 = call i32 @mutex_lock(i32* %286)
  store i32 0, i32* %3, align 4
  br label %288

288:                                              ; preds = %367, %284
  %289 = load i32, i32* %3, align 4
  %290 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %291 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = icmp slt i32 %289, %292
  br i1 %293, label %294, label %370

294:                                              ; preds = %288
  %295 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %296 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %295, i32 0, i32 5
  %297 = load %struct.snd_pcxhr**, %struct.snd_pcxhr*** %296, align 8
  %298 = load i32, i32* %3, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.snd_pcxhr*, %struct.snd_pcxhr** %297, i64 %299
  %301 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %300, align 8
  store %struct.snd_pcxhr* %301, %struct.snd_pcxhr** %7, align 8
  store i32 0, i32* %4, align 4
  br label %302

302:                                              ; preds = %326, %294
  %303 = load i32, i32* %4, align 4
  %304 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %7, align 8
  %305 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = icmp slt i32 %303, %306
  br i1 %307, label %308, label %329

308:                                              ; preds = %302
  %309 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %7, align 8
  %310 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %309, i32 0, i32 3
  %311 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %310, align 8
  %312 = load i32, i32* %4, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %311, i64 %313
  store %struct.pcxhr_stream* %314, %struct.pcxhr_stream** %12, align 8
  %315 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %12, align 8
  %316 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* @PCXHR_STREAM_STATUS_STARTED, align 8
  %319 = icmp eq i64 %317, %318
  br i1 %319, label %320, label %325

320:                                              ; preds = %308
  %321 = load i8*, i8** @PCXHR_STREAM_STATUS_RUNNING, align 8
  %322 = ptrtoint i8* %321 to i64
  %323 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %12, align 8
  %324 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %323, i32 0, i32 0
  store i64 %322, i64* %324, align 8
  br label %325

325:                                              ; preds = %320, %308
  br label %326

326:                                              ; preds = %325
  %327 = load i32, i32* %4, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %4, align 4
  br label %302

329:                                              ; preds = %302
  store i32 0, i32* %4, align 4
  br label %330

330:                                              ; preds = %363, %329
  %331 = load i32, i32* %4, align 4
  %332 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %7, align 8
  %333 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = icmp slt i32 %331, %334
  br i1 %335, label %336, label %366

336:                                              ; preds = %330
  %337 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %7, align 8
  %338 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %337, i32 0, i32 2
  %339 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %338, align 8
  %340 = load i32, i32* %4, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %339, i64 %341
  store %struct.pcxhr_stream* %342, %struct.pcxhr_stream** %12, align 8
  %343 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %12, align 8
  %344 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = load i64, i64* @PCXHR_STREAM_STATUS_STARTED, align 8
  %347 = icmp eq i64 %345, %346
  br i1 %347, label %348, label %362

348:                                              ; preds = %336
  %349 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %350 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %349, i32 0, i32 4
  %351 = load i64, i64* %350, align 8
  %352 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %12, align 8
  %353 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 8
  %355 = sext i32 %354 to i64
  %356 = add nsw i64 %355, %351
  %357 = trunc i64 %356 to i32
  store i32 %357, i32* %353, align 8
  %358 = load i8*, i8** @PCXHR_STREAM_STATUS_RUNNING, align 8
  %359 = ptrtoint i8* %358 to i64
  %360 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %12, align 8
  %361 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %360, i32 0, i32 0
  store i64 %359, i64* %361, align 8
  br label %362

362:                                              ; preds = %348, %336
  br label %363

363:                                              ; preds = %362
  %364 = load i32, i32* %4, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %4, align 4
  br label %330

366:                                              ; preds = %330
  br label %367

367:                                              ; preds = %366
  %368 = load i32, i32* %3, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %3, align 4
  br label %288

370:                                              ; preds = %288
  %371 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %372 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %371, i32 0, i32 3
  %373 = call i32 @mutex_unlock(i32* %372)
  %374 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %375 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %374, i32 0, i32 2
  %376 = call i32 @mutex_unlock(i32* %375)
  br label %377

377:                                              ; preds = %370, %273, %117, %93
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @pcxhr_stream_scheduled_get_pipe(%struct.pcxhr_stream*, %struct.pcxhr_pipe**) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i32) #1

declare dso_local i32 @pcxhr_set_pipe_state(%struct.pcxhr_mgr*, i32, i32, i32) #1

declare dso_local i32 @pcxhr_set_format(%struct.pcxhr_stream*) #1

declare dso_local i32 @pcxhr_update_r_buffer(%struct.pcxhr_stream*) #1

declare dso_local i32 @pcxhr_set_stream_state(%struct.snd_pcxhr*, %struct.pcxhr_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
