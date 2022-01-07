; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_msg_thread.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_msg_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { i32, %struct.TYPE_2__*, %struct.pcxhr_rmh* }
%struct.TYPE_2__ = type { i32 }
%struct.pcxhr_rmh = type { i32*, i32*, i32 }

@PCXHR_IRQ_FREQ_CHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"PCXHR_IRQ_FREQ_CHANGE event occurred\0A\00", align 1
@PCXHR_IRQ_TIME_CODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"PCXHR_IRQ_TIME_CODE event occurred\0A\00", align 1
@PCXHR_IRQ_NOTIFY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"PCXHR_IRQ_NOTIFY event occurred\0A\00", align 1
@CMD_TEST_IT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"CMD_TEST_IT : err=%x, stat=%x\0A\00", align 1
@PCXHR_IRQ_ASYNC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"PCXHR_IRQ_ASYNC event occurred\0A\00", align 1
@CMD_ASYNC = common dso_local global i32 0, align 4
@PCXHR_SIZE_MAX_LONG_STATUS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"ERROR pcxhr_msg_thread=%x;\0A\00", align 1
@FIELD_SIZE = common dso_local global i32 0, align 4
@MASK_FIRST_FIELD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"TASKLET : End%sPipe %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Record\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Play\00", align 1
@PCXHR_ERR_PIPE = common dso_local global i32 0, align 4
@PCXHR_ERR_STREAM = common dso_local global i32 0, align 4
@PCXHR_ERR_AUDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcxhr_mgr*)* @pcxhr_msg_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcxhr_msg_thread(%struct.pcxhr_mgr* %0) #0 {
  %2 = alloca %struct.pcxhr_mgr*, align 8
  %3 = alloca %struct.pcxhr_rmh*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %2, align 8
  %12 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %13 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %12, i32 0, i32 2
  %14 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %13, align 8
  store %struct.pcxhr_rmh* %14, %struct.pcxhr_rmh** %3, align 8
  %15 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %16 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @PCXHR_IRQ_FREQ_CHANGE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %23 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %21, %1
  %28 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %29 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @PCXHR_IRQ_TIME_CODE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %36 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %34, %27
  %41 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %42 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @PCXHR_IRQ_NOTIFY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %49 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %47, %40
  %54 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %55 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @PCXHR_IRQ_FREQ_CHANGE, align 4
  %58 = load i32, i32* @PCXHR_IRQ_TIME_CODE, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %56, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %53
  %63 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %3, align 8
  %64 = load i32, i32* @CMD_TEST_IT, align 4
  %65 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %63, i32 %64)
  %66 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %67 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %3, align 8
  %68 = call i32 @pcxhr_send_msg(%struct.pcxhr_mgr* %66, %struct.pcxhr_rmh* %67)
  store i32 %68, i32* %4, align 4
  %69 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %70 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %4, align 4
  %74 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %3, align 8
  %75 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %73, i32 %78)
  br label %80

80:                                               ; preds = %62, %53
  %81 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %82 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @PCXHR_IRQ_ASYNC, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %324

87:                                               ; preds = %80
  %88 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %89 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %91, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %93 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %3, align 8
  %94 = load i32, i32* @CMD_ASYNC, align 4
  %95 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %93, i32 %94)
  %96 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %3, align 8
  %97 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* @PCXHR_SIZE_MAX_LONG_STATUS, align 4
  %103 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %3, align 8
  %104 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %106 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %3, align 8
  %107 = call i32 @pcxhr_send_msg(%struct.pcxhr_mgr* %105, %struct.pcxhr_rmh* %106)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %87
  %111 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %112 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %111, i32 0, i32 1
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @dev_err(i32* %114, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %110, %87
  store i32 1, i32* %5, align 4
  br label %118

118:                                              ; preds = %322, %117
  %119 = load i32, i32* %5, align 4
  %120 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %3, align 8
  %121 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %323

124:                                              ; preds = %118
  %125 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %3, align 8
  %126 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @FIELD_SIZE, align 4
  %133 = ashr i32 %131, %132
  %134 = load i32, i32* @MASK_FIRST_FIELD, align 4
  %135 = and i32 %133, %134
  store i32 %135, i32* %7, align 4
  %136 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %3, align 8
  %137 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @FIELD_SIZE, align 4
  %144 = mul nsw i32 2, %143
  %145 = ashr i32 %142, %144
  %146 = load i32, i32* @MASK_FIRST_FIELD, align 4
  %147 = and i32 %145, %146
  store i32 %147, i32* %8, align 4
  %148 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %3, align 8
  %149 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @MASK_FIRST_FIELD, align 4
  %156 = and i32 %154, %155
  store i32 %156, i32* %9, align 4
  %157 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %3, align 8
  %158 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %163, 4194304
  store i32 %164, i32* %10, align 4
  %165 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %3, align 8
  %166 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %5, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = and i32 %171, 8388608
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %185

174:                                              ; preds = %124
  %175 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %176 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %175, i32 0, i32 1
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = load i32, i32* %10, align 4
  %180 = icmp ne i32 %179, 0
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)
  %183 = load i32, i32* %9, align 4
  %184 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %178, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %182, i32 %183)
  br label %185

185:                                              ; preds = %174, %124
  %186 = load i32, i32* %5, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %5, align 4
  %188 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %3, align 8
  %189 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %5, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %185
  %197 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %3, align 8
  %198 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %5, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  br label %213

204:                                              ; preds = %185
  %205 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %3, align 8
  %206 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %5, align 4
  %209 = add nsw i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %207, i64 %210
  %212 = load i32, i32* %211, align 4
  br label %213

213:                                              ; preds = %204, %196
  %214 = phi i32 [ %203, %196 ], [ %212, %204 ]
  store i32 %214, i32* %11, align 4
  %215 = load i32, i32* %11, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %224

217:                                              ; preds = %213
  %218 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %219 = load i32, i32* %11, align 4
  %220 = load i32, i32* @PCXHR_ERR_PIPE, align 4
  %221 = load i32, i32* %9, align 4
  %222 = load i32, i32* %10, align 4
  %223 = call i32 @pcxhr_handle_async_err(%struct.pcxhr_mgr* %218, i32 %219, i32 %220, i32 %221, i32 %222)
  br label %224

224:                                              ; preds = %217, %213
  %225 = load i32, i32* %5, align 4
  %226 = add nsw i32 %225, 2
  store i32 %226, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %227

227:                                              ; preds = %271, %224
  %228 = load i32, i32* %6, align 4
  %229 = load i32, i32* %8, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %274

231:                                              ; preds = %227
  %232 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %3, align 8
  %233 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %5, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %248

240:                                              ; preds = %231
  %241 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %3, align 8
  %242 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %241, i32 0, i32 0
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %5, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  br label %257

248:                                              ; preds = %231
  %249 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %3, align 8
  %250 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %5, align 4
  %253 = add nsw i32 %252, 1
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %251, i64 %254
  %256 = load i32, i32* %255, align 4
  br label %257

257:                                              ; preds = %248, %240
  %258 = phi i32 [ %247, %240 ], [ %256, %248 ]
  store i32 %258, i32* %11, align 4
  %259 = load i32, i32* %11, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %268

261:                                              ; preds = %257
  %262 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %263 = load i32, i32* %11, align 4
  %264 = load i32, i32* @PCXHR_ERR_STREAM, align 4
  %265 = load i32, i32* %9, align 4
  %266 = load i32, i32* %10, align 4
  %267 = call i32 @pcxhr_handle_async_err(%struct.pcxhr_mgr* %262, i32 %263, i32 %264, i32 %265, i32 %266)
  br label %268

268:                                              ; preds = %261, %257
  %269 = load i32, i32* %5, align 4
  %270 = add nsw i32 %269, 2
  store i32 %270, i32* %5, align 4
  br label %271

271:                                              ; preds = %268
  %272 = load i32, i32* %6, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %6, align 4
  br label %227

274:                                              ; preds = %227
  store i32 0, i32* %6, align 4
  br label %275

275:                                              ; preds = %319, %274
  %276 = load i32, i32* %6, align 4
  %277 = load i32, i32* %7, align 4
  %278 = icmp slt i32 %276, %277
  br i1 %278, label %279, label %322

279:                                              ; preds = %275
  %280 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %3, align 8
  %281 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %280, i32 0, i32 0
  %282 = load i32*, i32** %281, align 8
  %283 = load i32, i32* %5, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %296

288:                                              ; preds = %279
  %289 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %3, align 8
  %290 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %289, i32 0, i32 0
  %291 = load i32*, i32** %290, align 8
  %292 = load i32, i32* %5, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = load i32, i32* %294, align 4
  br label %305

296:                                              ; preds = %279
  %297 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %3, align 8
  %298 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %297, i32 0, i32 0
  %299 = load i32*, i32** %298, align 8
  %300 = load i32, i32* %5, align 4
  %301 = add nsw i32 %300, 1
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %299, i64 %302
  %304 = load i32, i32* %303, align 4
  br label %305

305:                                              ; preds = %296, %288
  %306 = phi i32 [ %295, %288 ], [ %304, %296 ]
  store i32 %306, i32* %11, align 4
  %307 = load i32, i32* %11, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %316

309:                                              ; preds = %305
  %310 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %311 = load i32, i32* %11, align 4
  %312 = load i32, i32* @PCXHR_ERR_AUDIO, align 4
  %313 = load i32, i32* %9, align 4
  %314 = load i32, i32* %10, align 4
  %315 = call i32 @pcxhr_handle_async_err(%struct.pcxhr_mgr* %310, i32 %311, i32 %312, i32 %313, i32 %314)
  br label %316

316:                                              ; preds = %309, %305
  %317 = load i32, i32* %5, align 4
  %318 = add nsw i32 %317, 2
  store i32 %318, i32* %5, align 4
  br label %319

319:                                              ; preds = %316
  %320 = load i32, i32* %6, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %6, align 4
  br label %275

322:                                              ; preds = %275
  br label %118

323:                                              ; preds = %118
  br label %324

324:                                              ; preds = %323, %80
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @pcxhr_init_rmh(%struct.pcxhr_rmh*, i32) #1

declare dso_local i32 @pcxhr_send_msg(%struct.pcxhr_mgr*, %struct.pcxhr_rmh*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @pcxhr_handle_async_err(%struct.pcxhr_mgr*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
