; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_may_create.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_may_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.superblock_security_struct* }
%struct.superblock_security_struct = type { i32 }
%struct.dentry = type { i32 }
%struct.task_security_struct = type { i32 }
%struct.inode_security_struct = type { i32 }
%struct.common_audit_data = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.dentry* }

@LSM_AUDIT_DATA_DENTRY = common dso_local global i32 0, align 4
@selinux_state = common dso_local global i32 0, align 4
@SECCLASS_DIR = common dso_local global i32 0, align 4
@DIR__ADD_NAME = common dso_local global i32 0, align 4
@DIR__SEARCH = common dso_local global i32 0, align 4
@FILE__CREATE = common dso_local global i32 0, align 4
@SECCLASS_FILESYSTEM = common dso_local global i32 0, align 4
@FILESYSTEM__ASSOCIATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @may_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @may_create(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.task_security_struct*, align 8
  %9 = alloca %struct.inode_security_struct*, align 8
  %10 = alloca %struct.superblock_security_struct*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.common_audit_data, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = call i32 (...) @current_cred()
  %16 = call %struct.task_security_struct* @selinux_cred(i32 %15)
  store %struct.task_security_struct* %16, %struct.task_security_struct** %8, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = call %struct.inode_security_struct* @inode_security(%struct.inode* %17)
  store %struct.inode_security_struct* %18, %struct.inode_security_struct** %9, align 8
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %22, align 8
  store %struct.superblock_security_struct* %23, %struct.superblock_security_struct** %10, align 8
  %24 = load %struct.task_security_struct*, %struct.task_security_struct** %8, align 8
  %25 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* @LSM_AUDIT_DATA_DENTRY, align 4
  %28 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %13, i32 0, i32 1
  store i32 %27, i32* %28, align 8
  %29 = load %struct.dentry*, %struct.dentry** %6, align 8
  %30 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %13, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store %struct.dentry* %29, %struct.dentry** %31, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.inode_security_struct*, %struct.inode_security_struct** %9, align 8
  %34 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SECCLASS_DIR, align 4
  %37 = load i32, i32* @DIR__ADD_NAME, align 4
  %38 = load i32, i32* @DIR__SEARCH, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @avc_has_perm(i32* @selinux_state, i32 %32, i32 %35, i32 %36, i32 %39, %struct.common_audit_data* %13)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %3
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %4, align 4
  br label %75

45:                                               ; preds = %3
  %46 = call i32 (...) @current_cred()
  %47 = call %struct.task_security_struct* @selinux_cred(i32 %46)
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = load %struct.dentry*, %struct.dentry** %6, align 8
  %50 = getelementptr inbounds %struct.dentry, %struct.dentry* %49, i32 0, i32 0
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @selinux_determine_inode_label(%struct.task_security_struct* %47, %struct.inode* %48, i32* %50, i32 %51, i32* %12)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* %4, align 4
  br label %75

57:                                               ; preds = %45
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @FILE__CREATE, align 4
  %62 = call i32 @avc_has_perm(i32* @selinux_state, i32 %58, i32 %59, i32 %60, i32 %61, %struct.common_audit_data* %13)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %14, align 4
  store i32 %66, i32* %4, align 4
  br label %75

67:                                               ; preds = %57
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %10, align 8
  %70 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @SECCLASS_FILESYSTEM, align 4
  %73 = load i32, i32* @FILESYSTEM__ASSOCIATE, align 4
  %74 = call i32 @avc_has_perm(i32* @selinux_state, i32 %68, i32 %71, i32 %72, i32 %73, %struct.common_audit_data* %13)
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %67, %65, %55, %43
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.task_security_struct* @selinux_cred(i32) #1

declare dso_local i32 @current_cred(...) #1

declare dso_local %struct.inode_security_struct* @inode_security(%struct.inode*) #1

declare dso_local i32 @avc_has_perm(i32*, i32, i32, i32, i32, %struct.common_audit_data*) #1

declare dso_local i32 @selinux_determine_inode_label(%struct.task_security_struct*, %struct.inode*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
