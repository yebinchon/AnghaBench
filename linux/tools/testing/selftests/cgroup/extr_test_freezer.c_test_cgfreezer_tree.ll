; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_freezer.c_test_cgfreezer_tree.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_freezer.c_test_cgfreezer_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KSFT_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"cg_test_tree_A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@child_fn = common dso_local global i32 0, align 4
@KSFT_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @test_cgfreezer_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_cgfreezer_tree(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [10 x i8*], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = bitcast [10 x i8*]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 80, i1 false)
  %7 = load i32, i32* @KSFT_FAIL, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i8*, i8** %2, align 8
  %9 = call i8* @cg_name(i8* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %10 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 0
  store i8* %9, i8** %10, align 16
  %11 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 0
  %12 = load i8*, i8** %11, align 16
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %246

15:                                               ; preds = %1
  %16 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 0
  %17 = load i8*, i8** %16, align 16
  %18 = call i8* @cg_name(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %19 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 1
  store i8* %18, i8** %19, align 8
  %20 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  br label %246

24:                                               ; preds = %15
  %25 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @cg_name(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %28 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 2
  store i8* %27, i8** %28, align 16
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 2
  %30 = load i8*, i8** %29, align 16
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  br label %246

33:                                               ; preds = %24
  %34 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @cg_name(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %37 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 3
  store i8* %36, i8** %37, align 8
  %38 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 3
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  br label %246

42:                                               ; preds = %33
  %43 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 0
  %44 = load i8*, i8** %43, align 16
  %45 = call i8* @cg_name(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %46 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 4
  store i8* %45, i8** %46, align 16
  %47 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 4
  %48 = load i8*, i8** %47, align 16
  %49 = icmp ne i8* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  br label %246

51:                                               ; preds = %42
  %52 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 4
  %53 = load i8*, i8** %52, align 16
  %54 = call i8* @cg_name(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %55 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 5
  store i8* %54, i8** %55, align 8
  %56 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 5
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %51
  br label %246

60:                                               ; preds = %51
  %61 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 5
  %62 = load i8*, i8** %61, align 8
  %63 = call i8* @cg_name(i8* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %64 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 6
  store i8* %63, i8** %64, align 16
  %65 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 6
  %66 = load i8*, i8** %65, align 16
  %67 = icmp ne i8* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %60
  br label %246

69:                                               ; preds = %60
  %70 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 6
  %71 = load i8*, i8** %70, align 16
  %72 = call i8* @cg_name(i8* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %73 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 7
  store i8* %72, i8** %73, align 8
  %74 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 7
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %69
  br label %246

78:                                               ; preds = %69
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 0
  %80 = load i8*, i8** %79, align 16
  %81 = call i8* @cg_name(i8* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %82 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 8
  store i8* %81, i8** %82, align 16
  %83 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 8
  %84 = load i8*, i8** %83, align 16
  %85 = icmp ne i8* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %78
  br label %246

87:                                               ; preds = %78
  %88 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 0
  %89 = load i8*, i8** %88, align 16
  %90 = call i8* @cg_name(i8* %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %91 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 9
  store i8* %90, i8** %91, align 8
  %92 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 9
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %87
  br label %246

96:                                               ; preds = %87
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %109, %96
  %98 = load i32, i32* %5, align 4
  %99 = icmp slt i32 %98, 10
  br i1 %99, label %100, label %112

100:                                              ; preds = %97
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @cg_create(i8* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %246

108:                                              ; preds = %100
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %5, align 4
  br label %97

112:                                              ; preds = %97
  %113 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 2
  %114 = load i8*, i8** %113, align 16
  %115 = load i32, i32* @child_fn, align 4
  %116 = call i32 @cg_run_nowait(i8* %114, i32 %115, i32* null)
  %117 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 7
  %118 = load i8*, i8** %117, align 8
  %119 = load i32, i32* @child_fn, align 4
  %120 = call i32 @cg_run_nowait(i8* %118, i32 %119, i32* null)
  %121 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 9
  %122 = load i8*, i8** %121, align 8
  %123 = load i32, i32* @child_fn, align 4
  %124 = call i32 @cg_run_nowait(i8* %122, i32 %123, i32* null)
  %125 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 9
  %126 = load i8*, i8** %125, align 8
  %127 = load i32, i32* @child_fn, align 4
  %128 = call i32 @cg_run_nowait(i8* %126, i32 %127, i32* null)
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 9
  %130 = load i8*, i8** %129, align 8
  %131 = load i32, i32* @child_fn, align 4
  %132 = call i32 @cg_run_nowait(i8* %130, i32 %131, i32* null)
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 2
  %134 = load i8*, i8** %133, align 16
  %135 = call i64 @cg_wait_for_proc_count(i8* %134, i32 1)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %147, label %137

137:                                              ; preds = %112
  %138 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 7
  %139 = load i8*, i8** %138, align 8
  %140 = call i64 @cg_wait_for_proc_count(i8* %139, i32 1)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %137
  %143 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 9
  %144 = load i8*, i8** %143, align 8
  %145 = call i64 @cg_wait_for_proc_count(i8* %144, i32 3)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142, %137, %112
  br label %246

148:                                              ; preds = %142
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 1
  %150 = load i8*, i8** %149, align 8
  %151 = call i64 @cg_freeze_wait(i8* %150, i32 1)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %246

154:                                              ; preds = %148
  %155 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 5
  %156 = load i8*, i8** %155, align 8
  %157 = call i64 @cg_freeze_wait(i8* %156, i32 1)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  br label %246

160:                                              ; preds = %154
  %161 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 6
  %162 = load i8*, i8** %161, align 16
  %163 = call i64 @cg_freeze_wait(i8* %162, i32 1)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  br label %246

166:                                              ; preds = %160
  %167 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 0
  %168 = load i8*, i8** %167, align 16
  %169 = call i64 @cg_check_frozen(i8* %168, i32 0)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  br label %246

172:                                              ; preds = %166
  %173 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 4
  %174 = load i8*, i8** %173, align 16
  %175 = call i64 @cg_check_frozen(i8* %174, i32 0)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %172
  br label %246

178:                                              ; preds = %172
  %179 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 0
  %180 = load i8*, i8** %179, align 16
  %181 = call i64 @cg_freeze_wait(i8* %180, i32 1)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  br label %246

184:                                              ; preds = %178
  %185 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 1
  %186 = load i8*, i8** %185, align 8
  %187 = call i64 @cg_check_frozen(i8* %186, i32 1)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  br label %246

190:                                              ; preds = %184
  %191 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 4
  %192 = load i8*, i8** %191, align 16
  %193 = call i64 @cg_check_frozen(i8* %192, i32 1)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  br label %246

196:                                              ; preds = %190
  %197 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 1
  %198 = load i8*, i8** %197, align 8
  %199 = call i64 @cg_freeze_nowait(i8* %198, i32 0)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %196
  br label %246

202:                                              ; preds = %196
  %203 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 5
  %204 = load i8*, i8** %203, align 8
  %205 = call i64 @cg_freeze_nowait(i8* %204, i32 0)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %202
  br label %246

208:                                              ; preds = %202
  %209 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 6
  %210 = load i8*, i8** %209, align 16
  %211 = call i64 @cg_freeze_nowait(i8* %210, i32 0)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %208
  br label %246

214:                                              ; preds = %208
  %215 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 2
  %216 = load i8*, i8** %215, align 16
  %217 = call i64 @cg_check_frozen(i8* %216, i32 1)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %214
  br label %246

220:                                              ; preds = %214
  %221 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 7
  %222 = load i8*, i8** %221, align 8
  %223 = call i64 @cg_check_frozen(i8* %222, i32 1)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %220
  br label %246

226:                                              ; preds = %220
  %227 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 0
  %228 = load i8*, i8** %227, align 16
  %229 = call i64 @cg_freeze_wait(i8* %228, i32 0)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %226
  br label %246

232:                                              ; preds = %226
  %233 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 2
  %234 = load i8*, i8** %233, align 16
  %235 = call i64 @cg_check_frozen(i8* %234, i32 0)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %232
  br label %246

238:                                              ; preds = %232
  %239 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 9
  %240 = load i8*, i8** %239, align 8
  %241 = call i64 @cg_check_frozen(i8* %240, i32 0)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %238
  br label %246

244:                                              ; preds = %238
  %245 = load i32, i32* @KSFT_PASS, align 4
  store i32 %245, i32* %4, align 4
  br label %246

246:                                              ; preds = %244, %243, %237, %231, %225, %219, %213, %207, %201, %195, %189, %183, %177, %171, %165, %159, %153, %147, %107, %95, %86, %77, %68, %59, %50, %41, %32, %23, %14
  store i32 9, i32* %5, align 4
  br label %247

247:                                              ; preds = %269, %246
  %248 = load i32, i32* %5, align 4
  %249 = icmp sge i32 %248, 0
  br i1 %249, label %250, label %256

250:                                              ; preds = %247
  %251 = load i32, i32* %5, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 %252
  %254 = load i8*, i8** %253, align 8
  %255 = icmp ne i8* %254, null
  br label %256

256:                                              ; preds = %250, %247
  %257 = phi i1 [ false, %247 ], [ %255, %250 ]
  br i1 %257, label %258, label %272

258:                                              ; preds = %256
  %259 = load i32, i32* %5, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 %260
  %262 = load i8*, i8** %261, align 8
  %263 = call i32 @cg_destroy(i8* %262)
  %264 = load i32, i32* %5, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 %265
  %267 = load i8*, i8** %266, align 8
  %268 = call i32 @free(i8* %267)
  br label %269

269:                                              ; preds = %258
  %270 = load i32, i32* %5, align 4
  %271 = add nsw i32 %270, -1
  store i32 %271, i32* %5, align 4
  br label %247

272:                                              ; preds = %256
  %273 = load i32, i32* %4, align 4
  ret i32 %273
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @cg_name(i8*, i8*) #2

declare dso_local i64 @cg_create(i8*) #2

declare dso_local i32 @cg_run_nowait(i8*, i32, i32*) #2

declare dso_local i64 @cg_wait_for_proc_count(i8*, i32) #2

declare dso_local i64 @cg_freeze_wait(i8*, i32) #2

declare dso_local i64 @cg_check_frozen(i8*, i32) #2

declare dso_local i64 @cg_freeze_nowait(i8*, i32) #2

declare dso_local i32 @cg_destroy(i8*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
