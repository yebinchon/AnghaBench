; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_exec.c___do_execve_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_exec.c___do_execve_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.filename = type { i8* }
%struct.file = type { i8* }
%struct.user_arg_ptr = type { i32 }
%struct.linux_binprm = type { i8*, i8*, i64, %struct.filename*, i32, i32, i32, i32, i32 }
%struct.files_struct = type { i32 }
%struct.TYPE_11__ = type { i32 }

@current = common dso_local global %struct.TYPE_10__* null, align 8
@PF_NPROC_EXCEEDED = common dso_local global i32 0, align 4
@RLIMIT_NPROC = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@AT_FDCWD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"/dev/fd/%d\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"/dev/fd/%d/%s\00", align 1
@BINPRM_FLAGS_PATH_INACCESSIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.filename*, i32, i32, i32, %struct.file*)* @__do_execve_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__do_execve_file(i32 %0, %struct.filename* %1, i32 %2, i32 %3, i32 %4, %struct.file* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.user_arg_ptr, align 4
  %9 = alloca %struct.user_arg_ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.filename*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.file*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.linux_binprm*, align 8
  %16 = alloca %struct.files_struct*, align 8
  %17 = alloca i32, align 4
  %18 = getelementptr inbounds %struct.user_arg_ptr, %struct.user_arg_ptr* %8, i32 0, i32 0
  store i32 %2, i32* %18, align 4
  %19 = getelementptr inbounds %struct.user_arg_ptr, %struct.user_arg_ptr* %9, i32 0, i32 0
  store i32 %3, i32* %19, align 4
  store i32 %0, i32* %10, align 4
  store %struct.filename* %1, %struct.filename** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.file* %5, %struct.file** %13, align 8
  store i8* null, i8** %14, align 8
  %20 = load %struct.filename*, %struct.filename** %11, align 8
  %21 = call i64 @IS_ERR(%struct.filename* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load %struct.filename*, %struct.filename** %11, align 8
  %25 = call i32 @PTR_ERR(%struct.filename* %24)
  store i32 %25, i32* %7, align 4
  br label %308

26:                                               ; preds = %6
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @PF_NPROC_EXCEEDED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = call %struct.TYPE_11__* (...) @current_user()
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = call i64 @atomic_read(i32* %35)
  %37 = load i32, i32* @RLIMIT_NPROC, align 4
  %38 = call i64 @rlimit(i32 %37)
  %39 = icmp sgt i64 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @EAGAIN, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %17, align 4
  br label %300

43:                                               ; preds = %33, %26
  %44 = load i32, i32* @PF_NPROC_EXCEEDED, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = call i32 @unshare_files(%struct.files_struct** %16)
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %17, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %300

54:                                               ; preds = %43
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.linux_binprm* @kzalloc(i32 56, i32 %57)
  store %struct.linux_binprm* %58, %struct.linux_binprm** %15, align 8
  %59 = load %struct.linux_binprm*, %struct.linux_binprm** %15, align 8
  %60 = icmp ne %struct.linux_binprm* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  br label %293

62:                                               ; preds = %54
  %63 = load %struct.linux_binprm*, %struct.linux_binprm** %15, align 8
  %64 = call i32 @prepare_bprm_creds(%struct.linux_binprm* %63)
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %17, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %288

68:                                               ; preds = %62
  %69 = load %struct.linux_binprm*, %struct.linux_binprm** %15, align 8
  %70 = call i32 @check_unsafe_exec(%struct.linux_binprm* %69)
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  store i32 1, i32* %72, align 4
  %73 = load %struct.file*, %struct.file** %13, align 8
  %74 = icmp ne %struct.file* %73, null
  br i1 %74, label %81, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.filename*, %struct.filename** %11, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call %struct.filename* @do_open_execat(i32 %76, %struct.filename* %77, i32 %78)
  %80 = bitcast %struct.filename* %79 to %struct.file*
  store %struct.file* %80, %struct.file** %13, align 8
  br label %81

81:                                               ; preds = %75, %68
  %82 = load %struct.file*, %struct.file** %13, align 8
  %83 = bitcast %struct.file* %82 to %struct.filename*
  %84 = call i32 @PTR_ERR(%struct.filename* %83)
  store i32 %84, i32* %17, align 4
  %85 = load %struct.file*, %struct.file** %13, align 8
  %86 = bitcast %struct.file* %85 to %struct.filename*
  %87 = call i64 @IS_ERR(%struct.filename* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %281

90:                                               ; preds = %81
  %91 = call i32 (...) @sched_exec()
  %92 = load %struct.file*, %struct.file** %13, align 8
  %93 = bitcast %struct.file* %92 to %struct.filename*
  %94 = load %struct.linux_binprm*, %struct.linux_binprm** %15, align 8
  %95 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %94, i32 0, i32 3
  store %struct.filename* %93, %struct.filename** %95, align 8
  %96 = load %struct.filename*, %struct.filename** %11, align 8
  %97 = icmp ne %struct.filename* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %90
  %99 = load %struct.linux_binprm*, %struct.linux_binprm** %15, align 8
  %100 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %99, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %100, align 8
  br label %165

101:                                              ; preds = %90
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @AT_FDCWD, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %113, label %105

105:                                              ; preds = %101
  %106 = load %struct.filename*, %struct.filename** %11, align 8
  %107 = getelementptr inbounds %struct.filename, %struct.filename* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 47
  br i1 %112, label %113, label %119

113:                                              ; preds = %105, %101
  %114 = load %struct.filename*, %struct.filename** %11, align 8
  %115 = getelementptr inbounds %struct.filename, %struct.filename* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.linux_binprm*, %struct.linux_binprm** %15, align 8
  %118 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  br label %164

119:                                              ; preds = %105
  %120 = load %struct.filename*, %struct.filename** %11, align 8
  %121 = getelementptr inbounds %struct.filename, %struct.filename* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 0
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %119
  %128 = load i32, i32* @GFP_KERNEL, align 4
  %129 = load i32, i32* %10, align 4
  %130 = call i8* (i32, i8*, i32, ...) @kasprintf(i32 %128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %129)
  store i8* %130, i8** %14, align 8
  br label %138

131:                                              ; preds = %119
  %132 = load i32, i32* @GFP_KERNEL, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load %struct.filename*, %struct.filename** %11, align 8
  %135 = getelementptr inbounds %struct.filename, %struct.filename* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = call i8* (i32, i8*, i32, ...) @kasprintf(i32 %132, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %133, i8* %136)
  store i8* %137, i8** %14, align 8
  br label %138

138:                                              ; preds = %131, %127
  %139 = load i8*, i8** %14, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %144, label %141

141:                                              ; preds = %138
  %142 = load i32, i32* @ENOMEM, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %17, align 4
  br label %281

144:                                              ; preds = %138
  %145 = load i32, i32* %10, align 4
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 3
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @rcu_dereference_raw(i32 %150)
  %152 = call i64 @close_on_exec(i32 %145, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %144
  %155 = load i32, i32* @BINPRM_FLAGS_PATH_INACCESSIBLE, align 4
  %156 = load %struct.linux_binprm*, %struct.linux_binprm** %15, align 8
  %157 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %156, i32 0, i32 8
  %158 = load i32, i32* %157, align 8
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 8
  br label %160

160:                                              ; preds = %154, %144
  %161 = load i8*, i8** %14, align 8
  %162 = load %struct.linux_binprm*, %struct.linux_binprm** %15, align 8
  %163 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %162, i32 0, i32 0
  store i8* %161, i8** %163, align 8
  br label %164

164:                                              ; preds = %160, %113
  br label %165

165:                                              ; preds = %164, %98
  %166 = load %struct.linux_binprm*, %struct.linux_binprm** %15, align 8
  %167 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = load %struct.linux_binprm*, %struct.linux_binprm** %15, align 8
  %170 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %169, i32 0, i32 1
  store i8* %168, i8** %170, align 8
  %171 = load %struct.linux_binprm*, %struct.linux_binprm** %15, align 8
  %172 = call i32 @bprm_mm_init(%struct.linux_binprm* %171)
  store i32 %172, i32* %17, align 4
  %173 = load i32, i32* %17, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %165
  br label %281

176:                                              ; preds = %165
  %177 = load %struct.linux_binprm*, %struct.linux_binprm** %15, align 8
  %178 = getelementptr inbounds %struct.user_arg_ptr, %struct.user_arg_ptr* %8, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = getelementptr inbounds %struct.user_arg_ptr, %struct.user_arg_ptr* %9, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @prepare_arg_pages(%struct.linux_binprm* %177, i32 %179, i32 %181)
  store i32 %182, i32* %17, align 4
  %183 = load i32, i32* %17, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %176
  br label %268

186:                                              ; preds = %176
  %187 = load %struct.linux_binprm*, %struct.linux_binprm** %15, align 8
  %188 = call i32 @prepare_binprm(%struct.linux_binprm* %187)
  store i32 %188, i32* %17, align 4
  %189 = load i32, i32* %17, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %186
  br label %268

192:                                              ; preds = %186
  %193 = load %struct.linux_binprm*, %struct.linux_binprm** %15, align 8
  %194 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %193, i32 0, i32 0
  %195 = load %struct.linux_binprm*, %struct.linux_binprm** %15, align 8
  %196 = call i32 @copy_strings_kernel(i32 1, i8** %194, %struct.linux_binprm* %195)
  store i32 %196, i32* %17, align 4
  %197 = load i32, i32* %17, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %192
  br label %268

200:                                              ; preds = %192
  %201 = load %struct.linux_binprm*, %struct.linux_binprm** %15, align 8
  %202 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %201, i32 0, i32 6
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.linux_binprm*, %struct.linux_binprm** %15, align 8
  %205 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %204, i32 0, i32 7
  store i32 %203, i32* %205, align 4
  %206 = load %struct.linux_binprm*, %struct.linux_binprm** %15, align 8
  %207 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.linux_binprm*, %struct.linux_binprm** %15, align 8
  %210 = getelementptr inbounds %struct.user_arg_ptr, %struct.user_arg_ptr* %9, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @copy_strings(i32 %208, i32 %211, %struct.linux_binprm* %209)
  store i32 %212, i32* %17, align 4
  %213 = load i32, i32* %17, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %200
  br label %268

216:                                              ; preds = %200
  %217 = load %struct.linux_binprm*, %struct.linux_binprm** %15, align 8
  %218 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.linux_binprm*, %struct.linux_binprm** %15, align 8
  %221 = getelementptr inbounds %struct.user_arg_ptr, %struct.user_arg_ptr* %8, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @copy_strings(i32 %219, i32 %222, %struct.linux_binprm* %220)
  store i32 %223, i32* %17, align 4
  %224 = load i32, i32* %17, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %216
  br label %268

227:                                              ; preds = %216
  %228 = load %struct.linux_binprm*, %struct.linux_binprm** %15, align 8
  %229 = load %struct.linux_binprm*, %struct.linux_binprm** %15, align 8
  %230 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %229, i32 0, i32 3
  %231 = load %struct.filename*, %struct.filename** %230, align 8
  %232 = call i32 @would_dump(%struct.linux_binprm* %228, %struct.filename* %231)
  %233 = load %struct.linux_binprm*, %struct.linux_binprm** %15, align 8
  %234 = call i32 @exec_binprm(%struct.linux_binprm* %233)
  store i32 %234, i32* %17, align 4
  %235 = load i32, i32* %17, align 4
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %227
  br label %268

238:                                              ; preds = %227
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 2
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 0
  store i64 0, i64* %242, align 8
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 1
  store i32 0, i32* %244, align 4
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %246 = call i32 @rseq_execve(%struct.TYPE_10__* %245)
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %248 = call i32 @acct_update_integrals(%struct.TYPE_10__* %247)
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %250 = call i32 @task_numa_free(%struct.TYPE_10__* %249, i32 0)
  %251 = load %struct.linux_binprm*, %struct.linux_binprm** %15, align 8
  %252 = call i32 @free_bprm(%struct.linux_binprm* %251)
  %253 = load i8*, i8** %14, align 8
  %254 = call i32 @kfree(i8* %253)
  %255 = load %struct.filename*, %struct.filename** %11, align 8
  %256 = icmp ne %struct.filename* %255, null
  br i1 %256, label %257, label %260

257:                                              ; preds = %238
  %258 = load %struct.filename*, %struct.filename** %11, align 8
  %259 = call i32 @putname(%struct.filename* %258)
  br label %260

260:                                              ; preds = %257, %238
  %261 = load %struct.files_struct*, %struct.files_struct** %16, align 8
  %262 = icmp ne %struct.files_struct* %261, null
  br i1 %262, label %263, label %266

263:                                              ; preds = %260
  %264 = load %struct.files_struct*, %struct.files_struct** %16, align 8
  %265 = call i32 @put_files_struct(%struct.files_struct* %264)
  br label %266

266:                                              ; preds = %263, %260
  %267 = load i32, i32* %17, align 4
  store i32 %267, i32* %7, align 4
  br label %308

268:                                              ; preds = %237, %226, %215, %199, %191, %185
  %269 = load %struct.linux_binprm*, %struct.linux_binprm** %15, align 8
  %270 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %269, i32 0, i32 2
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %280

273:                                              ; preds = %268
  %274 = load %struct.linux_binprm*, %struct.linux_binprm** %15, align 8
  %275 = call i32 @acct_arg_size(%struct.linux_binprm* %274, i32 0)
  %276 = load %struct.linux_binprm*, %struct.linux_binprm** %15, align 8
  %277 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %276, i32 0, i32 2
  %278 = load i64, i64* %277, align 8
  %279 = call i32 @mmput(i64 %278)
  br label %280

280:                                              ; preds = %273, %268
  br label %281

281:                                              ; preds = %280, %175, %141, %89
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 2
  %284 = load %struct.TYPE_9__*, %struct.TYPE_9__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 0
  store i64 0, i64* %285, align 8
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 1
  store i32 0, i32* %287, align 4
  br label %288

288:                                              ; preds = %281, %67
  %289 = load %struct.linux_binprm*, %struct.linux_binprm** %15, align 8
  %290 = call i32 @free_bprm(%struct.linux_binprm* %289)
  %291 = load i8*, i8** %14, align 8
  %292 = call i32 @kfree(i8* %291)
  br label %293

293:                                              ; preds = %288, %61
  %294 = load %struct.files_struct*, %struct.files_struct** %16, align 8
  %295 = icmp ne %struct.files_struct* %294, null
  br i1 %295, label %296, label %299

296:                                              ; preds = %293
  %297 = load %struct.files_struct*, %struct.files_struct** %16, align 8
  %298 = call i32 @reset_files_struct(%struct.files_struct* %297)
  br label %299

299:                                              ; preds = %296, %293
  br label %300

300:                                              ; preds = %299, %53, %40
  %301 = load %struct.filename*, %struct.filename** %11, align 8
  %302 = icmp ne %struct.filename* %301, null
  br i1 %302, label %303, label %306

303:                                              ; preds = %300
  %304 = load %struct.filename*, %struct.filename** %11, align 8
  %305 = call i32 @putname(%struct.filename* %304)
  br label %306

306:                                              ; preds = %303, %300
  %307 = load i32, i32* %17, align 4
  store i32 %307, i32* %7, align 4
  br label %308

308:                                              ; preds = %306, %266, %23
  %309 = load i32, i32* %7, align 4
  ret i32 %309
}

declare dso_local i64 @IS_ERR(%struct.filename*) #1

declare dso_local i32 @PTR_ERR(%struct.filename*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.TYPE_11__* @current_user(...) #1

declare dso_local i64 @rlimit(i32) #1

declare dso_local i32 @unshare_files(%struct.files_struct**) #1

declare dso_local %struct.linux_binprm* @kzalloc(i32, i32) #1

declare dso_local i32 @prepare_bprm_creds(%struct.linux_binprm*) #1

declare dso_local i32 @check_unsafe_exec(%struct.linux_binprm*) #1

declare dso_local %struct.filename* @do_open_execat(i32, %struct.filename*, i32) #1

declare dso_local i32 @sched_exec(...) #1

declare dso_local i8* @kasprintf(i32, i8*, i32, ...) #1

declare dso_local i64 @close_on_exec(i32, i32) #1

declare dso_local i32 @rcu_dereference_raw(i32) #1

declare dso_local i32 @bprm_mm_init(%struct.linux_binprm*) #1

declare dso_local i32 @prepare_arg_pages(%struct.linux_binprm*, i32, i32) #1

declare dso_local i32 @prepare_binprm(%struct.linux_binprm*) #1

declare dso_local i32 @copy_strings_kernel(i32, i8**, %struct.linux_binprm*) #1

declare dso_local i32 @copy_strings(i32, i32, %struct.linux_binprm*) #1

declare dso_local i32 @would_dump(%struct.linux_binprm*, %struct.filename*) #1

declare dso_local i32 @exec_binprm(%struct.linux_binprm*) #1

declare dso_local i32 @rseq_execve(%struct.TYPE_10__*) #1

declare dso_local i32 @acct_update_integrals(%struct.TYPE_10__*) #1

declare dso_local i32 @task_numa_free(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @free_bprm(%struct.linux_binprm*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @putname(%struct.filename*) #1

declare dso_local i32 @put_files_struct(%struct.files_struct*) #1

declare dso_local i32 @acct_arg_size(%struct.linux_binprm*, i32) #1

declare dso_local i32 @mmput(i64) #1

declare dso_local i32 @reset_files_struct(%struct.files_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
