; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_inode_follow_link.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_inode_follow_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.cred = type { i32 }
%struct.common_audit_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.dentry* }
%struct.inode_security_struct = type { i32, i32 }

@LSM_AUDIT_DATA_DENTRY = common dso_local global i32 0, align 4
@selinux_state = common dso_local global i32 0, align 4
@FILE__READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, i32)* @selinux_inode_follow_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_inode_follow_link(%struct.dentry* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cred*, align 8
  %9 = alloca %struct.common_audit_data, align 8
  %10 = alloca %struct.inode_security_struct*, align 8
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %12, %struct.cred** %8, align 8
  %13 = load %struct.cred*, %struct.cred** %8, align 8
  %14 = call i32 @validate_creds(%struct.cred* %13)
  %15 = load i32, i32* @LSM_AUDIT_DATA_DENTRY, align 4
  %16 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %9, i32 0, i32 1
  store i32 %15, i32* %16, align 8
  %17 = load %struct.dentry*, %struct.dentry** %5, align 8
  %18 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %9, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.dentry* %17, %struct.dentry** %19, align 8
  %20 = load %struct.cred*, %struct.cred** %8, align 8
  %21 = call i32 @cred_sid(%struct.cred* %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call %struct.inode_security_struct* @inode_security_rcu(%struct.inode* %22, i32 %23)
  store %struct.inode_security_struct* %24, %struct.inode_security_struct** %10, align 8
  %25 = load %struct.inode_security_struct*, %struct.inode_security_struct** %10, align 8
  %26 = call i64 @IS_ERR(%struct.inode_security_struct* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load %struct.inode_security_struct*, %struct.inode_security_struct** %10, align 8
  %30 = call i32 @PTR_ERR(%struct.inode_security_struct* %29)
  store i32 %30, i32* %4, align 4
  br label %41

31:                                               ; preds = %3
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.inode_security_struct*, %struct.inode_security_struct** %10, align 8
  %34 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.inode_security_struct*, %struct.inode_security_struct** %10, align 8
  %37 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @FILE__READ, align 4
  %40 = call i32 @avc_has_perm(i32* @selinux_state, i32 %32, i32 %35, i32 %38, i32 %39, %struct.common_audit_data* %9)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %31, %28
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @validate_creds(%struct.cred*) #1

declare dso_local i32 @cred_sid(%struct.cred*) #1

declare dso_local %struct.inode_security_struct* @inode_security_rcu(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode_security_struct*) #1

declare dso_local i32 @PTR_ERR(%struct.inode_security_struct*) #1

declare dso_local i32 @avc_has_perm(i32*, i32, i32, i32, i32, %struct.common_audit_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
