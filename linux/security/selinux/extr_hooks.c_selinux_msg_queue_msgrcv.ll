; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_msg_queue_msgrcv.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_msg_queue_msgrcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kern_ipc_perm = type { i32 }
%struct.msg_msg = type { i32 }
%struct.task_struct = type { i32 }
%struct.ipc_security_struct = type { i32 }
%struct.msg_security_struct = type { i32 }
%struct.common_audit_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@LSM_AUDIT_DATA_IPC = common dso_local global i32 0, align 4
@selinux_state = common dso_local global i32 0, align 4
@SECCLASS_MSGQ = common dso_local global i32 0, align 4
@MSGQ__READ = common dso_local global i32 0, align 4
@SECCLASS_MSG = common dso_local global i32 0, align 4
@MSG__RECEIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kern_ipc_perm*, %struct.msg_msg*, %struct.task_struct*, i64, i32)* @selinux_msg_queue_msgrcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_msg_queue_msgrcv(%struct.kern_ipc_perm* %0, %struct.msg_msg* %1, %struct.task_struct* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.kern_ipc_perm*, align 8
  %7 = alloca %struct.msg_msg*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ipc_security_struct*, align 8
  %12 = alloca %struct.msg_security_struct*, align 8
  %13 = alloca %struct.common_audit_data, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.kern_ipc_perm* %0, %struct.kern_ipc_perm** %6, align 8
  store %struct.msg_msg* %1, %struct.msg_msg** %7, align 8
  store %struct.task_struct* %2, %struct.task_struct** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %17 = call i32 @task_sid(%struct.task_struct* %16)
  store i32 %17, i32* %14, align 4
  %18 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %19 = call %struct.ipc_security_struct* @selinux_ipc(%struct.kern_ipc_perm* %18)
  store %struct.ipc_security_struct* %19, %struct.ipc_security_struct** %11, align 8
  %20 = load %struct.msg_msg*, %struct.msg_msg** %7, align 8
  %21 = call %struct.msg_security_struct* @selinux_msg_msg(%struct.msg_msg* %20)
  store %struct.msg_security_struct* %21, %struct.msg_security_struct** %12, align 8
  %22 = load i32, i32* @LSM_AUDIT_DATA_IPC, align 4
  %23 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %13, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %25 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %13, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load %struct.ipc_security_struct*, %struct.ipc_security_struct** %11, align 8
  %31 = getelementptr inbounds %struct.ipc_security_struct, %struct.ipc_security_struct* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SECCLASS_MSGQ, align 4
  %34 = load i32, i32* @MSGQ__READ, align 4
  %35 = call i32 @avc_has_perm(i32* @selinux_state, i32 %29, i32 %32, i32 %33, i32 %34, %struct.common_audit_data* %13)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %5
  %39 = load i32, i32* %14, align 4
  %40 = load %struct.msg_security_struct*, %struct.msg_security_struct** %12, align 8
  %41 = getelementptr inbounds %struct.msg_security_struct, %struct.msg_security_struct* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SECCLASS_MSG, align 4
  %44 = load i32, i32* @MSG__RECEIVE, align 4
  %45 = call i32 @avc_has_perm(i32* @selinux_state, i32 %39, i32 %42, i32 %43, i32 %44, %struct.common_audit_data* %13)
  store i32 %45, i32* %15, align 4
  br label %46

46:                                               ; preds = %38, %5
  %47 = load i32, i32* %15, align 4
  ret i32 %47
}

declare dso_local i32 @task_sid(%struct.task_struct*) #1

declare dso_local %struct.ipc_security_struct* @selinux_ipc(%struct.kern_ipc_perm*) #1

declare dso_local %struct.msg_security_struct* @selinux_msg_msg(%struct.msg_msg*) #1

declare dso_local i32 @avc_has_perm(i32*, i32, i32, i32, i32, %struct.common_audit_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
