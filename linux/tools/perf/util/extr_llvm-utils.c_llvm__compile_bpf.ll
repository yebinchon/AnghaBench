; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_llvm-utils.c_llvm__compile_bpf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_llvm-utils.c_llvm__compile_bpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i32, i32 }

@llvm_param = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PATH_MAX = common dso_local global i32 0, align 4
@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@PERF_INCLUDE_DIR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ERROR: problems with path %s: %s\0A\00", align 1
@CLANG_BPF_CMD_DEFAULT_TEMPLATE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"clang\00", align 1
@.str.2 = private unnamed_addr constant [168 x i8] c"ERROR:\09unable to find clang.\0AHint:\09Try to install latest clang/llvm to support BPF. Check your $PATH\0A     \09and 'clang-path' option in [llvm] section of ~/.perfconfig.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"-I%s/bpf\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"NR_CPUS\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"LINUX_VERSION_CODE\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"CLANG_EXEC\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"CLANG_OPTIONS\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"KERNEL_INC_OPTIONS\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"PERF_BPF_INC_OPTIONS\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"WORKING_DIR\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"llc\00", align 1
@.str.15 = private unnamed_addr constant [164 x i8] c"ERROR:\09unable to find llc.\0AHint:\09Try to install latest clang/llvm to support BPF. Check your $PATH\0A     \09and 'llc-path' option in [llvm] section of ~/.perfconfig.\0A\00", align 1
@.str.16 = private unnamed_addr constant [52 x i8] c"%s -emit-llvm | %s -march=bpf %s -filetype=obj -o -\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"ERROR:\09not enough memory to setup command line\0A\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"CLANG_SOURCE\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"llvm compiling command template: %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"echo -n \22%s\22\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"llvm compiling command : %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"ERROR:\09unable to compile %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"Hint:\09Check error message shown above.\0A\00", align 1
@.str.24 = private unnamed_addr constant [50 x i8] c"Hint:\09You can also pre-compile it into .o using:\0A\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"     \09\09clang -target bpf -O2 -c %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"     \09with proper -I and -D options.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llvm__compile_bpf(i8* %0, i8** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [64 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca [64 x i8], align 16
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  store i8* null, i8** %9, align 8
  %31 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @llvm_param, i32 0, i32 0), align 8
  store i8* %31, i8** %14, align 8
  %32 = load i32, i32* @PATH_MAX, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %15, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %16, align 8
  %36 = load i32, i32* @PATH_MAX, align 4
  %37 = zext i32 %36 to i64
  %38 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %17, align 8
  %39 = load i32, i32* @PATH_MAX, align 4
  %40 = zext i32 %39 to i64
  %41 = alloca i8, i64 %40, align 16
  store i64 %40, i64* %18, align 8
  %42 = load i32, i32* @STRERR_BUFSIZE, align 4
  %43 = zext i32 %42 to i64
  %44 = alloca i8, i64 %43, align 16
  store i64 %43, i64* %20, align 8
  store i8* null, i8** %21, align 8
  store i8* null, i8** %22, align 8
  store i8* null, i8** %23, align 8
  %45 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @llvm_param, i32 0, i32 1), align 8
  store i8* %45, i8** %24, align 8
  store i8* null, i8** %25, align 8
  %46 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @llvm_param, i32 0, i32 2), align 8
  store i8* %46, i8** %26, align 8
  store i8* null, i8** %27, align 8
  %47 = load i32, i32* @PERF_INCLUDE_DIR, align 4
  %48 = call i8* @system_path(i32 %47)
  store i8* %48, i8** %29, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 45
  br i1 %53, label %54, label %67

54:                                               ; preds = %3
  %55 = load i8*, i8** %5, align 8
  %56 = call i32* @realpath(i8* %55, i8* %41)
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load i32, i32* @errno, align 4
  store i32 %59, i32* %10, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* %10, align 4
  %62 = trunc i64 %43 to i32
  %63 = call i32 @str_error_r(i32 %61, i8* %44, i32 %62)
  %64 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %60, i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  store i32 1, i32* %30, align 4
  br label %230

67:                                               ; preds = %54, %3
  %68 = load i8*, i8** %24, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = load i8*, i8** @CLANG_BPF_CMD_DEFAULT_TEMPLATE, align 8
  store i8* %71, i8** %24, align 8
  br label %72

72:                                               ; preds = %70, %67
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @llvm_param, i32 0, i32 4), align 4
  %74 = call i32 @search_program(i32 %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([168 x i8], [168 x i8]* @.str.2, i64 0, i64 0))
  %79 = call i32 (...) @version_notice()
  %80 = load i32, i32* @ENOENT, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  store i32 1, i32* %30, align 4
  br label %230

82:                                               ; preds = %72
  %83 = call i32 @llvm__get_kbuild_opts(i8** %21, i8** %22)
  %84 = call i32 (...) @llvm__get_nr_cpus()
  store i32 %84, i32* %11, align 4
  %85 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @snprintf(i8* %85, i32 64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = call i64 @fetch_kernel_version(i32* %12, i32* null, i32 0)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  store i32 0, i32* %12, align 4
  br label %91

91:                                               ; preds = %90, %82
  %92 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @snprintf(i8* %92, i32 64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  %95 = load i8*, i8** %29, align 8
  %96 = call i64 (i8**, i8*, i8*, ...) @asprintf(i8** %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %95)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %204

99:                                               ; preds = %91
  %100 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %101 = call i32 @force_set_env(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %100)
  %102 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %103 = call i32 @force_set_env(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %102)
  %104 = call i32 @force_set_env(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %35)
  %105 = load i8*, i8** %14, align 8
  %106 = call i32 @force_set_env(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %105)
  %107 = load i8*, i8** %22, align 8
  %108 = call i32 @force_set_env(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* %107)
  %109 = load i8*, i8** %23, align 8
  %110 = call i32 @force_set_env(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8* %109)
  %111 = load i8*, i8** %21, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %99
  br label %115

114:                                              ; preds = %99
  br label %115

115:                                              ; preds = %114, %113
  %116 = phi i8* [ %111, %113 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), %114 ]
  %117 = call i32 @force_set_env(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8* %116)
  %118 = load i8*, i8** %26, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %137

120:                                              ; preds = %115
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @llvm_param, i32 0, i32 3), align 8
  %122 = call i32 @search_program(i32 %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* %38)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([164 x i8], [164 x i8]* @.str.15, i64 0, i64 0))
  %127 = call i32 (...) @version_notice()
  br label %204

128:                                              ; preds = %120
  %129 = load i8*, i8** %24, align 8
  %130 = load i8*, i8** %26, align 8
  %131 = call i64 (i8**, i8*, i8*, ...) @asprintf(i8** %25, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.16, i64 0, i64 0), i8* %129, i8* %38, i8* %130)
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.17, i64 0, i64 0))
  br label %204

135:                                              ; preds = %128
  %136 = load i8*, i8** %25, align 8
  store i8* %136, i8** %24, align 8
  br label %137

137:                                              ; preds = %135, %115
  %138 = load i8*, i8** %5, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 0
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 45
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = load i8*, i8** %5, align 8
  br label %146

145:                                              ; preds = %137
  br label %146

146:                                              ; preds = %145, %143
  %147 = phi i8* [ %144, %143 ], [ %41, %145 ]
  %148 = call i32 @force_set_env(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i8* %147)
  %149 = load i8*, i8** %24, align 8
  %150 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0), i8* %149)
  %151 = load i8*, i8** %24, align 8
  %152 = call i64 (i8**, i8*, i8*, ...) @asprintf(i8** %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8* %151)
  %153 = icmp slt i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %146
  br label %204

155:                                              ; preds = %146
  %156 = load i8*, i8** %27, align 8
  %157 = call i32 @read_from_pipe(i8* %156, i8** %28, i64* null)
  store i32 %157, i32* %10, align 4
  %158 = load i32, i32* %10, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  br label %204

161:                                              ; preds = %155
  %162 = load i8*, i8** %28, align 8
  %163 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0), i8* %162)
  %164 = load i8*, i8** %24, align 8
  %165 = call i32 @read_from_pipe(i8* %164, i8** %9, i64* %8)
  store i32 %165, i32* %10, align 4
  %166 = load i32, i32* %10, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %161
  %169 = load i8*, i8** %5, align 8
  %170 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i8* %169)
  %171 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0))
  %172 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.24, i64 0, i64 0))
  %173 = load i8*, i8** %5, align 8
  %174 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i64 0, i64 0), i8* %173)
  %175 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.26, i64 0, i64 0))
  br label %204

176:                                              ; preds = %161
  %177 = load i8*, i8** %27, align 8
  %178 = call i32 @free(i8* %177)
  %179 = load i8*, i8** %28, align 8
  %180 = call i32 @free(i8* %179)
  %181 = load i8*, i8** %21, align 8
  %182 = call i32 @free(i8* %181)
  %183 = load i8*, i8** %22, align 8
  %184 = call i32 @free(i8* %183)
  %185 = load i8*, i8** %23, align 8
  %186 = call i32 @free(i8* %185)
  %187 = load i8*, i8** %29, align 8
  %188 = call i32 @free(i8* %187)
  %189 = load i8**, i8*** %6, align 8
  %190 = icmp ne i8** %189, null
  br i1 %190, label %194, label %191

191:                                              ; preds = %176
  %192 = load i8*, i8** %9, align 8
  %193 = call i32 @free(i8* %192)
  br label %197

194:                                              ; preds = %176
  %195 = load i8*, i8** %9, align 8
  %196 = load i8**, i8*** %6, align 8
  store i8* %195, i8** %196, align 8
  br label %197

197:                                              ; preds = %194, %191
  %198 = load i64*, i64** %7, align 8
  %199 = icmp ne i64* %198, null
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load i64, i64* %8, align 8
  %202 = load i64*, i64** %7, align 8
  store i64 %201, i64* %202, align 8
  br label %203

203:                                              ; preds = %200, %197
  store i32 0, i32* %4, align 4
  store i32 1, i32* %30, align 4
  br label %230

204:                                              ; preds = %168, %160, %154, %133, %125, %98
  %205 = load i8*, i8** %27, align 8
  %206 = call i32 @free(i8* %205)
  %207 = load i8*, i8** %21, align 8
  %208 = call i32 @free(i8* %207)
  %209 = load i8*, i8** %22, align 8
  %210 = call i32 @free(i8* %209)
  %211 = load i8*, i8** %9, align 8
  %212 = call i32 @free(i8* %211)
  %213 = load i8*, i8** %23, align 8
  %214 = call i32 @free(i8* %213)
  %215 = load i8*, i8** %29, align 8
  %216 = call i32 @free(i8* %215)
  %217 = load i8*, i8** %25, align 8
  %218 = call i32 @free(i8* %217)
  %219 = load i8**, i8*** %6, align 8
  %220 = icmp ne i8** %219, null
  br i1 %220, label %221, label %223

221:                                              ; preds = %204
  %222 = load i8**, i8*** %6, align 8
  store i8* null, i8** %222, align 8
  br label %223

223:                                              ; preds = %221, %204
  %224 = load i64*, i64** %7, align 8
  %225 = icmp ne i64* %224, null
  br i1 %225, label %226, label %228

226:                                              ; preds = %223
  %227 = load i64*, i64** %7, align 8
  store i64 0, i64* %227, align 8
  br label %228

228:                                              ; preds = %226, %223
  %229 = load i32, i32* %10, align 4
  store i32 %229, i32* %4, align 4
  store i32 1, i32* %30, align 4
  br label %230

230:                                              ; preds = %228, %203, %77, %58
  %231 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %231)
  %232 = load i32, i32* %4, align 4
  ret i32 %232
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @system_path(i32) #2

declare dso_local i32* @realpath(i8*, i8*) #2

declare dso_local i32 @pr_err(i8*, ...) #2

declare dso_local i32 @str_error_r(i32, i8*, i32) #2

declare dso_local i32 @search_program(i32, i8*, i8*) #2

declare dso_local i32 @version_notice(...) #2

declare dso_local i32 @llvm__get_kbuild_opts(i8**, i8**) #2

declare dso_local i32 @llvm__get_nr_cpus(...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i64 @fetch_kernel_version(i32*, i32*, i32) #2

declare dso_local i64 @asprintf(i8**, i8*, i8*, ...) #2

declare dso_local i32 @force_set_env(i8*, i8*) #2

declare dso_local i32 @pr_debug(i8*, i8*) #2

declare dso_local i32 @read_from_pipe(i8*, i8**, i64*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
