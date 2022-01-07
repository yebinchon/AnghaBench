; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_domain.c_apparmor_bprm_set_creds.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_domain.c_apparmor_bprm_set_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_binprm = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.aa_task_ctx = type { i64, i32, i64 }
%struct.aa_label = type { i64 }
%struct.aa_profile = type { i32 }
%struct.path_cond = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@current = common dso_local global i32 0, align 4
@LSM_UNSAFE_NO_NEW_PRIVS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"no new privs\00", align 1
@LSM_UNSAFE_SHARE = common dso_local global i32 0, align 4
@LSM_UNSAFE_PTRACE = common dso_local global i32 0, align 4
@DEBUG_ON = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"scrubbing environment variables for %s label=\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"apparmor: clearing unsafe personality bits. %s label=\00", align 1
@PER_CLEAR_ON_SETID = common dso_local global i32 0, align 4
@nullperms = common dso_local global i32 0, align 4
@OP_EXEC = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apparmor_bprm_set_creds(%struct.linux_binprm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.linux_binprm*, align 8
  %4 = alloca %struct.aa_task_ctx*, align 8
  %5 = alloca %struct.aa_label*, align 8
  %6 = alloca %struct.aa_label*, align 8
  %7 = alloca %struct.aa_profile*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.path_cond, align 4
  store %struct.linux_binprm* %0, %struct.linux_binprm** %3, align 8
  store %struct.aa_label* null, %struct.aa_label** %6, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = getelementptr inbounds %struct.path_cond, %struct.path_cond* %12, i32 0, i32 0
  %14 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %15 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.TYPE_2__* @file_inode(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %13, align 4
  %20 = getelementptr inbounds %struct.path_cond, %struct.path_cond* %12, i32 0, i32 1
  %21 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %22 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.TYPE_2__* @file_inode(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %20, align 4
  %27 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %28 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %245

32:                                               ; preds = %1
  %33 = load i32, i32* @current, align 4
  %34 = call %struct.aa_task_ctx* @task_ctx(i32 %33)
  store %struct.aa_task_ctx* %34, %struct.aa_task_ctx** %4, align 8
  %35 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %36 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.aa_label* @cred_label(i32 %37)
  %39 = icmp ne %struct.aa_label* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @AA_BUG(i32 %41)
  %43 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %4, align 8
  %44 = icmp ne %struct.aa_task_ctx* %43, null
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @AA_BUG(i32 %46)
  %48 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %49 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.aa_label* @cred_label(i32 %50)
  %52 = call %struct.aa_label* @aa_get_newest_label(%struct.aa_label* %51)
  store %struct.aa_label* %52, %struct.aa_label** %5, align 8
  %53 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %54 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @LSM_UNSAFE_NO_NEW_PRIVS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %32
  %60 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %61 = call i32 @unconfined(%struct.aa_label* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %59
  %64 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %4, align 8
  %65 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %70 = call i64 @aa_get_label(%struct.aa_label* %69)
  %71 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %4, align 8
  %72 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %68, %63, %59, %32
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @get_buffers(i8* %74)
  %76 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %4, align 8
  %77 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %73
  %81 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %82 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %4, align 8
  %83 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %4, align 8
  %86 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = call %struct.aa_label* @handle_onexec(%struct.aa_label* %81, i64 %84, i32 %87, %struct.linux_binprm* %88, i8* %89, %struct.path_cond* %12, i32* %11)
  store %struct.aa_label* %90, %struct.aa_label** %6, align 8
  br label %100

91:                                               ; preds = %73
  %92 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %93 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %94 = load i32, i32* @GFP_ATOMIC, align 4
  %95 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %96 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = call i32 @profile_transition(%struct.aa_profile* %95, %struct.linux_binprm* %96, i8* %97, %struct.path_cond* %12, i32* %11)
  %99 = call %struct.aa_label* @fn_label_build(%struct.aa_label* %92, %struct.aa_profile* %93, i32 %94, i32 %98)
  store %struct.aa_label* %99, %struct.aa_label** %6, align 8
  br label %100

100:                                              ; preds = %91, %80
  %101 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %102 = icmp ne %struct.aa_label* %101, null
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = call i32 @AA_BUG(i32 %104)
  %106 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %107 = call i64 @IS_ERR(%struct.aa_label* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %100
  %110 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %111 = call i32 @PTR_ERR(%struct.aa_label* %110)
  store i32 %111, i32* %10, align 4
  br label %217

112:                                              ; preds = %100
  %113 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %114 = icmp ne %struct.aa_label* %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %10, align 4
  br label %217

118:                                              ; preds = %112
  br label %119

119:                                              ; preds = %118
  %120 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %121 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @LSM_UNSAFE_NO_NEW_PRIVS, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %140

126:                                              ; preds = %119
  %127 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %128 = call i32 @unconfined(%struct.aa_label* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %140, label %130

130:                                              ; preds = %126
  %131 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %132 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %4, align 8
  %133 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @aa_label_is_subset(%struct.aa_label* %131, i64 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %130
  %138 = load i32, i32* @EPERM, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %10, align 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %223

140:                                              ; preds = %130, %126, %119
  %141 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %142 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @LSM_UNSAFE_SHARE, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %140
  br label %148

148:                                              ; preds = %147, %140
  %149 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %150 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @LSM_UNSAFE_PTRACE, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %148
  %156 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %157 = call i32 @may_change_ptraced_domain(%struct.aa_label* %156, i8** %9)
  store i32 %157, i32* %10, align 4
  %158 = load i32, i32* %10, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  br label %223

161:                                              ; preds = %155
  br label %162

162:                                              ; preds = %161, %148
  %163 = load i32, i32* %11, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %180

165:                                              ; preds = %162
  %166 = load i64, i64* @DEBUG_ON, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %165
  %169 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %170 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (i8*, ...) @dbg_printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %171)
  %173 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %174 = load i32, i32* @GFP_ATOMIC, align 4
  %175 = call i32 @aa_label_printk(%struct.aa_label* %173, i32 %174)
  %176 = call i32 (i8*, ...) @dbg_printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %177

177:                                              ; preds = %168, %165
  %178 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %179 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %178, i32 0, i32 1
  store i32 1, i32* %179, align 4
  br label %180

180:                                              ; preds = %177, %162
  %181 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %182 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %185 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %183, %186
  br i1 %187, label %188, label %206

188:                                              ; preds = %180
  %189 = load i64, i64* @DEBUG_ON, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %188
  %192 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %193 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (i8*, ...) @dbg_printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %194)
  %196 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %197 = load i32, i32* @GFP_ATOMIC, align 4
  %198 = call i32 @aa_label_printk(%struct.aa_label* %196, i32 %197)
  %199 = call i32 (i8*, ...) @dbg_printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %200

200:                                              ; preds = %191, %188
  %201 = load i32, i32* @PER_CLEAR_ON_SETID, align 4
  %202 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %203 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 4
  %205 = or i32 %204, %201
  store i32 %205, i32* %203, align 4
  br label %206

206:                                              ; preds = %200, %180
  %207 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %208 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = call %struct.aa_label* @cred_label(i32 %209)
  %211 = call i32 @aa_put_label(%struct.aa_label* %210)
  %212 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %213 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %216 = call i32 @set_cred_label(i32 %214, %struct.aa_label* %215)
  br label %217

217:                                              ; preds = %223, %206, %115, %109
  %218 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %219 = call i32 @aa_put_label(%struct.aa_label* %218)
  %220 = load i8*, i8** %8, align 8
  %221 = call i32 @put_buffers(i8* %220)
  %222 = load i32, i32* %10, align 4
  store i32 %222, i32* %2, align 4
  br label %245

223:                                              ; preds = %160, %137
  %224 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %225 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %226 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %227 = load i32, i32* @OP_EXEC, align 4
  %228 = load i32, i32* @MAY_EXEC, align 4
  %229 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %230 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %233 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %234 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = call %struct.TYPE_2__* @file_inode(i32 %235)
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load i8*, i8** %9, align 8
  %240 = load i32, i32* %10, align 4
  %241 = call i32 @aa_audit_file(%struct.aa_profile* %226, i32* @nullperms, i32 %227, i32 %228, i32 %231, i32* null, %struct.aa_label* %232, i32 %238, i8* %239, i32 %240)
  %242 = call i32 @fn_for_each(%struct.aa_label* %224, %struct.aa_profile* %225, i32 %241)
  store i32 %242, i32* %10, align 4
  %243 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %244 = call i32 @aa_put_label(%struct.aa_label* %243)
  br label %217

245:                                              ; preds = %217, %31
  %246 = load i32, i32* %2, align 4
  ret i32 %246
}

declare dso_local %struct.TYPE_2__* @file_inode(i32) #1

declare dso_local %struct.aa_task_ctx* @task_ctx(i32) #1

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local %struct.aa_label* @cred_label(i32) #1

declare dso_local %struct.aa_label* @aa_get_newest_label(%struct.aa_label*) #1

declare dso_local i32 @unconfined(%struct.aa_label*) #1

declare dso_local i64 @aa_get_label(%struct.aa_label*) #1

declare dso_local i32 @get_buffers(i8*) #1

declare dso_local %struct.aa_label* @handle_onexec(%struct.aa_label*, i64, i32, %struct.linux_binprm*, i8*, %struct.path_cond*, i32*) #1

declare dso_local %struct.aa_label* @fn_label_build(%struct.aa_label*, %struct.aa_profile*, i32, i32) #1

declare dso_local i32 @profile_transition(%struct.aa_profile*, %struct.linux_binprm*, i8*, %struct.path_cond*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.aa_label*) #1

declare dso_local i32 @PTR_ERR(%struct.aa_label*) #1

declare dso_local i32 @aa_label_is_subset(%struct.aa_label*, i64) #1

declare dso_local i32 @may_change_ptraced_domain(%struct.aa_label*, i8**) #1

declare dso_local i32 @dbg_printk(i8*, ...) #1

declare dso_local i32 @aa_label_printk(%struct.aa_label*, i32) #1

declare dso_local i32 @aa_put_label(%struct.aa_label*) #1

declare dso_local i32 @set_cred_label(i32, %struct.aa_label*) #1

declare dso_local i32 @put_buffers(i8*) #1

declare dso_local i32 @fn_for_each(%struct.aa_label*, %struct.aa_profile*, i32) #1

declare dso_local i32 @aa_audit_file(%struct.aa_profile*, i32*, i32, i32, i32, i32*, %struct.aa_label*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
