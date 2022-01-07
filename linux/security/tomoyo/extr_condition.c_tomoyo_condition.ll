; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_condition.c_tomoyo_condition.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_condition.c_tomoyo_condition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_request_info = type { %struct.tomoyo_execve*, %struct.tomoyo_obj_info* }
%struct.tomoyo_execve = type { %struct.linux_binprm* }
%struct.linux_binprm = type { i64, i64, %struct.file* }
%struct.file = type { i32 }
%struct.tomoyo_obj_info = type { i32, %struct.tomoyo_mini_stat*, i32*, %struct.tomoyo_path_info* }
%struct.tomoyo_mini_stat = type { i64, i64, i32, i32, i32, i32 }
%struct.tomoyo_path_info = type { i32 }
%struct.tomoyo_condition = type { i32, i32, i32, i32, i32 }
%struct.tomoyo_condition_element = type { i32, i32, i32 }
%struct.tomoyo_number_union = type { i64*, i64 }
%struct.tomoyo_name_union = type { i32 }
%struct.tomoyo_argv = type { i32 }
%struct.tomoyo_envp = type { i32 }

@TOMOYO_ARGV_ENTRY = common dso_local global i32 0, align 4
@TOMOYO_ENVP_ENTRY = common dso_local global i32 0, align 4
@TOMOYO_NAME_UNION = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@S_IFSOCK = common dso_local global i64 0, align 8
@S_IFLNK = common dso_local global i64 0, align 8
@S_IFREG = common dso_local global i64 0, align 8
@S_IFBLK = common dso_local global i64 0, align 8
@S_IFDIR = common dso_local global i64 0, align 8
@S_IFCHR = common dso_local global i64 0, align 8
@S_IFIFO = common dso_local global i64 0, align 8
@S_ISUID = common dso_local global i64 0, align 8
@S_ISGID = common dso_local global i64 0, align 8
@S_ISVTX = common dso_local global i64 0, align 8
@TOMOYO_PATH1 = common dso_local global i32 0, align 4
@TOMOYO_PATH2 = common dso_local global i32 0, align 4
@TOMOYO_PATH1_PARENT = common dso_local global i32 0, align 4
@TOMOYO_PATH2_PARENT = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i64 0, align 8
@S_IALLUGO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tomoyo_condition(%struct.tomoyo_request_info* %0, %struct.tomoyo_condition* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tomoyo_request_info*, align 8
  %5 = alloca %struct.tomoyo_condition*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i64], align 16
  %8 = alloca [2 x i64], align 16
  %9 = alloca %struct.tomoyo_condition_element*, align 8
  %10 = alloca %struct.tomoyo_number_union*, align 8
  %11 = alloca %struct.tomoyo_name_union*, align 8
  %12 = alloca %struct.tomoyo_argv*, align 8
  %13 = alloca %struct.tomoyo_envp*, align 8
  %14 = alloca %struct.tomoyo_obj_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.linux_binprm*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [2 x i32], align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.tomoyo_name_union*, align 8
  %25 = alloca %struct.tomoyo_path_info*, align 8
  %26 = alloca %struct.tomoyo_execve*, align 8
  %27 = alloca %struct.file*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.tomoyo_mini_stat*, align 8
  %32 = alloca %struct.tomoyo_number_union*, align 8
  %33 = alloca %struct.tomoyo_number_union*, align 8
  store %struct.tomoyo_request_info* %0, %struct.tomoyo_request_info** %4, align 8
  store %struct.tomoyo_condition* %1, %struct.tomoyo_condition** %5, align 8
  %34 = bitcast [2 x i64]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %34, i8 0, i64 16, i1 false)
  %35 = bitcast [2 x i64]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %35, i8 0, i64 16, i1 false)
  store %struct.linux_binprm* null, %struct.linux_binprm** %18, align 8
  %36 = load %struct.tomoyo_condition*, %struct.tomoyo_condition** %5, align 8
  %37 = icmp ne %struct.tomoyo_condition* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %543

39:                                               ; preds = %2
  %40 = load %struct.tomoyo_condition*, %struct.tomoyo_condition** %5, align 8
  %41 = getelementptr inbounds %struct.tomoyo_condition, %struct.tomoyo_condition* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %15, align 4
  %43 = load %struct.tomoyo_condition*, %struct.tomoyo_condition** %5, align 8
  %44 = getelementptr inbounds %struct.tomoyo_condition, %struct.tomoyo_condition* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %16, align 4
  %46 = load %struct.tomoyo_condition*, %struct.tomoyo_condition** %5, align 8
  %47 = getelementptr inbounds %struct.tomoyo_condition, %struct.tomoyo_condition* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %17, align 4
  %49 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %4, align 8
  %50 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %49, i32 0, i32 1
  %51 = load %struct.tomoyo_obj_info*, %struct.tomoyo_obj_info** %50, align 8
  store %struct.tomoyo_obj_info* %51, %struct.tomoyo_obj_info** %14, align 8
  %52 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %4, align 8
  %53 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %52, i32 0, i32 0
  %54 = load %struct.tomoyo_execve*, %struct.tomoyo_execve** %53, align 8
  %55 = icmp ne %struct.tomoyo_execve* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %39
  %57 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %4, align 8
  %58 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %57, i32 0, i32 0
  %59 = load %struct.tomoyo_execve*, %struct.tomoyo_execve** %58, align 8
  %60 = getelementptr inbounds %struct.tomoyo_execve, %struct.tomoyo_execve* %59, i32 0, i32 0
  %61 = load %struct.linux_binprm*, %struct.linux_binprm** %60, align 8
  store %struct.linux_binprm* %61, %struct.linux_binprm** %18, align 8
  br label %62

62:                                               ; preds = %56, %39
  %63 = load %struct.linux_binprm*, %struct.linux_binprm** %18, align 8
  %64 = icmp ne %struct.linux_binprm* %63, null
  br i1 %64, label %72, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %16, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %17, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68, %65
  store i32 0, i32* %3, align 4
  br label %543

72:                                               ; preds = %68, %62
  %73 = load %struct.tomoyo_condition*, %struct.tomoyo_condition** %5, align 8
  %74 = getelementptr inbounds %struct.tomoyo_condition, %struct.tomoyo_condition* %73, i64 1
  %75 = bitcast %struct.tomoyo_condition* %74 to %struct.tomoyo_condition_element*
  store %struct.tomoyo_condition_element* %75, %struct.tomoyo_condition_element** %9, align 8
  %76 = load %struct.tomoyo_condition_element*, %struct.tomoyo_condition_element** %9, align 8
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.tomoyo_condition_element, %struct.tomoyo_condition_element* %76, i64 %78
  %80 = bitcast %struct.tomoyo_condition_element* %79 to %struct.tomoyo_number_union*
  store %struct.tomoyo_number_union* %80, %struct.tomoyo_number_union** %10, align 8
  %81 = load %struct.tomoyo_number_union*, %struct.tomoyo_number_union** %10, align 8
  %82 = load %struct.tomoyo_condition*, %struct.tomoyo_condition** %5, align 8
  %83 = getelementptr inbounds %struct.tomoyo_condition, %struct.tomoyo_condition* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.tomoyo_number_union, %struct.tomoyo_number_union* %81, i64 %85
  %87 = bitcast %struct.tomoyo_number_union* %86 to %struct.tomoyo_name_union*
  store %struct.tomoyo_name_union* %87, %struct.tomoyo_name_union** %11, align 8
  %88 = load %struct.tomoyo_name_union*, %struct.tomoyo_name_union** %11, align 8
  %89 = load %struct.tomoyo_condition*, %struct.tomoyo_condition** %5, align 8
  %90 = getelementptr inbounds %struct.tomoyo_condition, %struct.tomoyo_condition* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.tomoyo_name_union, %struct.tomoyo_name_union* %88, i64 %92
  %94 = bitcast %struct.tomoyo_name_union* %93 to %struct.tomoyo_argv*
  store %struct.tomoyo_argv* %94, %struct.tomoyo_argv** %12, align 8
  %95 = load %struct.tomoyo_argv*, %struct.tomoyo_argv** %12, align 8
  %96 = load i32, i32* %16, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.tomoyo_argv, %struct.tomoyo_argv* %95, i64 %97
  %99 = bitcast %struct.tomoyo_argv* %98 to %struct.tomoyo_envp*
  store %struct.tomoyo_envp* %99, %struct.tomoyo_envp** %13, align 8
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %519, %72
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %522

104:                                              ; preds = %100
  %105 = load %struct.tomoyo_condition_element*, %struct.tomoyo_condition_element** %9, align 8
  %106 = getelementptr inbounds %struct.tomoyo_condition_element, %struct.tomoyo_condition_element* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %19, align 4
  %108 = load %struct.tomoyo_condition_element*, %struct.tomoyo_condition_element** %9, align 8
  %109 = getelementptr inbounds %struct.tomoyo_condition_element, %struct.tomoyo_condition_element* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %20, align 4
  %111 = load %struct.tomoyo_condition_element*, %struct.tomoyo_condition_element** %9, align 8
  %112 = getelementptr inbounds %struct.tomoyo_condition_element, %struct.tomoyo_condition_element* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %21, align 4
  %114 = bitcast [2 x i32]* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %114, i8 0, i64 8, i1 false)
  %115 = load %struct.tomoyo_condition_element*, %struct.tomoyo_condition_element** %9, align 8
  %116 = getelementptr inbounds %struct.tomoyo_condition_element, %struct.tomoyo_condition_element* %115, i32 1
  store %struct.tomoyo_condition_element* %116, %struct.tomoyo_condition_element** %9, align 8
  %117 = load i32, i32* %20, align 4
  %118 = load i32, i32* @TOMOYO_ARGV_ENTRY, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %124, label %120

120:                                              ; preds = %104
  %121 = load i32, i32* %20, align 4
  %122 = load i32, i32* @TOMOYO_ENVP_ENTRY, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120, %104
  br label %519

125:                                              ; preds = %120
  %126 = load i32, i32* %21, align 4
  %127 = load i32, i32* @TOMOYO_NAME_UNION, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %179

129:                                              ; preds = %125
  %130 = load %struct.tomoyo_name_union*, %struct.tomoyo_name_union** %11, align 8
  %131 = getelementptr inbounds %struct.tomoyo_name_union, %struct.tomoyo_name_union* %130, i32 1
  store %struct.tomoyo_name_union* %131, %struct.tomoyo_name_union** %11, align 8
  store %struct.tomoyo_name_union* %130, %struct.tomoyo_name_union** %24, align 8
  %132 = load i32, i32* %20, align 4
  switch i32 %132, label %178 [
    i32 145, label %133
    i32 185, label %156
  ]

133:                                              ; preds = %129
  %134 = load %struct.tomoyo_obj_info*, %struct.tomoyo_obj_info** %14, align 8
  %135 = icmp ne %struct.tomoyo_obj_info* %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load %struct.tomoyo_obj_info*, %struct.tomoyo_obj_info** %14, align 8
  %138 = getelementptr inbounds %struct.tomoyo_obj_info, %struct.tomoyo_obj_info* %137, i32 0, i32 3
  %139 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %138, align 8
  br label %141

140:                                              ; preds = %133
  br label %141

141:                                              ; preds = %140, %136
  %142 = phi %struct.tomoyo_path_info* [ %139, %136 ], [ null, %140 ]
  store %struct.tomoyo_path_info* %142, %struct.tomoyo_path_info** %25, align 8
  %143 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %25, align 8
  %144 = icmp ne %struct.tomoyo_path_info* %143, null
  br i1 %144, label %145, label %154

145:                                              ; preds = %141
  %146 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %25, align 8
  %147 = load %struct.tomoyo_name_union*, %struct.tomoyo_name_union** %24, align 8
  %148 = call i32 @tomoyo_compare_name_union(%struct.tomoyo_path_info* %146, %struct.tomoyo_name_union* %147)
  %149 = icmp ne i32 %148, 0
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = load i32, i32* %19, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %145, %141
  br label %518

155:                                              ; preds = %145
  br label %178

156:                                              ; preds = %129
  %157 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %4, align 8
  %158 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %157, i32 0, i32 0
  %159 = load %struct.tomoyo_execve*, %struct.tomoyo_execve** %158, align 8
  store %struct.tomoyo_execve* %159, %struct.tomoyo_execve** %26, align 8
  %160 = load %struct.tomoyo_execve*, %struct.tomoyo_execve** %26, align 8
  %161 = icmp ne %struct.tomoyo_execve* %160, null
  br i1 %161, label %162, label %168

162:                                              ; preds = %156
  %163 = load %struct.tomoyo_execve*, %struct.tomoyo_execve** %26, align 8
  %164 = getelementptr inbounds %struct.tomoyo_execve, %struct.tomoyo_execve* %163, i32 0, i32 0
  %165 = load %struct.linux_binprm*, %struct.linux_binprm** %164, align 8
  %166 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %165, i32 0, i32 2
  %167 = load %struct.file*, %struct.file** %166, align 8
  br label %169

168:                                              ; preds = %156
  br label %169

169:                                              ; preds = %168, %162
  %170 = phi %struct.file* [ %167, %162 ], [ null, %168 ]
  store %struct.file* %170, %struct.file** %27, align 8
  %171 = load %struct.file*, %struct.file** %27, align 8
  %172 = load %struct.tomoyo_name_union*, %struct.tomoyo_name_union** %24, align 8
  %173 = load i32, i32* %19, align 4
  %174 = call i32 @tomoyo_scan_exec_realpath(%struct.file* %171, %struct.tomoyo_name_union* %172, i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %169
  br label %518

177:                                              ; preds = %169
  br label %178

178:                                              ; preds = %129, %177, %155
  br label %519

179:                                              ; preds = %125
  store i32 0, i32* %23, align 4
  br label %180

180:                                              ; preds = %372, %179
  %181 = load i32, i32* %23, align 4
  %182 = icmp slt i32 %181, 2
  br i1 %182, label %183, label %375

183:                                              ; preds = %180
  %184 = load i32, i32* %23, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %183
  %187 = load i32, i32* %21, align 4
  br label %190

188:                                              ; preds = %183
  %189 = load i32, i32* %20, align 4
  br label %190

190:                                              ; preds = %188, %186
  %191 = phi i32 [ %187, %186 ], [ %189, %188 ]
  store i32 %191, i32* %28, align 4
  store i64 0, i64* %29, align 8
  %192 = load i32, i32* %28, align 4
  switch i32 %192, label %267 [
    i32 135, label %193
    i32 143, label %196
    i32 136, label %199
    i32 141, label %202
    i32 140, label %205
    i32 144, label %208
    i32 137, label %211
    i32 142, label %214
    i32 139, label %217
    i32 138, label %219
    i32 129, label %221
    i32 128, label %223
    i32 130, label %225
    i32 134, label %227
    i32 132, label %229
    i32 133, label %231
    i32 131, label %233
    i32 174, label %235
    i32 175, label %237
    i32 173, label %239
    i32 177, label %241
    i32 176, label %242
    i32 178, label %243
    i32 183, label %244
    i32 182, label %245
    i32 184, label %246
    i32 180, label %247
    i32 179, label %248
    i32 181, label %249
    i32 187, label %250
    i32 186, label %258
    i32 172, label %266
  ]

193:                                              ; preds = %190
  %194 = call i32 (...) @current_uid()
  %195 = call i64 @from_kuid(i32* @init_user_ns, i32 %194)
  store i64 %195, i64* %29, align 8
  br label %357

196:                                              ; preds = %190
  %197 = call i32 (...) @current_euid()
  %198 = call i64 @from_kuid(i32* @init_user_ns, i32 %197)
  store i64 %198, i64* %29, align 8
  br label %357

199:                                              ; preds = %190
  %200 = call i32 (...) @current_suid()
  %201 = call i64 @from_kuid(i32* @init_user_ns, i32 %200)
  store i64 %201, i64* %29, align 8
  br label %357

202:                                              ; preds = %190
  %203 = call i32 (...) @current_fsuid()
  %204 = call i64 @from_kuid(i32* @init_user_ns, i32 %203)
  store i64 %204, i64* %29, align 8
  br label %357

205:                                              ; preds = %190
  %206 = call i32 (...) @current_gid()
  %207 = call i64 @from_kgid(i32* @init_user_ns, i32 %206)
  store i64 %207, i64* %29, align 8
  br label %357

208:                                              ; preds = %190
  %209 = call i32 (...) @current_egid()
  %210 = call i64 @from_kgid(i32* @init_user_ns, i32 %209)
  store i64 %210, i64* %29, align 8
  br label %357

211:                                              ; preds = %190
  %212 = call i32 (...) @current_sgid()
  %213 = call i64 @from_kgid(i32* @init_user_ns, i32 %212)
  store i64 %213, i64* %29, align 8
  br label %357

214:                                              ; preds = %190
  %215 = call i32 (...) @current_fsgid()
  %216 = call i64 @from_kgid(i32* @init_user_ns, i32 %215)
  store i64 %216, i64* %29, align 8
  br label %357

217:                                              ; preds = %190
  %218 = call i64 (...) @tomoyo_sys_getpid()
  store i64 %218, i64* %29, align 8
  br label %357

219:                                              ; preds = %190
  %220 = call i64 (...) @tomoyo_sys_getppid()
  store i64 %220, i64* %29, align 8
  br label %357

221:                                              ; preds = %190
  %222 = load i64, i64* @S_IFSOCK, align 8
  store i64 %222, i64* %29, align 8
  br label %357

223:                                              ; preds = %190
  %224 = load i64, i64* @S_IFLNK, align 8
  store i64 %224, i64* %29, align 8
  br label %357

225:                                              ; preds = %190
  %226 = load i64, i64* @S_IFREG, align 8
  store i64 %226, i64* %29, align 8
  br label %357

227:                                              ; preds = %190
  %228 = load i64, i64* @S_IFBLK, align 8
  store i64 %228, i64* %29, align 8
  br label %357

229:                                              ; preds = %190
  %230 = load i64, i64* @S_IFDIR, align 8
  store i64 %230, i64* %29, align 8
  br label %357

231:                                              ; preds = %190
  %232 = load i64, i64* @S_IFCHR, align 8
  store i64 %232, i64* %29, align 8
  br label %357

233:                                              ; preds = %190
  %234 = load i64, i64* @S_IFIFO, align 8
  store i64 %234, i64* %29, align 8
  br label %357

235:                                              ; preds = %190
  %236 = load i64, i64* @S_ISUID, align 8
  store i64 %236, i64* %29, align 8
  br label %357

237:                                              ; preds = %190
  %238 = load i64, i64* @S_ISGID, align 8
  store i64 %238, i64* %29, align 8
  br label %357

239:                                              ; preds = %190
  %240 = load i64, i64* @S_ISVTX, align 8
  store i64 %240, i64* %29, align 8
  br label %357

241:                                              ; preds = %190
  store i64 256, i64* %29, align 8
  br label %357

242:                                              ; preds = %190
  store i64 128, i64* %29, align 8
  br label %357

243:                                              ; preds = %190
  store i64 64, i64* %29, align 8
  br label %357

244:                                              ; preds = %190
  store i64 32, i64* %29, align 8
  br label %357

245:                                              ; preds = %190
  store i64 16, i64* %29, align 8
  br label %357

246:                                              ; preds = %190
  store i64 8, i64* %29, align 8
  br label %357

247:                                              ; preds = %190
  store i64 4, i64* %29, align 8
  br label %357

248:                                              ; preds = %190
  store i64 2, i64* %29, align 8
  br label %357

249:                                              ; preds = %190
  store i64 1, i64* %29, align 8
  br label %357

250:                                              ; preds = %190
  %251 = load %struct.linux_binprm*, %struct.linux_binprm** %18, align 8
  %252 = icmp ne %struct.linux_binprm* %251, null
  br i1 %252, label %254, label %253

253:                                              ; preds = %250
  br label %518

254:                                              ; preds = %250
  %255 = load %struct.linux_binprm*, %struct.linux_binprm** %18, align 8
  %256 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  store i64 %257, i64* %29, align 8
  br label %357

258:                                              ; preds = %190
  %259 = load %struct.linux_binprm*, %struct.linux_binprm** %18, align 8
  %260 = icmp ne %struct.linux_binprm* %259, null
  br i1 %260, label %262, label %261

261:                                              ; preds = %258
  br label %518

262:                                              ; preds = %258
  %263 = load %struct.linux_binprm*, %struct.linux_binprm** %18, align 8
  %264 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  store i64 %265, i64* %29, align 8
  br label %357

266:                                              ; preds = %190
  br label %357

267:                                              ; preds = %190
  %268 = load %struct.tomoyo_obj_info*, %struct.tomoyo_obj_info** %14, align 8
  %269 = icmp ne %struct.tomoyo_obj_info* %268, null
  br i1 %269, label %271, label %270

270:                                              ; preds = %267
  br label %518

271:                                              ; preds = %267
  %272 = load %struct.tomoyo_obj_info*, %struct.tomoyo_obj_info** %14, align 8
  %273 = getelementptr inbounds %struct.tomoyo_obj_info, %struct.tomoyo_obj_info* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %281, label %276

276:                                              ; preds = %271
  %277 = load %struct.tomoyo_obj_info*, %struct.tomoyo_obj_info** %14, align 8
  %278 = call i32 @tomoyo_get_attributes(%struct.tomoyo_obj_info* %277)
  %279 = load %struct.tomoyo_obj_info*, %struct.tomoyo_obj_info** %14, align 8
  %280 = getelementptr inbounds %struct.tomoyo_obj_info, %struct.tomoyo_obj_info* %279, i32 0, i32 0
  store i32 1, i32* %280, align 8
  br label %281

281:                                              ; preds = %276, %271
  %282 = load i32, i32* %28, align 4
  switch i32 %282, label %291 [
    i32 159, label %283
    i32 169, label %283
    i32 168, label %283
    i32 167, label %283
    i32 166, label %283
    i32 160, label %283
    i32 171, label %283
    i32 170, label %283
    i32 161, label %283
    i32 146, label %285
    i32 156, label %285
    i32 155, label %285
    i32 154, label %285
    i32 153, label %285
    i32 147, label %285
    i32 158, label %285
    i32 157, label %285
    i32 148, label %285
    i32 162, label %287
    i32 165, label %287
    i32 164, label %287
    i32 163, label %287
    i32 149, label %289
    i32 152, label %289
    i32 151, label %289
    i32 150, label %289
  ]

283:                                              ; preds = %281, %281, %281, %281, %281, %281, %281, %281, %281
  %284 = load i32, i32* @TOMOYO_PATH1, align 4
  store i32 %284, i32* %30, align 4
  br label %292

285:                                              ; preds = %281, %281, %281, %281, %281, %281, %281, %281, %281
  %286 = load i32, i32* @TOMOYO_PATH2, align 4
  store i32 %286, i32* %30, align 4
  br label %292

287:                                              ; preds = %281, %281, %281, %281
  %288 = load i32, i32* @TOMOYO_PATH1_PARENT, align 4
  store i32 %288, i32* %30, align 4
  br label %292

289:                                              ; preds = %281, %281, %281, %281
  %290 = load i32, i32* @TOMOYO_PATH2_PARENT, align 4
  store i32 %290, i32* %30, align 4
  br label %292

291:                                              ; preds = %281
  br label %518

292:                                              ; preds = %289, %287, %285, %283
  %293 = load %struct.tomoyo_obj_info*, %struct.tomoyo_obj_info** %14, align 8
  %294 = getelementptr inbounds %struct.tomoyo_obj_info, %struct.tomoyo_obj_info* %293, i32 0, i32 2
  %295 = load i32*, i32** %294, align 8
  %296 = load i32, i32* %30, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %302, label %301

301:                                              ; preds = %292
  br label %518

302:                                              ; preds = %292
  %303 = load %struct.tomoyo_obj_info*, %struct.tomoyo_obj_info** %14, align 8
  %304 = getelementptr inbounds %struct.tomoyo_obj_info, %struct.tomoyo_obj_info* %303, i32 0, i32 1
  %305 = load %struct.tomoyo_mini_stat*, %struct.tomoyo_mini_stat** %304, align 8
  %306 = load i32, i32* %30, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.tomoyo_mini_stat, %struct.tomoyo_mini_stat* %305, i64 %307
  store %struct.tomoyo_mini_stat* %308, %struct.tomoyo_mini_stat** %31, align 8
  %309 = load i32, i32* %28, align 4
  switch i32 %309, label %356 [
    i32 159, label %310
    i32 146, label %310
    i32 162, label %310
    i32 149, label %310
    i32 169, label %315
    i32 156, label %315
    i32 165, label %315
    i32 152, label %315
    i32 168, label %320
    i32 155, label %320
    i32 164, label %320
    i32 151, label %320
    i32 167, label %324
    i32 154, label %324
    i32 166, label %329
    i32 153, label %329
    i32 160, label %334
    i32 147, label %334
    i32 171, label %340
    i32 158, label %340
    i32 170, label %345
    i32 157, label %345
    i32 161, label %350
    i32 148, label %350
    i32 163, label %350
    i32 150, label %350
  ]

310:                                              ; preds = %302, %302, %302, %302
  %311 = load %struct.tomoyo_mini_stat*, %struct.tomoyo_mini_stat** %31, align 8
  %312 = getelementptr inbounds %struct.tomoyo_mini_stat, %struct.tomoyo_mini_stat* %311, i32 0, i32 5
  %313 = load i32, i32* %312, align 4
  %314 = call i64 @from_kuid(i32* @init_user_ns, i32 %313)
  store i64 %314, i64* %29, align 8
  br label %356

315:                                              ; preds = %302, %302, %302, %302
  %316 = load %struct.tomoyo_mini_stat*, %struct.tomoyo_mini_stat** %31, align 8
  %317 = getelementptr inbounds %struct.tomoyo_mini_stat, %struct.tomoyo_mini_stat* %316, i32 0, i32 4
  %318 = load i32, i32* %317, align 8
  %319 = call i64 @from_kgid(i32* @init_user_ns, i32 %318)
  store i64 %319, i64* %29, align 8
  br label %356

320:                                              ; preds = %302, %302, %302, %302
  %321 = load %struct.tomoyo_mini_stat*, %struct.tomoyo_mini_stat** %31, align 8
  %322 = getelementptr inbounds %struct.tomoyo_mini_stat, %struct.tomoyo_mini_stat* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  store i64 %323, i64* %29, align 8
  br label %356

324:                                              ; preds = %302, %302
  %325 = load %struct.tomoyo_mini_stat*, %struct.tomoyo_mini_stat** %31, align 8
  %326 = getelementptr inbounds %struct.tomoyo_mini_stat, %struct.tomoyo_mini_stat* %325, i32 0, i32 3
  %327 = load i32, i32* %326, align 4
  %328 = call i64 @MAJOR(i32 %327)
  store i64 %328, i64* %29, align 8
  br label %356

329:                                              ; preds = %302, %302
  %330 = load %struct.tomoyo_mini_stat*, %struct.tomoyo_mini_stat** %31, align 8
  %331 = getelementptr inbounds %struct.tomoyo_mini_stat, %struct.tomoyo_mini_stat* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 4
  %333 = call i64 @MINOR(i32 %332)
  store i64 %333, i64* %29, align 8
  br label %356

334:                                              ; preds = %302, %302
  %335 = load %struct.tomoyo_mini_stat*, %struct.tomoyo_mini_stat** %31, align 8
  %336 = getelementptr inbounds %struct.tomoyo_mini_stat, %struct.tomoyo_mini_stat* %335, i32 0, i32 1
  %337 = load i64, i64* %336, align 8
  %338 = load i64, i64* @S_IFMT, align 8
  %339 = and i64 %337, %338
  store i64 %339, i64* %29, align 8
  br label %356

340:                                              ; preds = %302, %302
  %341 = load %struct.tomoyo_mini_stat*, %struct.tomoyo_mini_stat** %31, align 8
  %342 = getelementptr inbounds %struct.tomoyo_mini_stat, %struct.tomoyo_mini_stat* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = call i64 @MAJOR(i32 %343)
  store i64 %344, i64* %29, align 8
  br label %356

345:                                              ; preds = %302, %302
  %346 = load %struct.tomoyo_mini_stat*, %struct.tomoyo_mini_stat** %31, align 8
  %347 = getelementptr inbounds %struct.tomoyo_mini_stat, %struct.tomoyo_mini_stat* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 8
  %349 = call i64 @MINOR(i32 %348)
  store i64 %349, i64* %29, align 8
  br label %356

350:                                              ; preds = %302, %302, %302, %302
  %351 = load %struct.tomoyo_mini_stat*, %struct.tomoyo_mini_stat** %31, align 8
  %352 = getelementptr inbounds %struct.tomoyo_mini_stat, %struct.tomoyo_mini_stat* %351, i32 0, i32 1
  %353 = load i64, i64* %352, align 8
  %354 = load i64, i64* @S_IALLUGO, align 8
  %355 = and i64 %353, %354
  store i64 %355, i64* %29, align 8
  br label %356

356:                                              ; preds = %302, %350, %345, %340, %334, %329, %324, %320, %315, %310
  br label %357

357:                                              ; preds = %356, %266, %262, %254, %249, %248, %247, %246, %245, %244, %243, %242, %241, %239, %237, %235, %233, %231, %229, %227, %225, %223, %221, %219, %217, %214, %211, %208, %205, %202, %199, %196, %193
  %358 = load i64, i64* %29, align 8
  %359 = load i32, i32* %23, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 %360
  store i64 %358, i64* %361, align 8
  %362 = load i64, i64* %29, align 8
  %363 = load i32, i32* %23, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 %364
  store i64 %362, i64* %365, align 8
  %366 = load i32, i32* %28, align 4
  switch i32 %366, label %371 [
    i32 174, label %367
    i32 175, label %367
    i32 173, label %367
    i32 177, label %367
    i32 176, label %367
    i32 178, label %367
    i32 183, label %367
    i32 182, label %367
    i32 184, label %367
    i32 180, label %367
    i32 179, label %367
    i32 181, label %367
  ]

367:                                              ; preds = %357, %357, %357, %357, %357, %357, %357, %357, %357, %357, %357, %357
  %368 = load i32, i32* %23, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 %369
  store i32 1, i32* %370, align 4
  br label %371

371:                                              ; preds = %367, %357
  br label %372

372:                                              ; preds = %371
  %373 = load i32, i32* %23, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %23, align 4
  br label %180

375:                                              ; preds = %180
  %376 = load i32, i32* %20, align 4
  %377 = icmp eq i32 %376, 172
  br i1 %377, label %378, label %393

378:                                              ; preds = %375
  %379 = load %struct.tomoyo_number_union*, %struct.tomoyo_number_union** %10, align 8
  %380 = getelementptr inbounds %struct.tomoyo_number_union, %struct.tomoyo_number_union* %379, i32 1
  store %struct.tomoyo_number_union* %380, %struct.tomoyo_number_union** %10, align 8
  store %struct.tomoyo_number_union* %379, %struct.tomoyo_number_union** %32, align 8
  %381 = load %struct.tomoyo_number_union*, %struct.tomoyo_number_union** %32, align 8
  %382 = getelementptr inbounds %struct.tomoyo_number_union, %struct.tomoyo_number_union* %381, i32 0, i32 0
  %383 = load i64*, i64** %382, align 8
  %384 = getelementptr inbounds i64, i64* %383, i64 0
  %385 = load i64, i64* %384, align 8
  %386 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  store i64 %385, i64* %386, align 16
  %387 = load %struct.tomoyo_number_union*, %struct.tomoyo_number_union** %32, align 8
  %388 = getelementptr inbounds %struct.tomoyo_number_union, %struct.tomoyo_number_union* %387, i32 0, i32 0
  %389 = load i64*, i64** %388, align 8
  %390 = getelementptr inbounds i64, i64* %389, i64 1
  %391 = load i64, i64* %390, align 8
  %392 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  store i64 %391, i64* %392, align 16
  br label %393

393:                                              ; preds = %378, %375
  %394 = load i32, i32* %21, align 4
  %395 = icmp eq i32 %394, 172
  br i1 %395, label %396, label %442

396:                                              ; preds = %393
  %397 = load %struct.tomoyo_number_union*, %struct.tomoyo_number_union** %10, align 8
  %398 = getelementptr inbounds %struct.tomoyo_number_union, %struct.tomoyo_number_union* %397, i32 1
  store %struct.tomoyo_number_union* %398, %struct.tomoyo_number_union** %10, align 8
  store %struct.tomoyo_number_union* %397, %struct.tomoyo_number_union** %33, align 8
  %399 = load %struct.tomoyo_number_union*, %struct.tomoyo_number_union** %33, align 8
  %400 = getelementptr inbounds %struct.tomoyo_number_union, %struct.tomoyo_number_union* %399, i32 0, i32 1
  %401 = load i64, i64* %400, align 8
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %416

403:                                              ; preds = %396
  %404 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %405 = load i64, i64* %404, align 16
  %406 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %407 = load i64, i64* %406, align 16
  %408 = load %struct.tomoyo_number_union*, %struct.tomoyo_number_union** %33, align 8
  %409 = getelementptr inbounds %struct.tomoyo_number_union, %struct.tomoyo_number_union* %408, i32 0, i32 1
  %410 = load i64, i64* %409, align 8
  %411 = call i32 @tomoyo_number_matches_group(i64 %405, i64 %407, i64 %410)
  %412 = load i32, i32* %19, align 4
  %413 = icmp eq i32 %411, %412
  br i1 %413, label %414, label %415

414:                                              ; preds = %403
  br label %519

415:                                              ; preds = %403
  br label %441

416:                                              ; preds = %396
  %417 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %418 = load i64, i64* %417, align 16
  %419 = load %struct.tomoyo_number_union*, %struct.tomoyo_number_union** %33, align 8
  %420 = getelementptr inbounds %struct.tomoyo_number_union, %struct.tomoyo_number_union* %419, i32 0, i32 0
  %421 = load i64*, i64** %420, align 8
  %422 = getelementptr inbounds i64, i64* %421, i64 1
  %423 = load i64, i64* %422, align 8
  %424 = icmp ule i64 %418, %423
  br i1 %424, label %425, label %434

425:                                              ; preds = %416
  %426 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %427 = load i64, i64* %426, align 16
  %428 = load %struct.tomoyo_number_union*, %struct.tomoyo_number_union** %33, align 8
  %429 = getelementptr inbounds %struct.tomoyo_number_union, %struct.tomoyo_number_union* %428, i32 0, i32 0
  %430 = load i64*, i64** %429, align 8
  %431 = getelementptr inbounds i64, i64* %430, i64 0
  %432 = load i64, i64* %431, align 8
  %433 = icmp uge i64 %427, %432
  br label %434

434:                                              ; preds = %425, %416
  %435 = phi i1 [ false, %416 ], [ %433, %425 ]
  %436 = zext i1 %435 to i32
  %437 = load i32, i32* %19, align 4
  %438 = icmp eq i32 %436, %437
  br i1 %438, label %439, label %440

439:                                              ; preds = %434
  br label %519

440:                                              ; preds = %434
  br label %441

441:                                              ; preds = %440, %415
  br label %518

442:                                              ; preds = %393
  %443 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0
  %444 = load i32, i32* %443, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %451

446:                                              ; preds = %442
  %447 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 1
  %448 = load i32, i32* %447, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %451

450:                                              ; preds = %446
  br label %518

451:                                              ; preds = %446, %442
  %452 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0
  %453 = load i32, i32* %452, align 4
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %474

455:                                              ; preds = %451
  %456 = load i32, i32* %21, align 4
  switch i32 %456, label %473 [
    i32 161, label %457
    i32 163, label %457
    i32 148, label %457
    i32 150, label %457
  ]

457:                                              ; preds = %455, %455, %455, %455
  %458 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %459 = load i64, i64* %458, align 16
  %460 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  %461 = load i64, i64* %460, align 8
  %462 = and i64 %459, %461
  %463 = icmp ne i64 %462, 0
  %464 = xor i1 %463, true
  %465 = zext i1 %464 to i32
  %466 = load i32, i32* %19, align 4
  %467 = icmp ne i32 %466, 0
  %468 = xor i1 %467, true
  %469 = zext i1 %468 to i32
  %470 = icmp eq i32 %465, %469
  br i1 %470, label %471, label %472

471:                                              ; preds = %457
  br label %519

472:                                              ; preds = %457
  br label %473

473:                                              ; preds = %472, %455
  br label %518

474:                                              ; preds = %451
  %475 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 1
  %476 = load i32, i32* %475, align 4
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %497

478:                                              ; preds = %474
  %479 = load i32, i32* %20, align 4
  switch i32 %479, label %496 [
    i32 161, label %480
    i32 163, label %480
    i32 148, label %480
    i32 150, label %480
  ]

480:                                              ; preds = %478, %478, %478, %478
  %481 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %482 = load i64, i64* %481, align 16
  %483 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  %484 = load i64, i64* %483, align 8
  %485 = and i64 %482, %484
  %486 = icmp ne i64 %485, 0
  %487 = xor i1 %486, true
  %488 = zext i1 %487 to i32
  %489 = load i32, i32* %19, align 4
  %490 = icmp ne i32 %489, 0
  %491 = xor i1 %490, true
  %492 = zext i1 %491 to i32
  %493 = icmp eq i32 %488, %492
  br i1 %493, label %494, label %495

494:                                              ; preds = %480
  br label %519

495:                                              ; preds = %480
  br label %496

496:                                              ; preds = %495, %478
  br label %518

497:                                              ; preds = %474
  br label %498

498:                                              ; preds = %497
  br label %499

499:                                              ; preds = %498
  %500 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %501 = load i64, i64* %500, align 16
  %502 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  %503 = load i64, i64* %502, align 8
  %504 = icmp ule i64 %501, %503
  br i1 %504, label %505, label %511

505:                                              ; preds = %499
  %506 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %507 = load i64, i64* %506, align 16
  %508 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1
  %509 = load i64, i64* %508, align 8
  %510 = icmp uge i64 %507, %509
  br label %511

511:                                              ; preds = %505, %499
  %512 = phi i1 [ false, %499 ], [ %510, %505 ]
  %513 = zext i1 %512 to i32
  %514 = load i32, i32* %19, align 4
  %515 = icmp eq i32 %513, %514
  br i1 %515, label %516, label %517

516:                                              ; preds = %511
  br label %519

517:                                              ; preds = %511
  br label %518

518:                                              ; preds = %517, %496, %473, %450, %441, %301, %291, %270, %261, %253, %176, %154
  store i32 0, i32* %3, align 4
  br label %543

519:                                              ; preds = %516, %494, %471, %439, %414, %178, %124
  %520 = load i32, i32* %6, align 4
  %521 = add nsw i32 %520, 1
  store i32 %521, i32* %6, align 4
  br label %100

522:                                              ; preds = %100
  %523 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %4, align 8
  %524 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %523, i32 0, i32 0
  %525 = load %struct.tomoyo_execve*, %struct.tomoyo_execve** %524, align 8
  %526 = icmp ne %struct.tomoyo_execve* %525, null
  br i1 %526, label %527, label %542

527:                                              ; preds = %522
  %528 = load i32, i32* %16, align 4
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %533, label %530

530:                                              ; preds = %527
  %531 = load i32, i32* %17, align 4
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %533, label %542

533:                                              ; preds = %530, %527
  %534 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %4, align 8
  %535 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %534, i32 0, i32 0
  %536 = load %struct.tomoyo_execve*, %struct.tomoyo_execve** %535, align 8
  %537 = load i32, i32* %16, align 4
  %538 = load %struct.tomoyo_argv*, %struct.tomoyo_argv** %12, align 8
  %539 = load i32, i32* %17, align 4
  %540 = load %struct.tomoyo_envp*, %struct.tomoyo_envp** %13, align 8
  %541 = call i32 @tomoyo_scan_bprm(%struct.tomoyo_execve* %536, i32 %537, %struct.tomoyo_argv* %538, i32 %539, %struct.tomoyo_envp* %540)
  store i32 %541, i32* %3, align 4
  br label %543

542:                                              ; preds = %530, %522
  store i32 1, i32* %3, align 4
  br label %543

543:                                              ; preds = %542, %533, %518, %71, %38
  %544 = load i32, i32* %3, align 4
  ret i32 %544
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @tomoyo_compare_name_union(%struct.tomoyo_path_info*, %struct.tomoyo_name_union*) #2

declare dso_local i32 @tomoyo_scan_exec_realpath(%struct.file*, %struct.tomoyo_name_union*, i32) #2

declare dso_local i64 @from_kuid(i32*, i32) #2

declare dso_local i32 @current_uid(...) #2

declare dso_local i32 @current_euid(...) #2

declare dso_local i32 @current_suid(...) #2

declare dso_local i32 @current_fsuid(...) #2

declare dso_local i64 @from_kgid(i32*, i32) #2

declare dso_local i32 @current_gid(...) #2

declare dso_local i32 @current_egid(...) #2

declare dso_local i32 @current_sgid(...) #2

declare dso_local i32 @current_fsgid(...) #2

declare dso_local i64 @tomoyo_sys_getpid(...) #2

declare dso_local i64 @tomoyo_sys_getppid(...) #2

declare dso_local i32 @tomoyo_get_attributes(%struct.tomoyo_obj_info*) #2

declare dso_local i64 @MAJOR(i32) #2

declare dso_local i64 @MINOR(i32) #2

declare dso_local i32 @tomoyo_number_matches_group(i64, i64, i64) #2

declare dso_local i32 @tomoyo_scan_bprm(%struct.tomoyo_execve*, i32, %struct.tomoyo_argv*, i32, %struct.tomoyo_envp*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
