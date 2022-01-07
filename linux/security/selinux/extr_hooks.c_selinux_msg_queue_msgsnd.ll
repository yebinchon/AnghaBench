; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_msg_queue_msgsnd.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_msg_queue_msgsnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kern_ipc_perm = type { i32 }
%struct.msg_msg = type { i32 }
%struct.ipc_security_struct = type { i64 }
%struct.msg_security_struct = type { i64 }
%struct.common_audit_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@SECINITSID_UNLABELED = common dso_local global i64 0, align 8
@selinux_state = common dso_local global i32 0, align 4
@SECCLASS_MSG = common dso_local global i32 0, align 4
@LSM_AUDIT_DATA_IPC = common dso_local global i32 0, align 4
@SECCLASS_MSGQ = common dso_local global i32 0, align 4
@MSGQ__WRITE = common dso_local global i32 0, align 4
@MSG__SEND = common dso_local global i32 0, align 4
@MSGQ__ENQUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kern_ipc_perm*, %struct.msg_msg*, i32)* @selinux_msg_queue_msgsnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_msg_queue_msgsnd(%struct.kern_ipc_perm* %0, %struct.msg_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kern_ipc_perm*, align 8
  %6 = alloca %struct.msg_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipc_security_struct*, align 8
  %9 = alloca %struct.msg_security_struct*, align 8
  %10 = alloca %struct.common_audit_data, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.kern_ipc_perm* %0, %struct.kern_ipc_perm** %5, align 8
  store %struct.msg_msg* %1, %struct.msg_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = call i64 (...) @current_sid()
  store i64 %13, i64* %11, align 8
  %14 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %5, align 8
  %15 = call %struct.ipc_security_struct* @selinux_ipc(%struct.kern_ipc_perm* %14)
  store %struct.ipc_security_struct* %15, %struct.ipc_security_struct** %8, align 8
  %16 = load %struct.msg_msg*, %struct.msg_msg** %6, align 8
  %17 = call %struct.msg_security_struct* @selinux_msg_msg(%struct.msg_msg* %16)
  store %struct.msg_security_struct* %17, %struct.msg_security_struct** %9, align 8
  %18 = load %struct.msg_security_struct*, %struct.msg_security_struct** %9, align 8
  %19 = getelementptr inbounds %struct.msg_security_struct, %struct.msg_security_struct* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SECINITSID_UNLABELED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %3
  %24 = load i64, i64* %11, align 8
  %25 = load %struct.ipc_security_struct*, %struct.ipc_security_struct** %8, align 8
  %26 = getelementptr inbounds %struct.ipc_security_struct, %struct.ipc_security_struct* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @SECCLASS_MSG, align 4
  %29 = load %struct.msg_security_struct*, %struct.msg_security_struct** %9, align 8
  %30 = getelementptr inbounds %struct.msg_security_struct, %struct.msg_security_struct* %29, i32 0, i32 0
  %31 = call i32 @security_transition_sid(i32* @selinux_state, i64 %24, i64 %27, i32 %28, i32* null, i64* %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %4, align 4
  br label %77

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36, %3
  %38 = load i32, i32* @LSM_AUDIT_DATA_IPC, align 4
  %39 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %10, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %5, align 8
  %41 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %10, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i64, i64* %11, align 8
  %46 = load %struct.ipc_security_struct*, %struct.ipc_security_struct** %8, align 8
  %47 = getelementptr inbounds %struct.ipc_security_struct, %struct.ipc_security_struct* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @SECCLASS_MSGQ, align 4
  %50 = load i32, i32* @MSGQ__WRITE, align 4
  %51 = call i32 @avc_has_perm(i32* @selinux_state, i64 %45, i64 %48, i32 %49, i32 %50, %struct.common_audit_data* %10)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %37
  %55 = load i64, i64* %11, align 8
  %56 = load %struct.msg_security_struct*, %struct.msg_security_struct** %9, align 8
  %57 = getelementptr inbounds %struct.msg_security_struct, %struct.msg_security_struct* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @SECCLASS_MSG, align 4
  %60 = load i32, i32* @MSG__SEND, align 4
  %61 = call i32 @avc_has_perm(i32* @selinux_state, i64 %55, i64 %58, i32 %59, i32 %60, %struct.common_audit_data* %10)
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %54, %37
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %62
  %66 = load %struct.msg_security_struct*, %struct.msg_security_struct** %9, align 8
  %67 = getelementptr inbounds %struct.msg_security_struct, %struct.msg_security_struct* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.ipc_security_struct*, %struct.ipc_security_struct** %8, align 8
  %70 = getelementptr inbounds %struct.ipc_security_struct, %struct.ipc_security_struct* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @SECCLASS_MSGQ, align 4
  %73 = load i32, i32* @MSGQ__ENQUEUE, align 4
  %74 = call i32 @avc_has_perm(i32* @selinux_state, i64 %68, i64 %71, i32 %72, i32 %73, %struct.common_audit_data* %10)
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %65, %62
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %34
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i64 @current_sid(...) #1

declare dso_local %struct.ipc_security_struct* @selinux_ipc(%struct.kern_ipc_perm*) #1

declare dso_local %struct.msg_security_struct* @selinux_msg_msg(%struct.msg_msg*) #1

declare dso_local i32 @security_transition_sid(i32*, i64, i64, i32, i32*, i64*) #1

declare dso_local i32 @avc_has_perm(i32*, i64, i64, i32, i32, %struct.common_audit_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
