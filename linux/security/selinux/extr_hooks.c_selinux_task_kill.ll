; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_task_kill.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_task_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.kernel_siginfo = type { i32 }
%struct.cred = type { i32 }

@PROCESS__SIGNULL = common dso_local global i32 0, align 4
@selinux_state = common dso_local global i32 0, align 4
@SECCLASS_PROCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.kernel_siginfo*, i32, %struct.cred*)* @selinux_task_kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_task_kill(%struct.task_struct* %0, %struct.kernel_siginfo* %1, i32 %2, %struct.cred* %3) #0 {
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.kernel_siginfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cred*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store %struct.kernel_siginfo* %1, %struct.kernel_siginfo** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.cred* %3, %struct.cred** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* @PROCESS__SIGNULL, align 4
  store i32 %14, i32* %10, align 4
  br label %18

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @signal_to_av(i32 %16)
  store i32 %17, i32* %10, align 4
  br label %18

18:                                               ; preds = %15, %13
  %19 = load %struct.cred*, %struct.cred** %8, align 8
  %20 = icmp ne %struct.cred* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = call i32 (...) @current_sid()
  store i32 %22, i32* %9, align 4
  br label %26

23:                                               ; preds = %18
  %24 = load %struct.cred*, %struct.cred** %8, align 8
  %25 = call i32 @cred_sid(%struct.cred* %24)
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %23, %21
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %29 = call i32 @task_sid(%struct.task_struct* %28)
  %30 = load i32, i32* @SECCLASS_PROCESS, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @avc_has_perm(i32* @selinux_state, i32 %27, i32 %29, i32 %30, i32 %31, i32* null)
  ret i32 %32
}

declare dso_local i32 @signal_to_av(i32) #1

declare dso_local i32 @current_sid(...) #1

declare dso_local i32 @cred_sid(%struct.cred*) #1

declare dso_local i32 @avc_has_perm(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @task_sid(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
