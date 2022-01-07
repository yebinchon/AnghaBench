; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_setprocattr.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_setprocattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_security_struct = type { i64, i64, i64, i64, i64 }
%struct.cred = type { i32 }
%struct.audit_buffer = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@selinux_state = common dso_local global i32 0, align 4
@SECCLASS_PROCESS = common dso_local global i32 0, align 4
@PROCESS__SETEXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"fscreate\00", align 1
@PROCESS__SETFSCREATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"keycreate\00", align 1
@PROCESS__SETKEYCREATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"sockcreate\00", align 1
@PROCESS__SETSOCKCREATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@PROCESS__SETCURRENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@AUDIT_SELINUX_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"op=fscreate invalid_context=\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SECCLASS_KEY = common dso_local global i32 0, align 4
@KEY__CREATE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@PROCESS__DYNTRANSITION = common dso_local global i32 0, align 4
@PROCESS__PTRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @selinux_setprocattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_setprocattr(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.task_security_struct*, align 8
  %9 = alloca %struct.cred*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.audit_buffer*, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = call i64 (...) @current_sid()
  store i64 %17, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %18 = load i8*, i8** %6, align 8
  store i8* %18, i8** %14, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %3
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i32, i32* @SECCLASS_PROCESS, align 4
  %26 = load i32, i32* @PROCESS__SETEXEC, align 4
  %27 = call i32 @avc_has_perm(i32* @selinux_state, i64 %23, i64 %24, i32 %25, i32 %26, i32* null)
  store i32 %27, i32* %13, align 4
  br label %75

28:                                               ; preds = %3
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i32, i32* @SECCLASS_PROCESS, align 4
  %36 = load i32, i32* @PROCESS__SETFSCREATE, align 4
  %37 = call i32 @avc_has_perm(i32* @selinux_state, i64 %33, i64 %34, i32 %35, i32 %36, i32* null)
  store i32 %37, i32* %13, align 4
  br label %74

38:                                               ; preds = %28
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i32, i32* @SECCLASS_PROCESS, align 4
  %46 = load i32, i32* @PROCESS__SETKEYCREATE, align 4
  %47 = call i32 @avc_has_perm(i32* @selinux_state, i64 %43, i64 %44, i32 %45, i32 %46, i32* null)
  store i32 %47, i32* %13, align 4
  br label %73

48:                                               ; preds = %38
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %48
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load i32, i32* @SECCLASS_PROCESS, align 4
  %56 = load i32, i32* @PROCESS__SETSOCKCREATE, align 4
  %57 = call i32 @avc_has_perm(i32* @selinux_state, i64 %53, i64 %54, i32 %55, i32 %56, i32* null)
  store i32 %57, i32* %13, align 4
  br label %72

58:                                               ; preds = %48
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i32, i32* @SECCLASS_PROCESS, align 4
  %66 = load i32, i32* @PROCESS__SETCURRENT, align 4
  %67 = call i32 @avc_has_perm(i32* @selinux_state, i64 %63, i64 %64, i32 %65, i32 %66, i32* null)
  store i32 %67, i32* %13, align 4
  br label %71

68:                                               ; preds = %58
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %68, %62
  br label %72

72:                                               ; preds = %71, %52
  br label %73

73:                                               ; preds = %72, %42
  br label %74

74:                                               ; preds = %73, %32
  br label %75

75:                                               ; preds = %74, %22
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %4, align 4
  br label %287

80:                                               ; preds = %75
  %81 = load i64, i64* %7, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %163

83:                                               ; preds = %80
  %84 = load i8*, i8** %14, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %163

89:                                               ; preds = %83
  %90 = load i8*, i8** %14, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 10
  br i1 %94, label %95, label %163

95:                                               ; preds = %89
  %96 = load i8*, i8** %14, align 8
  %97 = load i64, i64* %7, align 8
  %98 = sub i64 %97, 1
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 10
  br i1 %102, label %103, label %110

103:                                              ; preds = %95
  %104 = load i8*, i8** %14, align 8
  %105 = load i64, i64* %7, align 8
  %106 = sub i64 %105, 1
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  store i8 0, i8* %107, align 1
  %108 = load i64, i64* %7, align 8
  %109 = add i64 %108, -1
  store i64 %109, i64* %7, align 8
  br label %110

110:                                              ; preds = %103, %95
  %111 = load i8*, i8** %6, align 8
  %112 = load i64, i64* %7, align 8
  %113 = load i32, i32* @GFP_KERNEL, align 4
  %114 = call i32 @security_context_to_sid(i32* @selinux_state, i8* %111, i64 %112, i64* %11, i32 %113)
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %119, label %157

119:                                              ; preds = %110
  %120 = load i8*, i8** %5, align 8
  %121 = call i32 @strcmp(i8* %120, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %157, label %123

123:                                              ; preds = %119
  %124 = call i32 @has_cap_mac_admin(i32 1)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %153, label %126

126:                                              ; preds = %123
  %127 = load i8*, i8** %14, align 8
  %128 = load i64, i64* %7, align 8
  %129 = sub i64 %128, 1
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %126
  %135 = load i64, i64* %7, align 8
  %136 = sub i64 %135, 1
  store i64 %136, i64* %16, align 8
  br label %139

137:                                              ; preds = %126
  %138 = load i64, i64* %7, align 8
  store i64 %138, i64* %16, align 8
  br label %139

139:                                              ; preds = %137, %134
  %140 = call i32 (...) @audit_context()
  %141 = load i32, i32* @GFP_ATOMIC, align 4
  %142 = load i32, i32* @AUDIT_SELINUX_ERR, align 4
  %143 = call %struct.audit_buffer* @audit_log_start(i32 %140, i32 %141, i32 %142)
  store %struct.audit_buffer* %143, %struct.audit_buffer** %15, align 8
  %144 = load %struct.audit_buffer*, %struct.audit_buffer** %15, align 8
  %145 = call i32 @audit_log_format(%struct.audit_buffer* %144, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %146 = load %struct.audit_buffer*, %struct.audit_buffer** %15, align 8
  %147 = load i8*, i8** %6, align 8
  %148 = load i64, i64* %16, align 8
  %149 = call i32 @audit_log_n_untrustedstring(%struct.audit_buffer* %146, i8* %147, i64 %148)
  %150 = load %struct.audit_buffer*, %struct.audit_buffer** %15, align 8
  %151 = call i32 @audit_log_end(%struct.audit_buffer* %150)
  %152 = load i32, i32* %13, align 4
  store i32 %152, i32* %4, align 4
  br label %287

153:                                              ; preds = %123
  %154 = load i8*, i8** %6, align 8
  %155 = load i64, i64* %7, align 8
  %156 = call i32 @security_context_to_sid_force(i32* @selinux_state, i8* %154, i64 %155, i64* %11)
  store i32 %156, i32* %13, align 4
  br label %157

157:                                              ; preds = %153, %119, %110
  %158 = load i32, i32* %13, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = load i32, i32* %13, align 4
  store i32 %161, i32* %4, align 4
  br label %287

162:                                              ; preds = %157
  br label %163

163:                                              ; preds = %162, %89, %83, %80
  %164 = call %struct.cred* (...) @prepare_creds()
  store %struct.cred* %164, %struct.cred** %9, align 8
  %165 = load %struct.cred*, %struct.cred** %9, align 8
  %166 = icmp ne %struct.cred* %165, null
  br i1 %166, label %170, label %167

167:                                              ; preds = %163
  %168 = load i32, i32* @ENOMEM, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %4, align 4
  br label %287

170:                                              ; preds = %163
  %171 = load %struct.cred*, %struct.cred** %9, align 8
  %172 = call %struct.task_security_struct* @selinux_cred(%struct.cred* %171)
  store %struct.task_security_struct* %172, %struct.task_security_struct** %8, align 8
  %173 = load i8*, i8** %5, align 8
  %174 = call i32 @strcmp(i8* %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %180, label %176

176:                                              ; preds = %170
  %177 = load i64, i64* %11, align 8
  %178 = load %struct.task_security_struct*, %struct.task_security_struct** %8, align 8
  %179 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %178, i32 0, i32 4
  store i64 %177, i64* %179, align 8
  br label %278

180:                                              ; preds = %170
  %181 = load i8*, i8** %5, align 8
  %182 = call i32 @strcmp(i8* %181, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %188, label %184

184:                                              ; preds = %180
  %185 = load i64, i64* %11, align 8
  %186 = load %struct.task_security_struct*, %struct.task_security_struct** %8, align 8
  %187 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %186, i32 0, i32 3
  store i64 %185, i64* %187, align 8
  br label %277

188:                                              ; preds = %180
  %189 = load i8*, i8** %5, align 8
  %190 = call i32 @strcmp(i8* %189, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %209, label %192

192:                                              ; preds = %188
  %193 = load i64, i64* %11, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %192
  %196 = load i64, i64* %10, align 8
  %197 = load i64, i64* %11, align 8
  %198 = load i32, i32* @SECCLASS_KEY, align 4
  %199 = load i32, i32* @KEY__CREATE, align 4
  %200 = call i32 @avc_has_perm(i32* @selinux_state, i64 %196, i64 %197, i32 %198, i32 %199, i32* null)
  store i32 %200, i32* %13, align 4
  %201 = load i32, i32* %13, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %195
  br label %283

204:                                              ; preds = %195
  br label %205

205:                                              ; preds = %204, %192
  %206 = load i64, i64* %11, align 8
  %207 = load %struct.task_security_struct*, %struct.task_security_struct** %8, align 8
  %208 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %207, i32 0, i32 2
  store i64 %206, i64* %208, align 8
  br label %276

209:                                              ; preds = %188
  %210 = load i8*, i8** %5, align 8
  %211 = call i32 @strcmp(i8* %210, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %217, label %213

213:                                              ; preds = %209
  %214 = load i64, i64* %11, align 8
  %215 = load %struct.task_security_struct*, %struct.task_security_struct** %8, align 8
  %216 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %215, i32 0, i32 1
  store i64 %214, i64* %216, align 8
  br label %275

217:                                              ; preds = %209
  %218 = load i8*, i8** %5, align 8
  %219 = call i32 @strcmp(i8* %218, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %271, label %221

221:                                              ; preds = %217
  %222 = load i32, i32* @EINVAL, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %13, align 4
  %224 = load i64, i64* %11, align 8
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %221
  br label %283

227:                                              ; preds = %221
  %228 = load i32, i32* @EPERM, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %13, align 4
  %230 = call i32 (...) @current_is_single_threaded()
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %242, label %232

232:                                              ; preds = %227
  %233 = load %struct.task_security_struct*, %struct.task_security_struct** %8, align 8
  %234 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* %11, align 8
  %237 = call i32 @security_bounded_transition(i32* @selinux_state, i64 %235, i64 %236)
  store i32 %237, i32* %13, align 4
  %238 = load i32, i32* %13, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %232
  br label %283

241:                                              ; preds = %232
  br label %242

242:                                              ; preds = %241, %227
  %243 = load %struct.task_security_struct*, %struct.task_security_struct** %8, align 8
  %244 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* %11, align 8
  %247 = load i32, i32* @SECCLASS_PROCESS, align 4
  %248 = load i32, i32* @PROCESS__DYNTRANSITION, align 4
  %249 = call i32 @avc_has_perm(i32* @selinux_state, i64 %245, i64 %246, i32 %247, i32 %248, i32* null)
  store i32 %249, i32* %13, align 4
  %250 = load i32, i32* %13, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %242
  br label %283

253:                                              ; preds = %242
  %254 = call i64 (...) @ptrace_parent_sid()
  store i64 %254, i64* %12, align 8
  %255 = load i64, i64* %12, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %267

257:                                              ; preds = %253
  %258 = load i64, i64* %12, align 8
  %259 = load i64, i64* %11, align 8
  %260 = load i32, i32* @SECCLASS_PROCESS, align 4
  %261 = load i32, i32* @PROCESS__PTRACE, align 4
  %262 = call i32 @avc_has_perm(i32* @selinux_state, i64 %258, i64 %259, i32 %260, i32 %261, i32* null)
  store i32 %262, i32* %13, align 4
  %263 = load i32, i32* %13, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %257
  br label %283

266:                                              ; preds = %257
  br label %267

267:                                              ; preds = %266, %253
  %268 = load i64, i64* %11, align 8
  %269 = load %struct.task_security_struct*, %struct.task_security_struct** %8, align 8
  %270 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %269, i32 0, i32 0
  store i64 %268, i64* %270, align 8
  br label %274

271:                                              ; preds = %217
  %272 = load i32, i32* @EINVAL, align 4
  %273 = sub nsw i32 0, %272
  store i32 %273, i32* %13, align 4
  br label %283

274:                                              ; preds = %267
  br label %275

275:                                              ; preds = %274, %213
  br label %276

276:                                              ; preds = %275, %205
  br label %277

277:                                              ; preds = %276, %184
  br label %278

278:                                              ; preds = %277, %176
  %279 = load %struct.cred*, %struct.cred** %9, align 8
  %280 = call i32 @commit_creds(%struct.cred* %279)
  %281 = load i64, i64* %7, align 8
  %282 = trunc i64 %281 to i32
  store i32 %282, i32* %4, align 4
  br label %287

283:                                              ; preds = %271, %265, %252, %240, %226, %203
  %284 = load %struct.cred*, %struct.cred** %9, align 8
  %285 = call i32 @abort_creds(%struct.cred* %284)
  %286 = load i32, i32* %13, align 4
  store i32 %286, i32* %4, align 4
  br label %287

287:                                              ; preds = %283, %278, %167, %160, %139, %78
  %288 = load i32, i32* %4, align 4
  ret i32 %288
}

declare dso_local i64 @current_sid(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @avc_has_perm(i32*, i64, i64, i32, i32, i32*) #1

declare dso_local i32 @security_context_to_sid(i32*, i8*, i64, i64*, i32) #1

declare dso_local i32 @has_cap_mac_admin(i32) #1

declare dso_local %struct.audit_buffer* @audit_log_start(i32, i32, i32) #1

declare dso_local i32 @audit_context(...) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*) #1

declare dso_local i32 @audit_log_n_untrustedstring(%struct.audit_buffer*, i8*, i64) #1

declare dso_local i32 @audit_log_end(%struct.audit_buffer*) #1

declare dso_local i32 @security_context_to_sid_force(i32*, i8*, i64, i64*) #1

declare dso_local %struct.cred* @prepare_creds(...) #1

declare dso_local %struct.task_security_struct* @selinux_cred(%struct.cred*) #1

declare dso_local i32 @current_is_single_threaded(...) #1

declare dso_local i32 @security_bounded_transition(i32*, i64, i64) #1

declare dso_local i64 @ptrace_parent_sid(...) #1

declare dso_local i32 @commit_creds(%struct.cred*) #1

declare dso_local i32 @abort_creds(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
