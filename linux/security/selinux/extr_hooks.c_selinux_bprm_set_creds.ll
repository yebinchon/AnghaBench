; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_bprm_set_creds.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_bprm_set_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_binprm = type { i32, i32, i32, i32, i32, i64 }
%struct.task_security_struct = type { i64, i64, i64, i64, i64, i64 }
%struct.inode_security_struct = type { i64 }
%struct.common_audit_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32 }

@selinux_state = common dso_local global i32 0, align 4
@SECCLASS_PROCESS = common dso_local global i32 0, align 4
@LSM_AUDIT_DATA_FILE = common dso_local global i32 0, align 4
@SECCLASS_FILE = common dso_local global i32 0, align 4
@FILE__EXECUTE_NO_TRANS = common dso_local global i32 0, align 4
@PROCESS__TRANSITION = common dso_local global i32 0, align 4
@FILE__ENTRYPOINT = common dso_local global i32 0, align 4
@LSM_UNSAFE_SHARE = common dso_local global i32 0, align 4
@PROCESS__SHARE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@LSM_UNSAFE_PTRACE = common dso_local global i32 0, align 4
@PROCESS__PTRACE = common dso_local global i32 0, align 4
@PER_CLEAR_ON_SETID = common dso_local global i32 0, align 4
@PROCESS__NOATSECURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.linux_binprm*)* @selinux_bprm_set_creds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_bprm_set_creds(%struct.linux_binprm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.linux_binprm*, align 8
  %4 = alloca %struct.task_security_struct*, align 8
  %5 = alloca %struct.task_security_struct*, align 8
  %6 = alloca %struct.inode_security_struct*, align 8
  %7 = alloca %struct.common_audit_data, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.linux_binprm* %0, %struct.linux_binprm** %3, align 8
  %11 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %12 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.inode* @file_inode(i32 %13)
  store %struct.inode* %14, %struct.inode** %8, align 8
  %15 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %16 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %229

20:                                               ; preds = %1
  %21 = call i32 (...) @current_cred()
  %22 = call i8* @selinux_cred(i32 %21)
  %23 = bitcast i8* %22 to %struct.task_security_struct*
  store %struct.task_security_struct* %23, %struct.task_security_struct** %4, align 8
  %24 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %25 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @selinux_cred(i32 %26)
  %28 = bitcast i8* %27 to %struct.task_security_struct*
  store %struct.task_security_struct* %28, %struct.task_security_struct** %5, align 8
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = call %struct.inode_security_struct* @inode_security(%struct.inode* %29)
  store %struct.inode_security_struct* %30, %struct.inode_security_struct** %6, align 8
  %31 = load %struct.task_security_struct*, %struct.task_security_struct** %4, align 8
  %32 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.task_security_struct*, %struct.task_security_struct** %5, align 8
  %35 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.task_security_struct*, %struct.task_security_struct** %4, align 8
  %37 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.task_security_struct*, %struct.task_security_struct** %5, align 8
  %40 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.task_security_struct*, %struct.task_security_struct** %5, align 8
  %42 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %41, i32 0, i32 5
  store i64 0, i64* %42, align 8
  %43 = load %struct.task_security_struct*, %struct.task_security_struct** %5, align 8
  %44 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %43, i32 0, i32 4
  store i64 0, i64* %44, align 8
  %45 = load %struct.task_security_struct*, %struct.task_security_struct** %5, align 8
  %46 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load %struct.task_security_struct*, %struct.task_security_struct** %4, align 8
  %48 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %20
  %52 = load %struct.task_security_struct*, %struct.task_security_struct** %4, align 8
  %53 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.task_security_struct*, %struct.task_security_struct** %5, align 8
  %56 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.task_security_struct*, %struct.task_security_struct** %5, align 8
  %58 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %60 = load %struct.task_security_struct*, %struct.task_security_struct** %4, align 8
  %61 = load %struct.task_security_struct*, %struct.task_security_struct** %5, align 8
  %62 = call i32 @check_nnp_nosuid(%struct.linux_binprm* %59, %struct.task_security_struct* %60, %struct.task_security_struct* %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %51
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %2, align 4
  br label %229

67:                                               ; preds = %51
  br label %97

68:                                               ; preds = %20
  %69 = load %struct.task_security_struct*, %struct.task_security_struct** %4, align 8
  %70 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.inode_security_struct*, %struct.inode_security_struct** %6, align 8
  %73 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* @SECCLASS_PROCESS, align 4
  %76 = load %struct.task_security_struct*, %struct.task_security_struct** %5, align 8
  %77 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %76, i32 0, i32 0
  %78 = call i32 @security_transition_sid(i32* @selinux_state, i64 %71, i64 %74, i32 %75, i32* null, i64* %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %68
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %2, align 4
  br label %229

83:                                               ; preds = %68
  %84 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %85 = load %struct.task_security_struct*, %struct.task_security_struct** %4, align 8
  %86 = load %struct.task_security_struct*, %struct.task_security_struct** %5, align 8
  %87 = call i32 @check_nnp_nosuid(%struct.linux_binprm* %84, %struct.task_security_struct* %85, %struct.task_security_struct* %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = load %struct.task_security_struct*, %struct.task_security_struct** %4, align 8
  %92 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.task_security_struct*, %struct.task_security_struct** %5, align 8
  %95 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %90, %83
  br label %97

97:                                               ; preds = %96, %67
  %98 = load i32, i32* @LSM_AUDIT_DATA_FILE, align 4
  %99 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %7, i32 0, i32 1
  store i32 %98, i32* %99, align 4
  %100 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %101 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %7, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  %105 = load %struct.task_security_struct*, %struct.task_security_struct** %5, align 8
  %106 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.task_security_struct*, %struct.task_security_struct** %4, align 8
  %109 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %107, %110
  br i1 %111, label %112, label %127

112:                                              ; preds = %97
  %113 = load %struct.task_security_struct*, %struct.task_security_struct** %4, align 8
  %114 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.inode_security_struct*, %struct.inode_security_struct** %6, align 8
  %117 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* @SECCLASS_FILE, align 4
  %120 = load i32, i32* @FILE__EXECUTE_NO_TRANS, align 4
  %121 = call i32 @avc_has_perm(i32* @selinux_state, i64 %115, i64 %118, i32 %119, i32 %120, %struct.common_audit_data* %7)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %112
  %125 = load i32, i32* %9, align 4
  store i32 %125, i32* %2, align 4
  br label %229

126:                                              ; preds = %112
  br label %228

127:                                              ; preds = %97
  %128 = load %struct.task_security_struct*, %struct.task_security_struct** %4, align 8
  %129 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.task_security_struct*, %struct.task_security_struct** %5, align 8
  %132 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* @SECCLASS_PROCESS, align 4
  %135 = load i32, i32* @PROCESS__TRANSITION, align 4
  %136 = call i32 @avc_has_perm(i32* @selinux_state, i64 %130, i64 %133, i32 %134, i32 %135, %struct.common_audit_data* %7)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %127
  %140 = load i32, i32* %9, align 4
  store i32 %140, i32* %2, align 4
  br label %229

141:                                              ; preds = %127
  %142 = load %struct.task_security_struct*, %struct.task_security_struct** %5, align 8
  %143 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.inode_security_struct*, %struct.inode_security_struct** %6, align 8
  %146 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i32, i32* @SECCLASS_FILE, align 4
  %149 = load i32, i32* @FILE__ENTRYPOINT, align 4
  %150 = call i32 @avc_has_perm(i32* @selinux_state, i64 %144, i64 %147, i32 %148, i32 %149, %struct.common_audit_data* %7)
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %141
  %154 = load i32, i32* %9, align 4
  store i32 %154, i32* %2, align 4
  br label %229

155:                                              ; preds = %141
  %156 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %157 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @LSM_UNSAFE_SHARE, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %178

162:                                              ; preds = %155
  %163 = load %struct.task_security_struct*, %struct.task_security_struct** %4, align 8
  %164 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.task_security_struct*, %struct.task_security_struct** %5, align 8
  %167 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i32, i32* @SECCLASS_PROCESS, align 4
  %170 = load i32, i32* @PROCESS__SHARE, align 4
  %171 = call i32 @avc_has_perm(i32* @selinux_state, i64 %165, i64 %168, i32 %169, i32 %170, %struct.common_audit_data* null)
  store i32 %171, i32* %9, align 4
  %172 = load i32, i32* %9, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %162
  %175 = load i32, i32* @EPERM, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %2, align 4
  br label %229

177:                                              ; preds = %162
  br label %178

178:                                              ; preds = %177, %155
  %179 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %180 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @LSM_UNSAFE_PTRACE, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %204

185:                                              ; preds = %178
  %186 = call i64 (...) @ptrace_parent_sid()
  store i64 %186, i64* %10, align 8
  %187 = load i64, i64* %10, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %203

189:                                              ; preds = %185
  %190 = load i64, i64* %10, align 8
  %191 = load %struct.task_security_struct*, %struct.task_security_struct** %5, align 8
  %192 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i32, i32* @SECCLASS_PROCESS, align 4
  %195 = load i32, i32* @PROCESS__PTRACE, align 4
  %196 = call i32 @avc_has_perm(i32* @selinux_state, i64 %190, i64 %193, i32 %194, i32 %195, %struct.common_audit_data* null)
  store i32 %196, i32* %9, align 4
  %197 = load i32, i32* %9, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %189
  %200 = load i32, i32* @EPERM, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %2, align 4
  br label %229

202:                                              ; preds = %189
  br label %203

203:                                              ; preds = %202, %185
  br label %204

204:                                              ; preds = %203, %178
  %205 = load i32, i32* @PER_CLEAR_ON_SETID, align 4
  %206 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %207 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = or i32 %208, %205
  store i32 %209, i32* %207, align 8
  %210 = load %struct.task_security_struct*, %struct.task_security_struct** %4, align 8
  %211 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.task_security_struct*, %struct.task_security_struct** %5, align 8
  %214 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i32, i32* @SECCLASS_PROCESS, align 4
  %217 = load i32, i32* @PROCESS__NOATSECURE, align 4
  %218 = call i32 @avc_has_perm(i32* @selinux_state, i64 %212, i64 %215, i32 %216, i32 %217, %struct.common_audit_data* null)
  store i32 %218, i32* %9, align 4
  %219 = load i32, i32* %9, align 4
  %220 = icmp ne i32 %219, 0
  %221 = xor i1 %220, true
  %222 = xor i1 %221, true
  %223 = zext i1 %222 to i32
  %224 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %225 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = or i32 %226, %223
  store i32 %227, i32* %225, align 4
  br label %228

228:                                              ; preds = %204, %126
  store i32 0, i32* %2, align 4
  br label %229

229:                                              ; preds = %228, %199, %174, %153, %139, %124, %81, %65, %19
  %230 = load i32, i32* %2, align 4
  ret i32 %230
}

declare dso_local %struct.inode* @file_inode(i32) #1

declare dso_local i8* @selinux_cred(i32) #1

declare dso_local i32 @current_cred(...) #1

declare dso_local %struct.inode_security_struct* @inode_security(%struct.inode*) #1

declare dso_local i32 @check_nnp_nosuid(%struct.linux_binprm*, %struct.task_security_struct*, %struct.task_security_struct*) #1

declare dso_local i32 @security_transition_sid(i32*, i64, i64, i32, i32*, i64*) #1

declare dso_local i32 @avc_has_perm(i32*, i64, i64, i32, i32, %struct.common_audit_data*) #1

declare dso_local i64 @ptrace_parent_sid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
