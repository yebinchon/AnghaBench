; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_power_cut_emulated.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_power_cut_emulated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_4__*, %struct.ubifs_debug_info* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ubifs_debug_info = type { i32, i64, i32, i64, i32 }

@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"failing after %lums\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"failing after %lu calls\00", align 1
@UBIFS_SB_LNUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"failing in super block LEB %d\00", align 1
@UBIFS_MST_LNUM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"failing in master LEB %d\00", align 1
@UBIFS_LOG_LNUM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"failing in log LEB %d\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"failing in LPT LEB %d\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"failing in orphan LEB %d\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"failing in index head LEB %d\00", align 1
@GCHD = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [26 x i8] c"failing in GC head LEB %d\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"failing in non-bud LEB %d\00", align 1
@COMMIT_RUNNING_BACKGROUND = common dso_local global i64 0, align 8
@COMMIT_RUNNING_REQUIRED = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [37 x i8] c"failing in bud LEB %d commit running\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"failing in bud LEB %d commit not running\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"========== Power cut emulated ==========\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i32, i32)* @power_cut_emulated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power_cut_emulated(%struct.ubifs_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_debug_info*, align 8
  %9 = alloca i64, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %11 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %10, i32 0, i32 9
  %12 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %11, align 8
  store %struct.ubifs_debug_info* %12, %struct.ubifs_debug_info** %8, align 8
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %15 = call i32 @dbg_is_tst_rcvry(%struct.ubifs_info* %14)
  %16 = call i32 @ubifs_assert(%struct.ubifs_info* %13, i32 %15)
  %17 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %18 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %65, label %21

21:                                               ; preds = %3
  %22 = call i64 @chance(i32 1, i32 2)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %60

24:                                               ; preds = %21
  %25 = call i64 @chance(i32 1, i32 2)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %24
  %28 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %29 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = call i32 (...) @prandom_u32()
  %31 = srem i32 %30, 60000
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %9, align 8
  %33 = load i32, i32* @jiffies, align 4
  %34 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %35 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i64 @msecs_to_jiffies(i64 %36)
  %38 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %39 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %37
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %39, align 8
  %44 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_warn(%struct.ubifs_info* %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %45)
  br label %59

47:                                               ; preds = %24
  %48 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %49 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %48, i32 0, i32 0
  store i32 2, i32* %49, align 8
  %50 = call i32 (...) @prandom_u32()
  %51 = srem i32 %50, 10000
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %55 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_warn(%struct.ubifs_info* %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  br label %59

59:                                               ; preds = %47, %27
  br label %60

60:                                               ; preds = %59, %21
  %61 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %62 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %62, align 8
  br label %65

65:                                               ; preds = %60, %3
  %66 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %67 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load i32, i32* @jiffies, align 4
  %72 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %73 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @time_before(i32 %71, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %309

78:                                               ; preds = %70, %65
  %79 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %80 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %85 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %85, align 8
  %88 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %89 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ult i64 %86, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  store i32 0, i32* %4, align 4
  br label %309

93:                                               ; preds = %83, %78
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @UBIFS_SB_LNUM, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %112

97:                                               ; preds = %93
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = call i64 @chance(i32 1, i32 2)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i32 0, i32* %4, align 4
  br label %309

104:                                              ; preds = %100, %97
  %105 = call i64 @chance(i32 19, i32 20)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i32 0, i32* %4, align 4
  br label %309

108:                                              ; preds = %104
  %109 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_warn(%struct.ubifs_info* %109, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  br label %303

112:                                              ; preds = %93
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @UBIFS_MST_LNUM, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %121, label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @UBIFS_MST_LNUM, align 4
  %119 = add nsw i32 %118, 1
  %120 = icmp eq i32 %117, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %116, %112
  %122 = call i64 @chance(i32 19, i32 20)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i32 0, i32* %4, align 4
  br label %309

125:                                              ; preds = %121
  %126 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %127 = load i32, i32* %6, align 4
  %128 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_warn(%struct.ubifs_info* %126, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %127)
  br label %302

129:                                              ; preds = %116
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @UBIFS_LOG_LNUM, align 4
  %132 = icmp sge i32 %130, %131
  br i1 %132, label %133, label %154

133:                                              ; preds = %129
  %134 = load i32, i32* %6, align 4
  %135 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %136 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp sle i32 %134, %137
  br i1 %138, label %139, label %154

139:                                              ; preds = %133
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = call i64 @chance(i32 99, i32 100)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  store i32 0, i32* %4, align 4
  br label %309

146:                                              ; preds = %142, %139
  %147 = call i64 @chance(i32 399, i32 400)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  store i32 0, i32* %4, align 4
  br label %309

150:                                              ; preds = %146
  %151 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %152 = load i32, i32* %6, align 4
  %153 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_warn(%struct.ubifs_info* %151, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %152)
  br label %301

154:                                              ; preds = %133, %129
  %155 = load i32, i32* %6, align 4
  %156 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %157 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp sge i32 %155, %158
  br i1 %159, label %160, label %181

160:                                              ; preds = %154
  %161 = load i32, i32* %6, align 4
  %162 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %163 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = icmp sle i32 %161, %164
  br i1 %165, label %166, label %181

166:                                              ; preds = %160
  %167 = load i32, i32* %7, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %166
  %170 = call i64 @chance(i32 7, i32 8)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  store i32 0, i32* %4, align 4
  br label %309

173:                                              ; preds = %169, %166
  %174 = call i64 @chance(i32 19, i32 20)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  store i32 0, i32* %4, align 4
  br label %309

177:                                              ; preds = %173
  %178 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %179 = load i32, i32* %6, align 4
  %180 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_warn(%struct.ubifs_info* %178, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %179)
  br label %300

181:                                              ; preds = %160, %154
  %182 = load i32, i32* %6, align 4
  %183 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %184 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = icmp sge i32 %182, %185
  br i1 %186, label %187, label %208

187:                                              ; preds = %181
  %188 = load i32, i32* %6, align 4
  %189 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %190 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = icmp sle i32 %188, %191
  br i1 %192, label %193, label %208

193:                                              ; preds = %187
  %194 = load i32, i32* %7, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %193
  %197 = call i64 @chance(i32 1, i32 2)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  store i32 0, i32* %4, align 4
  br label %309

200:                                              ; preds = %196, %193
  %201 = call i64 @chance(i32 9, i32 10)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  store i32 0, i32* %4, align 4
  br label %309

204:                                              ; preds = %200
  %205 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %206 = load i32, i32* %6, align 4
  %207 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_warn(%struct.ubifs_info* %205, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %206)
  br label %299

208:                                              ; preds = %187, %181
  %209 = load i32, i32* %6, align 4
  %210 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %211 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 4
  %213 = icmp eq i32 %209, %212
  br i1 %213, label %214, label %222

214:                                              ; preds = %208
  %215 = call i64 @chance(i32 99, i32 100)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %214
  store i32 0, i32* %4, align 4
  br label %309

218:                                              ; preds = %214
  %219 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %220 = load i32, i32* %6, align 4
  %221 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_warn(%struct.ubifs_info* %219, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %220)
  br label %298

222:                                              ; preds = %208
  %223 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %224 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %223, i32 0, i32 8
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %224, align 8
  %226 = icmp ne %struct.TYPE_4__* %225, null
  br i1 %226, label %227, label %246

227:                                              ; preds = %222
  %228 = load i32, i32* %6, align 4
  %229 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %230 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %229, i32 0, i32 8
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %230, align 8
  %232 = load i64, i64* @GCHD, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = icmp eq i32 %228, %236
  br i1 %237, label %238, label %246

238:                                              ; preds = %227
  %239 = call i64 @chance(i32 9, i32 10)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %238
  store i32 0, i32* %4, align 4
  br label %309

242:                                              ; preds = %238
  %243 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %244 = load i32, i32* %6, align 4
  %245 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_warn(%struct.ubifs_info* %243, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %244)
  br label %297

246:                                              ; preds = %227, %222
  %247 = load i32, i32* %7, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %267

249:                                              ; preds = %246
  %250 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %251 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %250, i32 0, i32 7
  %252 = call i32 @RB_EMPTY_ROOT(i32* %251)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %267, label %254

254:                                              ; preds = %249
  %255 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %256 = load i32, i32* %6, align 4
  %257 = call i32 @ubifs_search_bud(%struct.ubifs_info* %255, i32 %256)
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %267, label %259

259:                                              ; preds = %254
  %260 = call i64 @chance(i32 19, i32 20)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %259
  store i32 0, i32* %4, align 4
  br label %309

263:                                              ; preds = %259
  %264 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %265 = load i32, i32* %6, align 4
  %266 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_warn(%struct.ubifs_info* %264, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %265)
  br label %296

267:                                              ; preds = %254, %249, %246
  %268 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %269 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %268, i32 0, i32 6
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @COMMIT_RUNNING_BACKGROUND, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %279, label %273

273:                                              ; preds = %267
  %274 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %275 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %274, i32 0, i32 6
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* @COMMIT_RUNNING_REQUIRED, align 8
  %278 = icmp eq i64 %276, %277
  br i1 %278, label %279, label %287

279:                                              ; preds = %273, %267
  %280 = call i64 @chance(i32 999, i32 1000)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %279
  store i32 0, i32* %4, align 4
  br label %309

283:                                              ; preds = %279
  %284 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %285 = load i32, i32* %6, align 4
  %286 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_warn(%struct.ubifs_info* %284, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %285)
  br label %295

287:                                              ; preds = %273
  %288 = call i64 @chance(i32 9999, i32 10000)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %287
  store i32 0, i32* %4, align 4
  br label %309

291:                                              ; preds = %287
  %292 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %293 = load i32, i32* %6, align 4
  %294 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_warn(%struct.ubifs_info* %292, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i32 %293)
  br label %295

295:                                              ; preds = %291, %283
  br label %296

296:                                              ; preds = %295, %263
  br label %297

297:                                              ; preds = %296, %242
  br label %298

298:                                              ; preds = %297, %218
  br label %299

299:                                              ; preds = %298, %204
  br label %300

300:                                              ; preds = %299, %177
  br label %301

301:                                              ; preds = %300, %150
  br label %302

302:                                              ; preds = %301, %125
  br label %303

303:                                              ; preds = %302, %108
  %304 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %305 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %304, i32 0, i32 2
  store i32 1, i32* %305, align 8
  %306 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %307 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_warn(%struct.ubifs_info* %306, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0))
  %308 = call i32 (...) @dump_stack()
  store i32 1, i32* %4, align 4
  br label %309

309:                                              ; preds = %303, %290, %282, %262, %241, %217, %203, %199, %176, %172, %149, %145, %124, %107, %103, %92, %77
  %310 = load i32, i32* %4, align 4
  ret i32 %310
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @dbg_is_tst_rcvry(%struct.ubifs_info*) #1

declare dso_local i64 @chance(i32, i32) #1

declare dso_local i32 @prandom_u32(...) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @ubifs_warn(%struct.ubifs_info*, i8*, ...) #1

declare dso_local i64 @time_before(i32, i32) #1

declare dso_local i32 @RB_EMPTY_ROOT(i32*) #1

declare dso_local i32 @ubifs_search_bud(%struct.ubifs_info*, i32) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
