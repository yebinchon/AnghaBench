; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_inode_setxattr.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_inode_setxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.superblock_security_struct* }
%struct.superblock_security_struct = type { i32, i32 }
%struct.inode_security_struct = type { i32, i32 }
%struct.common_audit_data = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.dentry* }
%struct.audit_buffer = type { i32 }

@XATTR_NAME_SELINUX = common dso_local global i32 0, align 4
@FILE__SETATTR = common dso_local global i32 0, align 4
@SBLABEL_MNT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@LSM_AUDIT_DATA_DENTRY = common dso_local global i32 0, align 4
@selinux_state = common dso_local global i32 0, align 4
@FILE__RELABELFROM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@AUDIT_SELINUX_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"op=setxattr invalid_context=\00", align 1
@FILE__RELABELTO = common dso_local global i32 0, align 4
@SECCLASS_FILESYSTEM = common dso_local global i32 0, align 4
@FILESYSTEM__ASSOCIATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i8*, i8*, i64, i32)* @selinux_inode_setxattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_inode_setxattr(%struct.dentry* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.inode_security_struct*, align 8
  %14 = alloca %struct.superblock_security_struct*, align 8
  %15 = alloca %struct.common_audit_data, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.audit_buffer*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  store %struct.dentry* %0, %struct.dentry** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %22 = load %struct.dentry*, %struct.dentry** %7, align 8
  %23 = call %struct.inode* @d_backing_inode(%struct.dentry* %22)
  store %struct.inode* %23, %struct.inode** %12, align 8
  %24 = call i32 (...) @current_sid()
  store i32 %24, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* @XATTR_NAME_SELINUX, align 4
  %27 = call i64 @strcmp(i8* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %5
  %30 = load %struct.dentry*, %struct.dentry** %7, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @cap_inode_setxattr(%struct.dentry* %30, i8* %31, i8* %32, i64 %33, i32 %34)
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* %18, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %18, align 4
  store i32 %39, i32* %6, align 4
  br label %176

40:                                               ; preds = %29
  %41 = call i32 (...) @current_cred()
  %42 = load %struct.dentry*, %struct.dentry** %7, align 8
  %43 = load i32, i32* @FILE__SETATTR, align 4
  %44 = call i32 @dentry_has_perm(i32 %41, %struct.dentry* %42, i32 %43)
  store i32 %44, i32* %6, align 4
  br label %176

45:                                               ; preds = %5
  %46 = load %struct.inode*, %struct.inode** %12, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %49, align 8
  store %struct.superblock_security_struct* %50, %struct.superblock_security_struct** %14, align 8
  %51 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %14, align 8
  %52 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SBLABEL_MNT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %45
  %58 = load i32, i32* @EOPNOTSUPP, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %176

60:                                               ; preds = %45
  %61 = load %struct.inode*, %struct.inode** %12, align 8
  %62 = call i32 @inode_owner_or_capable(%struct.inode* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* @EPERM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %176

67:                                               ; preds = %60
  %68 = load i32, i32* @LSM_AUDIT_DATA_DENTRY, align 4
  %69 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %15, i32 0, i32 1
  store i32 %68, i32* %69, align 8
  %70 = load %struct.dentry*, %struct.dentry** %7, align 8
  %71 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %15, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store %struct.dentry* %70, %struct.dentry** %72, align 8
  %73 = load %struct.dentry*, %struct.dentry** %7, align 8
  %74 = call %struct.inode_security_struct* @backing_inode_security(%struct.dentry* %73)
  store %struct.inode_security_struct* %74, %struct.inode_security_struct** %13, align 8
  %75 = load i32, i32* %17, align 4
  %76 = load %struct.inode_security_struct*, %struct.inode_security_struct** %13, align 8
  %77 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.inode_security_struct*, %struct.inode_security_struct** %13, align 8
  %80 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @FILE__RELABELFROM, align 4
  %83 = call i32 @avc_has_perm(i32* @selinux_state, i32 %75, i32 %78, i32 %81, i32 %82, %struct.common_audit_data* %15)
  store i32 %83, i32* %18, align 4
  %84 = load i32, i32* %18, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %67
  %87 = load i32, i32* %18, align 4
  store i32 %87, i32* %6, align 4
  br label %176

88:                                               ; preds = %67
  %89 = load i8*, i8** %9, align 8
  %90 = load i64, i64* %10, align 8
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = call i32 @security_context_to_sid(i32* @selinux_state, i8* %89, i64 %90, i32* %16, i32 %91)
  store i32 %92, i32* %18, align 4
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %137

97:                                               ; preds = %88
  %98 = call i32 @has_cap_mac_admin(i32 1)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %133, label %100

100:                                              ; preds = %97
  %101 = load i8*, i8** %9, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %118

103:                                              ; preds = %100
  %104 = load i8*, i8** %9, align 8
  store i8* %104, i8** %21, align 8
  %105 = load i8*, i8** %21, align 8
  %106 = load i64, i64* %10, align 8
  %107 = sub i64 %106, 1
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %103
  %113 = load i64, i64* %10, align 8
  %114 = sub i64 %113, 1
  store i64 %114, i64* %20, align 8
  br label %117

115:                                              ; preds = %103
  %116 = load i64, i64* %10, align 8
  store i64 %116, i64* %20, align 8
  br label %117

117:                                              ; preds = %115, %112
  br label %119

118:                                              ; preds = %100
  store i64 0, i64* %20, align 8
  br label %119

119:                                              ; preds = %118, %117
  %120 = call i32 (...) @audit_context()
  %121 = load i32, i32* @GFP_ATOMIC, align 4
  %122 = load i32, i32* @AUDIT_SELINUX_ERR, align 4
  %123 = call %struct.audit_buffer* @audit_log_start(i32 %120, i32 %121, i32 %122)
  store %struct.audit_buffer* %123, %struct.audit_buffer** %19, align 8
  %124 = load %struct.audit_buffer*, %struct.audit_buffer** %19, align 8
  %125 = call i32 @audit_log_format(%struct.audit_buffer* %124, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %126 = load %struct.audit_buffer*, %struct.audit_buffer** %19, align 8
  %127 = load i8*, i8** %9, align 8
  %128 = load i64, i64* %20, align 8
  %129 = call i32 @audit_log_n_untrustedstring(%struct.audit_buffer* %126, i8* %127, i64 %128)
  %130 = load %struct.audit_buffer*, %struct.audit_buffer** %19, align 8
  %131 = call i32 @audit_log_end(%struct.audit_buffer* %130)
  %132 = load i32, i32* %18, align 4
  store i32 %132, i32* %6, align 4
  br label %176

133:                                              ; preds = %97
  %134 = load i8*, i8** %9, align 8
  %135 = load i64, i64* %10, align 8
  %136 = call i32 @security_context_to_sid_force(i32* @selinux_state, i8* %134, i64 %135, i32* %16)
  store i32 %136, i32* %18, align 4
  br label %137

137:                                              ; preds = %133, %88
  %138 = load i32, i32* %18, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = load i32, i32* %18, align 4
  store i32 %141, i32* %6, align 4
  br label %176

142:                                              ; preds = %137
  %143 = load i32, i32* %17, align 4
  %144 = load i32, i32* %16, align 4
  %145 = load %struct.inode_security_struct*, %struct.inode_security_struct** %13, align 8
  %146 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @FILE__RELABELTO, align 4
  %149 = call i32 @avc_has_perm(i32* @selinux_state, i32 %143, i32 %144, i32 %147, i32 %148, %struct.common_audit_data* %15)
  store i32 %149, i32* %18, align 4
  %150 = load i32, i32* %18, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %142
  %153 = load i32, i32* %18, align 4
  store i32 %153, i32* %6, align 4
  br label %176

154:                                              ; preds = %142
  %155 = load %struct.inode_security_struct*, %struct.inode_security_struct** %13, align 8
  %156 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %16, align 4
  %159 = load i32, i32* %17, align 4
  %160 = load %struct.inode_security_struct*, %struct.inode_security_struct** %13, align 8
  %161 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @security_validate_transition(i32* @selinux_state, i32 %157, i32 %158, i32 %159, i32 %162)
  store i32 %163, i32* %18, align 4
  %164 = load i32, i32* %18, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %154
  %167 = load i32, i32* %18, align 4
  store i32 %167, i32* %6, align 4
  br label %176

168:                                              ; preds = %154
  %169 = load i32, i32* %16, align 4
  %170 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %14, align 8
  %171 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @SECCLASS_FILESYSTEM, align 4
  %174 = load i32, i32* @FILESYSTEM__ASSOCIATE, align 4
  %175 = call i32 @avc_has_perm(i32* @selinux_state, i32 %169, i32 %172, i32 %173, i32 %174, %struct.common_audit_data* %15)
  store i32 %175, i32* %6, align 4
  br label %176

176:                                              ; preds = %168, %166, %152, %140, %119, %86, %64, %57, %40, %38
  %177 = load i32, i32* %6, align 4
  ret i32 %177
}

declare dso_local %struct.inode* @d_backing_inode(%struct.dentry*) #1

declare dso_local i32 @current_sid(...) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @cap_inode_setxattr(%struct.dentry*, i8*, i8*, i64, i32) #1

declare dso_local i32 @dentry_has_perm(i32, %struct.dentry*, i32) #1

declare dso_local i32 @current_cred(...) #1

declare dso_local i32 @inode_owner_or_capable(%struct.inode*) #1

declare dso_local %struct.inode_security_struct* @backing_inode_security(%struct.dentry*) #1

declare dso_local i32 @avc_has_perm(i32*, i32, i32, i32, i32, %struct.common_audit_data*) #1

declare dso_local i32 @security_context_to_sid(i32*, i8*, i64, i32*, i32) #1

declare dso_local i32 @has_cap_mac_admin(i32) #1

declare dso_local %struct.audit_buffer* @audit_log_start(i32, i32, i32) #1

declare dso_local i32 @audit_context(...) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*) #1

declare dso_local i32 @audit_log_n_untrustedstring(%struct.audit_buffer*, i8*, i64) #1

declare dso_local i32 @audit_log_end(%struct.audit_buffer*) #1

declare dso_local i32 @security_context_to_sid_force(i32*, i8*, i64, i32*) #1

declare dso_local i32 @security_validate_transition(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
