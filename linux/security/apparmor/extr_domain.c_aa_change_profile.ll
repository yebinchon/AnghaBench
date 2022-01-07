; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_domain.c_aa_change_profile.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_domain.c_aa_change_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.aa_profile = type { %struct.aa_label }
%struct.aa_perms = type { i64 }
%struct.aa_task_ctx = type { i64 }

@AA_CHANGE_STACK = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"no profile name\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AA_CHANGE_ONEXEC = common dso_local global i32 0, align 4
@AA_MAY_ONEXEC = common dso_local global i32 0, align 4
@OP_STACK_ONEXEC = common dso_local global i8* null, align 8
@OP_CHANGE_ONEXEC = common dso_local global i8* null, align 8
@AA_MAY_CHANGE_PROFILE = common dso_local global i32 0, align 4
@OP_STACK = common dso_local global i8* null, align 8
@OP_CHANGE_PROFILE = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"label not found\00", align 1
@AA_CHANGE_TEST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"failed null profile create\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"no_new_privs - change_hat denied\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to build target label\00", align 1
@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_change_profile(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.aa_label*, align 8
  %7 = alloca %struct.aa_label*, align 8
  %8 = alloca %struct.aa_label*, align 8
  %9 = alloca %struct.aa_profile*, align 8
  %10 = alloca %struct.aa_perms, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.aa_task_ctx*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.aa_profile*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.aa_label* null, %struct.aa_label** %7, align 8
  store %struct.aa_label* null, %struct.aa_label** %8, align 8
  %19 = bitcast %struct.aa_perms* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 8, i1 false)
  store i8* null, i8** %11, align 8
  %20 = load i8*, i8** %4, align 8
  store i8* %20, i8** %12, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @AA_CHANGE_STACK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* @current, align 4
  %25 = call %struct.aa_task_ctx* @task_ctx(i32 %24)
  store %struct.aa_task_ctx* %25, %struct.aa_task_ctx** %14, align 8
  store i32 0, i32* %15, align 4
  %26 = call %struct.aa_label* (...) @aa_get_current_label()
  store %struct.aa_label* %26, %struct.aa_label** %6, align 8
  %27 = load i32, i32* @current, align 4
  %28 = call i64 @task_no_new_privs(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %2
  %31 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %32 = call i32 @unconfined(%struct.aa_label* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %30
  %35 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %14, align 8
  %36 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %41 = call i64 @aa_get_label(%struct.aa_label* %40)
  %42 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %14, align 8
  %43 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %39, %34, %30, %2
  %45 = load i8*, i8** %4, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i8*, i8** %4, align 8
  %49 = load i8, i8* %48, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47, %44
  %52 = call i32 @AA_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %258

55:                                               ; preds = %47
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @AA_CHANGE_ONEXEC, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load i32, i32* @AA_MAY_ONEXEC, align 4
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i8*, i8** @OP_STACK_ONEXEC, align 8
  store i8* %65, i8** %16, align 8
  br label %68

66:                                               ; preds = %60
  %67 = load i8*, i8** @OP_CHANGE_ONEXEC, align 8
  store i8* %67, i8** %16, align 8
  br label %68

68:                                               ; preds = %66, %64
  br label %78

69:                                               ; preds = %55
  %70 = load i32, i32* @AA_MAY_CHANGE_PROFILE, align 4
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i8*, i8** @OP_STACK, align 8
  store i8* %74, i8** %16, align 8
  br label %77

75:                                               ; preds = %69
  %76 = load i8*, i8** @OP_CHANGE_PROFILE, align 8
  store i8* %76, i8** %16, align 8
  br label %77

77:                                               ; preds = %75, %73
  br label %78

78:                                               ; preds = %77, %68
  %79 = call %struct.aa_label* (...) @aa_get_current_label()
  store %struct.aa_label* %79, %struct.aa_label** %6, align 8
  %80 = load i8*, i8** %4, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 38
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  store i32 1, i32* %13, align 4
  %85 = load i8*, i8** %4, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %4, align 8
  br label %87

87:                                               ; preds = %84, %78
  %88 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %89 = load i8*, i8** %4, align 8
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = call %struct.aa_label* @aa_label_parse(%struct.aa_label* %88, i8* %89, i32 %90, i32 1, i32 0)
  store %struct.aa_label* %91, %struct.aa_label** %8, align 8
  %92 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %93 = call i64 @IS_ERR(%struct.aa_label* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %122

95:                                               ; preds = %87
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  %96 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %97 = call i32 @PTR_ERR(%struct.aa_label* %96)
  store i32 %97, i32* %15, align 4
  store %struct.aa_label* null, %struct.aa_label** %8, align 8
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @AA_CHANGE_TEST, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %95
  %103 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %104 = call %struct.aa_profile* @labels_profile(%struct.aa_label* %103)
  %105 = call i32 @COMPLAIN_MODE(%struct.aa_profile* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %102, %95
  br label %230

108:                                              ; preds = %102
  %109 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %110 = call %struct.aa_profile* @labels_profile(%struct.aa_label* %109)
  %111 = load i8*, i8** %4, align 8
  %112 = load i32, i32* @GFP_KERNEL, align 4
  %113 = call %struct.aa_profile* @aa_new_null_profile(%struct.aa_profile* %110, i32 0, i8* %111, i32 %112)
  store %struct.aa_profile* %113, %struct.aa_profile** %18, align 8
  %114 = load %struct.aa_profile*, %struct.aa_profile** %18, align 8
  %115 = icmp ne %struct.aa_profile* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %108
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %15, align 4
  br label %230

119:                                              ; preds = %108
  %120 = load %struct.aa_profile*, %struct.aa_profile** %18, align 8
  %121 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %120, i32 0, i32 0
  store %struct.aa_label* %121, %struct.aa_label** %8, align 8
  br label %137

122:                                              ; preds = %87
  %123 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %124 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %125 = load i8*, i8** %16, align 8
  %126 = load i8*, i8** %12, align 8
  %127 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %128 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %17, align 4
  %131 = call i32 @change_profile_perms_wrapper(i8* %125, i8* %126, %struct.aa_profile* %127, %struct.aa_label* %128, i32 %129, i32 %130, %struct.aa_perms* %10)
  %132 = call i32 @fn_for_each_in_ns(%struct.aa_label* %123, %struct.aa_profile* %124, i32 %131)
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* %15, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %122
  br label %250

136:                                              ; preds = %122
  br label %137

137:                                              ; preds = %136, %119
  %138 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %139 = call i32 @may_change_ptraced_domain(%struct.aa_label* %138, i8** %11)
  store i32 %139, i32* %15, align 4
  %140 = load i32, i32* %15, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %137
  %143 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %144 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %145 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %146 = call i32 @COMPLAIN_MODE(%struct.aa_profile* %145)
  %147 = call i32 @fn_for_each_in_ns(%struct.aa_label* %143, %struct.aa_profile* %144, i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %142
  br label %230

150:                                              ; preds = %142, %137
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* @AA_CHANGE_TEST, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  br label %250

156:                                              ; preds = %150
  %157 = load i32, i32* %13, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %188, label %159

159:                                              ; preds = %156
  %160 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %161 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %162 = load i32, i32* @GFP_KERNEL, align 4
  %163 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %164 = call i64 @aa_get_label(%struct.aa_label* %163)
  %165 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %166 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %165, i32 0, i32 0
  %167 = call i64 @aa_get_label(%struct.aa_label* %166)
  %168 = call %struct.aa_label* @fn_label_build_in_ns(%struct.aa_label* %160, %struct.aa_profile* %161, i32 %162, i64 %164, i64 %167)
  store %struct.aa_label* %168, %struct.aa_label** %7, align 8
  %169 = load i32, i32* @current, align 4
  %170 = call i64 @task_no_new_privs(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %187

172:                                              ; preds = %159
  %173 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %174 = call i32 @unconfined(%struct.aa_label* %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %187, label %176

176:                                              ; preds = %172
  %177 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %178 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %14, align 8
  %179 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @aa_label_is_subset(%struct.aa_label* %177, i64 %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %187, label %183

183:                                              ; preds = %176
  %184 = call i32 @AA_DEBUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %185 = load i32, i32* @EPERM, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %15, align 4
  br label %250

187:                                              ; preds = %176, %172, %159
  br label %188

188:                                              ; preds = %187, %156
  %189 = load i32, i32* %5, align 4
  %190 = load i32, i32* @AA_CHANGE_ONEXEC, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %219, label %193

193:                                              ; preds = %188
  %194 = load i32, i32* %13, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %193
  %197 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %198 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %199 = load i32, i32* @GFP_KERNEL, align 4
  %200 = call %struct.aa_label* @aa_label_merge(%struct.aa_label* %197, %struct.aa_label* %198, i32 %199)
  store %struct.aa_label* %200, %struct.aa_label** %7, align 8
  br label %201

201:                                              ; preds = %196, %193
  %202 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %203 = call i64 @IS_ERR_OR_NULL(%struct.aa_label* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %216

205:                                              ; preds = %201
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8** %11, align 8
  %206 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %207 = icmp ne %struct.aa_label* %206, null
  br i1 %207, label %211, label %208

208:                                              ; preds = %205
  %209 = load i32, i32* @ENOMEM, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %15, align 4
  br label %214

211:                                              ; preds = %205
  %212 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %213 = call i32 @PTR_ERR(%struct.aa_label* %212)
  store i32 %213, i32* %15, align 4
  br label %214

214:                                              ; preds = %211, %208
  store %struct.aa_label* null, %struct.aa_label** %7, align 8
  %215 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %10, i32 0, i32 0
  store i64 0, i64* %215, align 8
  br label %230

216:                                              ; preds = %201
  %217 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %218 = call i32 @aa_replace_current_label(%struct.aa_label* %217)
  store i32 %218, i32* %15, align 4
  br label %229

219:                                              ; preds = %188
  %220 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %221 = icmp ne %struct.aa_label* %220, null
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %224 = call i32 @aa_put_label(%struct.aa_label* %223)
  store %struct.aa_label* null, %struct.aa_label** %7, align 8
  br label %225

225:                                              ; preds = %222, %219
  %226 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %227 = load i32, i32* %13, align 4
  %228 = call i32 @aa_set_current_onexec(%struct.aa_label* %226, i32 %227)
  store i32 %228, i32* %15, align 4
  br label %229

229:                                              ; preds = %225, %216
  br label %230

230:                                              ; preds = %229, %214, %149, %116, %107
  %231 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %232 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %233 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %234 = load i8*, i8** %16, align 8
  %235 = load i32, i32* %17, align 4
  %236 = load i8*, i8** %12, align 8
  %237 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %238 = icmp ne %struct.aa_label* %237, null
  br i1 %238, label %239, label %241

239:                                              ; preds = %230
  %240 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  br label %243

241:                                              ; preds = %230
  %242 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  br label %243

243:                                              ; preds = %241, %239
  %244 = phi %struct.aa_label* [ %240, %239 ], [ %242, %241 ]
  %245 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %246 = load i8*, i8** %11, align 8
  %247 = load i32, i32* %15, align 4
  %248 = call i32 @aa_audit_file(%struct.aa_profile* %233, %struct.aa_perms* %10, i8* %234, i32 %235, i8* %236, i32* null, %struct.aa_label* %244, i32 %245, i8* %246, i32 %247)
  %249 = call i32 @fn_for_each_in_ns(%struct.aa_label* %231, %struct.aa_profile* %232, i32 %248)
  store i32 %249, i32* %15, align 4
  br label %250

250:                                              ; preds = %243, %183, %155, %135
  %251 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %252 = call i32 @aa_put_label(%struct.aa_label* %251)
  %253 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %254 = call i32 @aa_put_label(%struct.aa_label* %253)
  %255 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %256 = call i32 @aa_put_label(%struct.aa_label* %255)
  %257 = load i32, i32* %15, align 4
  store i32 %257, i32* %3, align 4
  br label %258

258:                                              ; preds = %250, %51
  %259 = load i32, i32* %3, align 4
  ret i32 %259
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.aa_task_ctx* @task_ctx(i32) #2

declare dso_local %struct.aa_label* @aa_get_current_label(...) #2

declare dso_local i64 @task_no_new_privs(i32) #2

declare dso_local i32 @unconfined(%struct.aa_label*) #2

declare dso_local i64 @aa_get_label(%struct.aa_label*) #2

declare dso_local i32 @AA_DEBUG(i8*) #2

declare dso_local %struct.aa_label* @aa_label_parse(%struct.aa_label*, i8*, i32, i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.aa_label*) #2

declare dso_local i32 @PTR_ERR(%struct.aa_label*) #2

declare dso_local i32 @COMPLAIN_MODE(%struct.aa_profile*) #2

declare dso_local %struct.aa_profile* @labels_profile(%struct.aa_label*) #2

declare dso_local %struct.aa_profile* @aa_new_null_profile(%struct.aa_profile*, i32, i8*, i32) #2

declare dso_local i32 @fn_for_each_in_ns(%struct.aa_label*, %struct.aa_profile*, i32) #2

declare dso_local i32 @change_profile_perms_wrapper(i8*, i8*, %struct.aa_profile*, %struct.aa_label*, i32, i32, %struct.aa_perms*) #2

declare dso_local i32 @may_change_ptraced_domain(%struct.aa_label*, i8**) #2

declare dso_local %struct.aa_label* @fn_label_build_in_ns(%struct.aa_label*, %struct.aa_profile*, i32, i64, i64) #2

declare dso_local i32 @aa_label_is_subset(%struct.aa_label*, i64) #2

declare dso_local %struct.aa_label* @aa_label_merge(%struct.aa_label*, %struct.aa_label*, i32) #2

declare dso_local i64 @IS_ERR_OR_NULL(%struct.aa_label*) #2

declare dso_local i32 @aa_replace_current_label(%struct.aa_label*) #2

declare dso_local i32 @aa_put_label(%struct.aa_label*) #2

declare dso_local i32 @aa_set_current_onexec(%struct.aa_label*, i32) #2

declare dso_local i32 @aa_audit_file(%struct.aa_profile*, %struct.aa_perms*, i8*, i32, i8*, i32*, %struct.aa_label*, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
