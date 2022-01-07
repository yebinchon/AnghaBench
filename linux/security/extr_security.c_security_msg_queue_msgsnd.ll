; ModuleID = '/home/carl/AnghaBench/linux/security/extr_security.c_security_msg_queue_msgsnd.c'
source_filename = "/home/carl/AnghaBench/linux/security/extr_security.c_security_msg_queue_msgsnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kern_ipc_perm = type { i32 }
%struct.msg_msg = type { i32 }

@msg_queue_msgsnd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_msg_queue_msgsnd(%struct.kern_ipc_perm* %0, %struct.msg_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.kern_ipc_perm*, align 8
  %5 = alloca %struct.msg_msg*, align 8
  %6 = alloca i32, align 4
  store %struct.kern_ipc_perm* %0, %struct.kern_ipc_perm** %4, align 8
  store %struct.msg_msg* %1, %struct.msg_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @msg_queue_msgsnd, align 4
  %8 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %4, align 8
  %9 = load %struct.msg_msg*, %struct.msg_msg** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @call_int_hook(i32 %7, i32 0, %struct.kern_ipc_perm* %8, %struct.msg_msg* %9, i32 %10)
  ret i32 %11
}

declare dso_local i32 @call_int_hook(i32, i32, %struct.kern_ipc_perm*, %struct.msg_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
