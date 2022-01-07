; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_perf.c_handle_options.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_perf.c_handle_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_struct = type { i8* }
%struct.option = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"-vv\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@version_verbose = common dso_local global i32 0, align 4
@CMD_EXEC_PATH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"--html-path\00", align 1
@PERF_HTML_PATH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"--paginate\00", align 1
@use_pager = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"--no-pager\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"--debugfs-dir\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [39 x i8] c"No directory given for --debugfs-dir.\0A\00", align 1
@perf_usage_string = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"--buildid-dir\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"No directory given for --buildid-dir.\0A\00", align 1
@CMD_DEBUGFS_DIR = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"dir: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"--list-cmds\00", align 1
@commands = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"--list-opts\00", align 1
@options = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [6 x i8] c"--%s \00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"--debug\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"No variable specified for --debug.\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"Unknown option: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8***, i32*, i32*)* @handle_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_options(i8*** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8***, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cmd_struct*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.option*, align 8
  store i8*** %0, i8**** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %291, %3
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %300

17:                                               ; preds = %13
  %18 = load i8***, i8**** %4, align 8
  %19 = load i8**, i8*** %18, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 45
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %300

28:                                               ; preds = %17
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32, %28
  br label %300

37:                                               ; preds = %32
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i8***, i8**** %4, align 8
  %43 = load i8**, i8*** %42, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %44, align 8
  br label %300

45:                                               ; preds = %37
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i8***, i8**** %4, align 8
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %52, align 8
  br label %300

53:                                               ; preds = %45
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i8***, i8**** %4, align 8
  %59 = load i8**, i8*** %58, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %60, align 8
  store i32 1, i32* @version_verbose, align 4
  br label %300

61:                                               ; preds = %53
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* @CMD_EXEC_PATH, align 4
  %64 = call i64 @strstarts(i8* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %61
  %67 = load i32, i32* @CMD_EXEC_PATH, align 4
  %68 = call i32 @strlen(i32 %67)
  %69 = load i8*, i8** %8, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8* %71, i8** %8, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 61
  br i1 %75, label %76, label %80

76:                                               ; preds = %66
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = call i32 @set_argv_exec_path(i8* %78)
  br label %84

80:                                               ; preds = %66
  %81 = call i32 (...) @get_argv_exec_path()
  %82 = call i32 @puts(i32 %81)
  %83 = call i32 @exit(i32 0) #3
  unreachable

84:                                               ; preds = %76
  br label %291

85:                                               ; preds = %61
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 @strcmp(i8* %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %85
  %90 = load i32, i32* @PERF_HTML_PATH, align 4
  %91 = call i32 @system_path(i32 %90)
  %92 = call i32 @puts(i32 %91)
  %93 = call i32 @exit(i32 0) #3
  unreachable

94:                                               ; preds = %85
  %95 = load i8*, i8** %8, align 8
  %96 = call i32 @strcmp(i8* %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 @strcmp(i8* %99, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %98, %94
  store i32 1, i32* @use_pager, align 4
  br label %289

103:                                              ; preds = %98
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 @strcmp(i8* %104, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %103
  store i32 0, i32* @use_pager, align 4
  %108 = load i32*, i32** %6, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load i32*, i32** %6, align 8
  store i32 1, i32* %111, align 4
  br label %112

112:                                              ; preds = %110, %107
  br label %288

113:                                              ; preds = %103
  %114 = load i8*, i8** %8, align 8
  %115 = call i32 @strcmp(i8* %114, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %143, label %117

117:                                              ; preds = %113
  %118 = load i32*, i32** %5, align 8
  %119 = load i32, i32* %118, align 4
  %120 = icmp slt i32 %119, 2
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load i32, i32* @stderr, align 4
  %123 = call i32 (i32, i8*, ...) @fprintf(i32 %122, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0))
  %124 = load i32, i32* @perf_usage_string, align 4
  %125 = call i32 @usage(i32 %124)
  br label %126

126:                                              ; preds = %121, %117
  %127 = load i8***, i8**** %4, align 8
  %128 = load i8**, i8*** %127, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 1
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @tracing_path_set(i8* %130)
  %132 = load i32*, i32** %6, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %126
  %135 = load i32*, i32** %6, align 8
  store i32 1, i32* %135, align 4
  br label %136

136:                                              ; preds = %134, %126
  %137 = load i8***, i8**** %4, align 8
  %138 = load i8**, i8*** %137, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i32 1
  store i8** %139, i8*** %137, align 8
  %140 = load i32*, i32** %5, align 8
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %140, align 4
  br label %287

143:                                              ; preds = %113
  %144 = load i8*, i8** %8, align 8
  %145 = call i32 @strcmp(i8* %144, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %173, label %147

147:                                              ; preds = %143
  %148 = load i32*, i32** %5, align 8
  %149 = load i32, i32* %148, align 4
  %150 = icmp slt i32 %149, 2
  br i1 %150, label %151, label %156

151:                                              ; preds = %147
  %152 = load i32, i32* @stderr, align 4
  %153 = call i32 (i32, i8*, ...) @fprintf(i32 %152, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0))
  %154 = load i32, i32* @perf_usage_string, align 4
  %155 = call i32 @usage(i32 %154)
  br label %156

156:                                              ; preds = %151, %147
  %157 = load i8***, i8**** %4, align 8
  %158 = load i8**, i8*** %157, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i64 1
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @set_buildid_dir(i8* %160)
  %162 = load i32*, i32** %6, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %166

164:                                              ; preds = %156
  %165 = load i32*, i32** %6, align 8
  store i32 1, i32* %165, align 4
  br label %166

166:                                              ; preds = %164, %156
  %167 = load i8***, i8**** %4, align 8
  %168 = load i8**, i8*** %167, align 8
  %169 = getelementptr inbounds i8*, i8** %168, i32 1
  store i8** %169, i8*** %167, align 8
  %170 = load i32*, i32** %5, align 8
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %170, align 4
  br label %286

173:                                              ; preds = %143
  %174 = load i8*, i8** %8, align 8
  %175 = load i32, i32* @CMD_DEBUGFS_DIR, align 4
  %176 = call i64 @strstarts(i8* %174, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %193

178:                                              ; preds = %173
  %179 = load i8*, i8** %8, align 8
  %180 = load i32, i32* @CMD_DEBUGFS_DIR, align 4
  %181 = call i32 @strlen(i32 %180)
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %179, i64 %182
  %184 = call i32 @tracing_path_set(i8* %183)
  %185 = load i32, i32* @stderr, align 4
  %186 = call i8* (...) @tracing_path_mount()
  %187 = call i32 (i32, i8*, ...) @fprintf(i32 %185, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* %186)
  %188 = load i32*, i32** %6, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %192

190:                                              ; preds = %178
  %191 = load i32*, i32** %6, align 8
  store i32 1, i32* %191, align 4
  br label %192

192:                                              ; preds = %190, %178
  br label %285

193:                                              ; preds = %173
  %194 = load i8*, i8** %8, align 8
  %195 = call i32 @strcmp(i8* %194, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %219, label %197

197:                                              ; preds = %193
  store i32 0, i32* %9, align 4
  br label %198

198:                                              ; preds = %213, %197
  %199 = load i32, i32* %9, align 4
  %200 = load i8*, i8** @commands, align 8
  %201 = call i32 @ARRAY_SIZE(i8* %200)
  %202 = icmp ult i32 %199, %201
  br i1 %202, label %203, label %216

203:                                              ; preds = %198
  %204 = load i8*, i8** @commands, align 8
  %205 = load i32, i32* %9, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr i8, i8* %204, i64 %206
  %208 = bitcast i8* %207 to %struct.cmd_struct*
  store %struct.cmd_struct* %208, %struct.cmd_struct** %10, align 8
  %209 = load %struct.cmd_struct*, %struct.cmd_struct** %10, align 8
  %210 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %209, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* %211)
  br label %213

213:                                              ; preds = %203
  %214 = load i32, i32* %9, align 4
  %215 = add i32 %214, 1
  store i32 %215, i32* %9, align 4
  br label %198

216:                                              ; preds = %198
  %217 = call i32 @putchar(i8 signext 10)
  %218 = call i32 @exit(i32 0) #3
  unreachable

219:                                              ; preds = %193
  %220 = load i8*, i8** %8, align 8
  %221 = call i32 @strcmp(i8* %220, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %246, label %223

223:                                              ; preds = %219
  store i32 0, i32* %11, align 4
  br label %224

224:                                              ; preds = %240, %223
  %225 = load i32, i32* %11, align 4
  %226 = load i8*, i8** @options, align 8
  %227 = call i32 @ARRAY_SIZE(i8* %226)
  %228 = sub nsw i32 %227, 1
  %229 = icmp ult i32 %225, %228
  br i1 %229, label %230, label %243

230:                                              ; preds = %224
  %231 = load i8*, i8** @options, align 8
  %232 = load i32, i32* %11, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr i8, i8* %231, i64 %233
  %235 = bitcast i8* %234 to %struct.option*
  store %struct.option* %235, %struct.option** %12, align 8
  %236 = load %struct.option*, %struct.option** %12, align 8
  %237 = getelementptr inbounds %struct.option, %struct.option* %236, i32 0, i32 0
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8* %238)
  br label %240

240:                                              ; preds = %230
  %241 = load i32, i32* %11, align 4
  %242 = add i32 %241, 1
  store i32 %242, i32* %11, align 4
  br label %224

243:                                              ; preds = %224
  %244 = call i32 @putchar(i8 signext 10)
  %245 = call i32 @exit(i32 0) #3
  unreachable

246:                                              ; preds = %219
  %247 = load i8*, i8** %8, align 8
  %248 = call i32 @strcmp(i8* %247, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %276, label %250

250:                                              ; preds = %246
  %251 = load i32*, i32** %5, align 8
  %252 = load i32, i32* %251, align 4
  %253 = icmp slt i32 %252, 2
  br i1 %253, label %254, label %259

254:                                              ; preds = %250
  %255 = load i32, i32* @stderr, align 4
  %256 = call i32 (i32, i8*, ...) @fprintf(i32 %255, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0))
  %257 = load i32, i32* @perf_usage_string, align 4
  %258 = call i32 @usage(i32 %257)
  br label %259

259:                                              ; preds = %254, %250
  %260 = load i8***, i8**** %4, align 8
  %261 = load i8**, i8*** %260, align 8
  %262 = getelementptr inbounds i8*, i8** %261, i64 1
  %263 = load i8*, i8** %262, align 8
  %264 = call i64 @perf_debug_option(i8* %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %259
  %267 = load i32, i32* @perf_usage_string, align 4
  %268 = call i32 @usage(i32 %267)
  br label %269

269:                                              ; preds = %266, %259
  %270 = load i8***, i8**** %4, align 8
  %271 = load i8**, i8*** %270, align 8
  %272 = getelementptr inbounds i8*, i8** %271, i32 1
  store i8** %272, i8*** %270, align 8
  %273 = load i32*, i32** %5, align 8
  %274 = load i32, i32* %273, align 4
  %275 = add nsw i32 %274, -1
  store i32 %275, i32* %273, align 4
  br label %282

276:                                              ; preds = %246
  %277 = load i32, i32* @stderr, align 4
  %278 = load i8*, i8** %8, align 8
  %279 = call i32 (i32, i8*, ...) @fprintf(i32 %277, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i8* %278)
  %280 = load i32, i32* @perf_usage_string, align 4
  %281 = call i32 @usage(i32 %280)
  br label %282

282:                                              ; preds = %276, %269
  br label %283

283:                                              ; preds = %282
  br label %284

284:                                              ; preds = %283
  br label %285

285:                                              ; preds = %284, %192
  br label %286

286:                                              ; preds = %285, %166
  br label %287

287:                                              ; preds = %286, %136
  br label %288

288:                                              ; preds = %287, %112
  br label %289

289:                                              ; preds = %288, %102
  br label %290

290:                                              ; preds = %289
  br label %291

291:                                              ; preds = %290, %84
  %292 = load i8***, i8**** %4, align 8
  %293 = load i8**, i8*** %292, align 8
  %294 = getelementptr inbounds i8*, i8** %293, i32 1
  store i8** %294, i8*** %292, align 8
  %295 = load i32*, i32** %5, align 8
  %296 = load i32, i32* %295, align 4
  %297 = add nsw i32 %296, -1
  store i32 %297, i32* %295, align 4
  %298 = load i32, i32* %7, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %7, align 4
  br label %13

300:                                              ; preds = %57, %49, %41, %36, %27, %13
  %301 = load i32, i32* %7, align 4
  ret i32 %301
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @strstarts(i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @set_argv_exec_path(i8*) #1

declare dso_local i32 @puts(i32) #1

declare dso_local i32 @get_argv_exec_path(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @system_path(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @tracing_path_set(i8*) #1

declare dso_local i32 @set_buildid_dir(i8*) #1

declare dso_local i8* @tracing_path_mount(...) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i64 @perf_debug_option(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
