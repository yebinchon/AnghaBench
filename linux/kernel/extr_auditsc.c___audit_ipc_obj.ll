; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_auditsc.c___audit_ipc_obj.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_auditsc.c___audit_ipc_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kern_ipc_perm = type { i32, i32, i32 }
%struct.audit_context = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i32, i32 }

@AUDIT_IPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__audit_ipc_obj(%struct.kern_ipc_perm* %0) #0 {
  %2 = alloca %struct.kern_ipc_perm*, align 8
  %3 = alloca %struct.audit_context*, align 8
  store %struct.kern_ipc_perm* %0, %struct.kern_ipc_perm** %2, align 8
  %4 = call %struct.audit_context* (...) @audit_context()
  store %struct.audit_context* %4, %struct.audit_context** %3, align 8
  %5 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %2, align 8
  %6 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %9 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 4
  store i32 %7, i32* %10, align 8
  %11 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %2, align 8
  %12 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %15 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  store i32 %13, i32* %16, align 4
  %17 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %2, align 8
  %18 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %21 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 8
  %23 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %24 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %2, align 8
  %27 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %28 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @security_ipc_getsecid(%struct.kern_ipc_perm* %26, i32* %29)
  %31 = load i32, i32* @AUDIT_IPC, align 4
  %32 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %33 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  ret void
}

declare dso_local %struct.audit_context* @audit_context(...) #1

declare dso_local i32 @security_ipc_getsecid(%struct.kern_ipc_perm*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
