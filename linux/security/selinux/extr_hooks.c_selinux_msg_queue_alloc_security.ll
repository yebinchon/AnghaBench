; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_msg_queue_alloc_security.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_msg_queue_alloc_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kern_ipc_perm = type { i32 }
%struct.ipc_security_struct = type { i32 }
%struct.common_audit_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@SECCLASS_MSGQ = common dso_local global i32 0, align 4
@LSM_AUDIT_DATA_IPC = common dso_local global i32 0, align 4
@selinux_state = common dso_local global i32 0, align 4
@MSGQ__CREATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kern_ipc_perm*)* @selinux_msg_queue_alloc_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_msg_queue_alloc_security(%struct.kern_ipc_perm* %0) #0 {
  %2 = alloca %struct.kern_ipc_perm*, align 8
  %3 = alloca %struct.ipc_security_struct*, align 8
  %4 = alloca %struct.common_audit_data, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kern_ipc_perm* %0, %struct.kern_ipc_perm** %2, align 8
  %7 = call i32 (...) @current_sid()
  store i32 %7, i32* %5, align 4
  %8 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %2, align 8
  %9 = call %struct.ipc_security_struct* @selinux_ipc(%struct.kern_ipc_perm* %8)
  store %struct.ipc_security_struct* %9, %struct.ipc_security_struct** %3, align 8
  %10 = load %struct.ipc_security_struct*, %struct.ipc_security_struct** %3, align 8
  %11 = load i32, i32* @SECCLASS_MSGQ, align 4
  %12 = call i32 @ipc_init_security(%struct.ipc_security_struct* %10, i32 %11)
  %13 = load i32, i32* @LSM_AUDIT_DATA_IPC, align 4
  %14 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %4, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %2, align 8
  %16 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %4, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.ipc_security_struct*, %struct.ipc_security_struct** %3, align 8
  %22 = getelementptr inbounds %struct.ipc_security_struct, %struct.ipc_security_struct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SECCLASS_MSGQ, align 4
  %25 = load i32, i32* @MSGQ__CREATE, align 4
  %26 = call i32 @avc_has_perm(i32* @selinux_state, i32 %20, i32 %23, i32 %24, i32 %25, %struct.common_audit_data* %4)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  ret i32 %27
}

declare dso_local i32 @current_sid(...) #1

declare dso_local %struct.ipc_security_struct* @selinux_ipc(%struct.kern_ipc_perm*) #1

declare dso_local i32 @ipc_init_security(%struct.ipc_security_struct*, i32) #1

declare dso_local i32 @avc_has_perm(i32*, i32, i32, i32, i32, %struct.common_audit_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
