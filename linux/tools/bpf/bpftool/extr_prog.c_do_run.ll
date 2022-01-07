; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_prog.c_do_run.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_prog.c_do_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog_test_run_attr = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32 }

@SZ_32K = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"data_in\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"data_out\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"data_size_out\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ctx_in\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ctx_out\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"ctx_size_out\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"can't parse %s as output data size\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"can't parse %s as output context size\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"repeat\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"can't parse %s as repeat number\00", align 1
@.str.10 = private unnamed_addr constant [128 x i8] c"expected no more arguments, 'data_in', 'data_out', 'data_size_out', 'ctx_in', 'ctx_out', 'ctx_size_out' or 'repeat', got: '%s'?\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"failed to run program: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@json_output = common dso_local global i64 0, align 8
@json_wtr = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"retval\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"duration\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [36 x i8] c"Return value: %u, duration%s: %uns\0A\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c" (average)\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @do_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_run(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.bpf_prog_test_run_attr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %22 = bitcast %struct.bpf_prog_test_run_attr* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 72, i1 false)
  %23 = load i32, i32* @SZ_32K, align 4
  store i32 %23, i32* %11, align 4
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i32 1, i32* %16, align 4
  %24 = call i32 @REQ_ARGS(i32 4)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %338

27:                                               ; preds = %2
  %28 = call i32 @prog_parse_fd(i32* %4, i8*** %5)
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %17, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %338

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %192, %32
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %193

36:                                               ; preds = %33
  %37 = load i8**, i8*** %5, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @detect_common_prefix(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 -1, i32* %3, align 4
  br label %338

42:                                               ; preds = %36
  %43 = load i8**, i8*** %5, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @detect_common_prefix(i8* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32* null)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 -1, i32* %3, align 4
  br label %338

48:                                               ; preds = %42
  %49 = load i8**, i8*** %5, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @is_prefix(i8* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = call i32 (...) @NEXT_ARG()
  %55 = call i32 @REQ_ARGS(i32 1)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  store i32 -1, i32* %3, align 4
  br label %338

58:                                               ; preds = %53
  %59 = call i8* (...) @GET_ARG()
  store i8* %59, i8** %6, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = call i64 @check_single_stdin(i8* %60, i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 -1, i32* %3, align 4
  br label %338

65:                                               ; preds = %58
  br label %192

66:                                               ; preds = %48
  %67 = load i8**, i8*** %5, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @is_prefix(i8* %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = call i32 (...) @NEXT_ARG()
  %73 = call i32 @REQ_ARGS(i32 1)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  store i32 -1, i32* %3, align 4
  br label %338

76:                                               ; preds = %71
  %77 = call i8* (...) @GET_ARG()
  store i8* %77, i8** %7, align 8
  br label %191

78:                                               ; preds = %66
  %79 = load i8**, i8*** %5, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @is_prefix(i8* %80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %103

83:                                               ; preds = %78
  %84 = call i32 (...) @NEXT_ARG()
  %85 = call i32 @REQ_ARGS(i32 1)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  store i32 -1, i32* %3, align 4
  br label %338

88:                                               ; preds = %83
  %89 = load i8**, i8*** %5, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = call i8* @strtoul(i8* %90, i8** %19, i32 0)
  %92 = ptrtoint i8* %91 to i32
  %93 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %10, i32 0, i32 0
  store i32 %92, i32* %93, align 8
  %94 = load i8*, i8** %19, align 8
  %95 = load i8, i8* %94, align 1
  %96 = icmp ne i8 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %88
  %98 = load i8**, i8*** %5, align 8
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @p_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* %99)
  store i32 -1, i32* %3, align 4
  br label %338

101:                                              ; preds = %88
  %102 = call i32 (...) @NEXT_ARG()
  br label %190

103:                                              ; preds = %78
  %104 = load i8**, i8*** %5, align 8
  %105 = load i8*, i8** %104, align 8
  %106 = call i64 @is_prefix(i8* %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %103
  %109 = call i32 (...) @NEXT_ARG()
  %110 = call i32 @REQ_ARGS(i32 1)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %108
  store i32 -1, i32* %3, align 4
  br label %338

113:                                              ; preds = %108
  %114 = call i8* (...) @GET_ARG()
  store i8* %114, i8** %8, align 8
  %115 = load i8*, i8** %6, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = call i64 @check_single_stdin(i8* %115, i8* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  store i32 -1, i32* %3, align 4
  br label %338

120:                                              ; preds = %113
  br label %189

121:                                              ; preds = %103
  %122 = load i8**, i8*** %5, align 8
  %123 = load i8*, i8** %122, align 8
  %124 = call i64 @is_prefix(i8* %123, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %121
  %127 = call i32 (...) @NEXT_ARG()
  %128 = call i32 @REQ_ARGS(i32 1)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %126
  store i32 -1, i32* %3, align 4
  br label %338

131:                                              ; preds = %126
  %132 = call i8* (...) @GET_ARG()
  store i8* %132, i8** %9, align 8
  br label %188

133:                                              ; preds = %121
  %134 = load i8**, i8*** %5, align 8
  %135 = load i8*, i8** %134, align 8
  %136 = call i64 @is_prefix(i8* %135, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %158

138:                                              ; preds = %133
  %139 = call i32 (...) @NEXT_ARG()
  %140 = call i32 @REQ_ARGS(i32 1)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %138
  store i32 -1, i32* %3, align 4
  br label %338

143:                                              ; preds = %138
  %144 = load i8**, i8*** %5, align 8
  %145 = load i8*, i8** %144, align 8
  %146 = call i8* @strtoul(i8* %145, i8** %20, i32 0)
  %147 = ptrtoint i8* %146 to i32
  %148 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %10, i32 0, i32 1
  store i32 %147, i32* %148, align 4
  %149 = load i8*, i8** %20, align 8
  %150 = load i8, i8* %149, align 1
  %151 = icmp ne i8 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %143
  %153 = load i8**, i8*** %5, align 8
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @p_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8* %154)
  store i32 -1, i32* %3, align 4
  br label %338

156:                                              ; preds = %143
  %157 = call i32 (...) @NEXT_ARG()
  br label %187

158:                                              ; preds = %133
  %159 = load i8**, i8*** %5, align 8
  %160 = load i8*, i8** %159, align 8
  %161 = call i64 @is_prefix(i8* %160, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %182

163:                                              ; preds = %158
  %164 = call i32 (...) @NEXT_ARG()
  %165 = call i32 @REQ_ARGS(i32 1)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %163
  store i32 -1, i32* %3, align 4
  br label %338

168:                                              ; preds = %163
  %169 = load i8**, i8*** %5, align 8
  %170 = load i8*, i8** %169, align 8
  %171 = call i8* @strtoul(i8* %170, i8** %21, i32 0)
  %172 = ptrtoint i8* %171 to i32
  store i32 %172, i32* %16, align 4
  %173 = load i8*, i8** %21, align 8
  %174 = load i8, i8* %173, align 1
  %175 = icmp ne i8 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %168
  %177 = load i8**, i8*** %5, align 8
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @p_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8* %178)
  store i32 -1, i32* %3, align 4
  br label %338

180:                                              ; preds = %168
  %181 = call i32 (...) @NEXT_ARG()
  br label %186

182:                                              ; preds = %158
  %183 = load i8**, i8*** %5, align 8
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @p_err(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.10, i64 0, i64 0), i8* %184)
  store i32 -1, i32* %3, align 4
  br label %338

186:                                              ; preds = %180
  br label %187

187:                                              ; preds = %186, %156
  br label %188

188:                                              ; preds = %187, %131
  br label %189

189:                                              ; preds = %188, %120
  br label %190

190:                                              ; preds = %189, %101
  br label %191

191:                                              ; preds = %190, %76
  br label %192

192:                                              ; preds = %191, %65
  br label %33

193:                                              ; preds = %33
  %194 = load i8*, i8** %6, align 8
  %195 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %10, i32 0, i32 11
  %196 = call i32 @get_run_data(i8* %194, i8** %12, i32* %195)
  store i32 %196, i32* %18, align 4
  %197 = load i32, i32* %18, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %193
  store i32 -1, i32* %3, align 4
  br label %338

200:                                              ; preds = %193
  %201 = load i8*, i8** %12, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %218

203:                                              ; preds = %200
  %204 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %10, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %203
  %208 = load i32, i32* %11, align 4
  %209 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %10, i32 0, i32 0
  store i32 %208, i32* %209, align 8
  br label %210

210:                                              ; preds = %207, %203
  %211 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %10, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @alloc_run_data(i8** %13, i32 %212)
  store i32 %213, i32* %18, align 4
  %214 = load i32, i32* %18, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %210
  br label %334

217:                                              ; preds = %210
  br label %218

218:                                              ; preds = %217, %200
  %219 = load i8*, i8** %8, align 8
  %220 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %10, i32 0, i32 10
  %221 = call i32 @get_run_data(i8* %219, i8** %14, i32* %220)
  store i32 %221, i32* %18, align 4
  %222 = load i32, i32* %18, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %218
  br label %331

225:                                              ; preds = %218
  %226 = load i8*, i8** %14, align 8
  %227 = icmp ne i8* %226, null
  br i1 %227, label %228, label %243

228:                                              ; preds = %225
  %229 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %10, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %235, label %232

232:                                              ; preds = %228
  %233 = load i32, i32* %11, align 4
  %234 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %10, i32 0, i32 1
  store i32 %233, i32* %234, align 4
  br label %235

235:                                              ; preds = %232, %228
  %236 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %10, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @alloc_run_data(i8** %15, i32 %237)
  store i32 %238, i32* %18, align 4
  %239 = load i32, i32* %18, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %235
  br label %328

242:                                              ; preds = %235
  br label %243

243:                                              ; preds = %242, %225
  %244 = load i32, i32* %17, align 4
  %245 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %10, i32 0, i32 2
  store i32 %244, i32* %245, align 8
  %246 = load i32, i32* %16, align 4
  %247 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %10, i32 0, i32 3
  store i32 %246, i32* %247, align 4
  %248 = load i8*, i8** %12, align 8
  %249 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %10, i32 0, i32 9
  store i8* %248, i8** %249, align 8
  %250 = load i8*, i8** %13, align 8
  %251 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %10, i32 0, i32 7
  store i8* %250, i8** %251, align 8
  %252 = load i8*, i8** %14, align 8
  %253 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %10, i32 0, i32 8
  store i8* %252, i8** %253, align 8
  %254 = load i8*, i8** %15, align 8
  %255 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %10, i32 0, i32 6
  store i8* %254, i8** %255, align 8
  %256 = call i32 @bpf_prog_test_run_xattr(%struct.bpf_prog_test_run_attr* %10)
  store i32 %256, i32* %18, align 4
  %257 = load i32, i32* %18, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %243
  %260 = load i32, i32* @errno, align 4
  %261 = call i8* @strerror(i32 %260)
  %262 = call i32 @p_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i8* %261)
  br label %325

263:                                              ; preds = %243
  store i32 0, i32* %18, align 4
  %264 = load i64, i64* @json_output, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %263
  %267 = load i32, i32* @json_wtr, align 4
  %268 = call i32 @jsonw_start_object(i32 %267)
  br label %269

269:                                              ; preds = %266, %263
  %270 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %10, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %284

273:                                              ; preds = %269
  %274 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %10, i32 0, i32 7
  %275 = load i8*, i8** %274, align 8
  %276 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %10, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load i8*, i8** %7, align 8
  %279 = call i64 @print_run_output(i8* %275, i32 %277, i8* %278, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %280 = load i32, i32* %18, align 4
  %281 = sext i32 %280 to i64
  %282 = add nsw i64 %281, %279
  %283 = trunc i64 %282 to i32
  store i32 %283, i32* %18, align 4
  br label %284

284:                                              ; preds = %273, %269
  %285 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %10, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %299

288:                                              ; preds = %284
  %289 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %10, i32 0, i32 6
  %290 = load i8*, i8** %289, align 8
  %291 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %10, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = load i8*, i8** %9, align 8
  %294 = call i64 @print_run_output(i8* %290, i32 %292, i8* %293, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %295 = load i32, i32* %18, align 4
  %296 = sext i32 %295 to i64
  %297 = add nsw i64 %296, %294
  %298 = trunc i64 %297 to i32
  store i32 %298, i32* %18, align 4
  br label %299

299:                                              ; preds = %288, %284
  %300 = load i64, i64* @json_output, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %313

302:                                              ; preds = %299
  %303 = load i32, i32* @json_wtr, align 4
  %304 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %10, i32 0, i32 4
  %305 = load i32, i32* %304, align 8
  %306 = call i32 @jsonw_uint_field(i32 %303, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 %305)
  %307 = load i32, i32* @json_wtr, align 4
  %308 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %10, i32 0, i32 5
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @jsonw_uint_field(i32 %307, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 %309)
  %311 = load i32, i32* @json_wtr, align 4
  %312 = call i32 @jsonw_end_object(i32 %311)
  br label %324

313:                                              ; preds = %299
  %314 = load i32, i32* @stdout, align 4
  %315 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %10, i32 0, i32 4
  %316 = load i32, i32* %315, align 8
  %317 = load i32, i32* %16, align 4
  %318 = icmp ugt i32 %317, 1
  %319 = zext i1 %318 to i64
  %320 = select i1 %318, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)
  %321 = getelementptr inbounds %struct.bpf_prog_test_run_attr, %struct.bpf_prog_test_run_attr* %10, i32 0, i32 5
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @fprintf(i32 %314, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i32 %316, i8* %320, i32 %322)
  br label %324

324:                                              ; preds = %313, %302
  br label %325

325:                                              ; preds = %324, %259
  %326 = load i8*, i8** %15, align 8
  %327 = call i32 @free(i8* %326)
  br label %328

328:                                              ; preds = %325, %241
  %329 = load i8*, i8** %14, align 8
  %330 = call i32 @free(i8* %329)
  br label %331

331:                                              ; preds = %328, %224
  %332 = load i8*, i8** %13, align 8
  %333 = call i32 @free(i8* %332)
  br label %334

334:                                              ; preds = %331, %216
  %335 = load i8*, i8** %12, align 8
  %336 = call i32 @free(i8* %335)
  %337 = load i32, i32* %18, align 4
  store i32 %337, i32* %3, align 4
  br label %338

338:                                              ; preds = %334, %199, %182, %176, %167, %152, %142, %130, %119, %112, %97, %87, %75, %64, %57, %47, %41, %31, %26
  %339 = load i32, i32* %3, align 4
  ret i32 %339
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @REQ_ARGS(i32) #2

declare dso_local i32 @prog_parse_fd(i32*, i8***) #2

declare dso_local i64 @detect_common_prefix(i8*, i8*, i8*, i8*, i32*) #2

declare dso_local i64 @is_prefix(i8*, i8*) #2

declare dso_local i32 @NEXT_ARG(...) #2

declare dso_local i8* @GET_ARG(...) #2

declare dso_local i64 @check_single_stdin(i8*, i8*) #2

declare dso_local i8* @strtoul(i8*, i8**, i32) #2

declare dso_local i32 @p_err(i8*, i8*) #2

declare dso_local i32 @get_run_data(i8*, i8**, i32*) #2

declare dso_local i32 @alloc_run_data(i8**, i32) #2

declare dso_local i32 @bpf_prog_test_run_xattr(%struct.bpf_prog_test_run_attr*) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @jsonw_start_object(i32) #2

declare dso_local i64 @print_run_output(i8*, i32, i8*, i8*) #2

declare dso_local i32 @jsonw_uint_field(i32, i8*, i32) #2

declare dso_local i32 @jsonw_end_object(i32) #2

declare dso_local i32 @fprintf(i32, i8*, i32, i8*, i32) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
