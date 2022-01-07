; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_kernel_create_files_as.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_kernel_create_files_as.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32 }
%struct.inode = type { i32 }
%struct.inode_security_struct = type { i32 }
%struct.task_security_struct = type { i32 }

@selinux_state = common dso_local global i32 0, align 4
@SECCLASS_KERNEL_SERVICE = common dso_local global i32 0, align 4
@KERNEL_SERVICE__CREATE_FILES_AS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cred*, %struct.inode*)* @selinux_kernel_create_files_as to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_kernel_create_files_as(%struct.cred* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.cred*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode_security_struct*, align 8
  %6 = alloca %struct.task_security_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cred* %0, %struct.cred** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.inode_security_struct* @inode_security(%struct.inode* %9)
  store %struct.inode_security_struct* %10, %struct.inode_security_struct** %5, align 8
  %11 = load %struct.cred*, %struct.cred** %3, align 8
  %12 = call %struct.task_security_struct* @selinux_cred(%struct.cred* %11)
  store %struct.task_security_struct* %12, %struct.task_security_struct** %6, align 8
  %13 = call i32 (...) @current_sid()
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.inode_security_struct*, %struct.inode_security_struct** %5, align 8
  %16 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SECCLASS_KERNEL_SERVICE, align 4
  %19 = load i32, i32* @KERNEL_SERVICE__CREATE_FILES_AS, align 4
  %20 = call i32 @avc_has_perm(i32* @selinux_state, i32 %14, i32 %17, i32 %18, i32 %19, i32* null)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.inode_security_struct*, %struct.inode_security_struct** %5, align 8
  %25 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.task_security_struct*, %struct.task_security_struct** %6, align 8
  %28 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %23, %2
  %30 = load i32, i32* %8, align 4
  ret i32 %30
}

declare dso_local %struct.inode_security_struct* @inode_security(%struct.inode*) #1

declare dso_local %struct.task_security_struct* @selinux_cred(%struct.cred*) #1

declare dso_local i32 @current_sid(...) #1

declare dso_local i32 @avc_has_perm(i32*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
