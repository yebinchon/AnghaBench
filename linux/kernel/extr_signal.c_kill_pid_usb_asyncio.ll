; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_signal.c_kill_pid_usb_asyncio.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_signal.c_kill_pid_usb_asyncio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid = type { i32 }
%struct.cred = type { i32 }
%struct.kernel_siginfo = type { i32, i32, i32, i32 }
%struct.task_struct = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SI_ASYNCIO = common dso_local global i32 0, align 4
@PIDTYPE_PID = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@PIDTYPE_TGID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kill_pid_usb_asyncio(i32 %0, i32 %1, i32 %2, %struct.pid* %3, %struct.cred* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pid*, align 8
  %11 = alloca %struct.cred*, align 8
  %12 = alloca %struct.kernel_siginfo, align 4
  %13 = alloca %struct.task_struct*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.pid* %3, %struct.pid** %10, align 8
  store %struct.cred* %4, %struct.cred** %11, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %15, align 4
  %18 = call i32 @clear_siginfo(%struct.kernel_siginfo* %12)
  %19 = load i32, i32* %7, align 4
  %20 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %12, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %8, align 4
  %22 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %12, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @SI_ASYNCIO, align 4
  %24 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %12, i32 0, i32 3
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %9, align 4
  %26 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %12, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @valid_signal(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %5
  %31 = load i32, i32* %15, align 4
  store i32 %31, i32* %6, align 4
  br label %80

32:                                               ; preds = %5
  %33 = call i32 (...) @rcu_read_lock()
  %34 = load %struct.pid*, %struct.pid** %10, align 8
  %35 = load i32, i32* @PIDTYPE_PID, align 4
  %36 = call %struct.task_struct* @pid_task(%struct.pid* %34, i32 %35)
  store %struct.task_struct* %36, %struct.task_struct** %13, align 8
  %37 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %38 = icmp ne %struct.task_struct* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @ESRCH, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %15, align 4
  br label %77

42:                                               ; preds = %32
  %43 = load %struct.cred*, %struct.cred** %11, align 8
  %44 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %45 = call i32 @kill_as_cred_perm(%struct.cred* %43, %struct.task_struct* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @EPERM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %15, align 4
  br label %77

50:                                               ; preds = %42
  %51 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.cred*, %struct.cred** %11, align 8
  %54 = call i32 @security_task_kill(%struct.task_struct* %51, %struct.kernel_siginfo* %12, i32 %52, %struct.cred* %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %77

58:                                               ; preds = %50
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %58
  %62 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %63 = call i64 @lock_task_sighand(%struct.task_struct* %62, i64* %14)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %68 = load i32, i32* @PIDTYPE_TGID, align 4
  %69 = call i32 @__send_signal(i32 %66, %struct.kernel_siginfo* %12, %struct.task_struct* %67, i32 %68, i32 0)
  store i32 %69, i32* %15, align 4
  %70 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %71 = call i32 @unlock_task_sighand(%struct.task_struct* %70, i64* %14)
  br label %75

72:                                               ; preds = %61
  %73 = load i32, i32* @ESRCH, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %15, align 4
  br label %75

75:                                               ; preds = %72, %65
  br label %76

76:                                               ; preds = %75, %58
  br label %77

77:                                               ; preds = %76, %57, %47, %39
  %78 = call i32 (...) @rcu_read_unlock()
  %79 = load i32, i32* %15, align 4
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %77, %30
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @clear_siginfo(%struct.kernel_siginfo*) #1

declare dso_local i32 @valid_signal(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @pid_task(%struct.pid*, i32) #1

declare dso_local i32 @kill_as_cred_perm(%struct.cred*, %struct.task_struct*) #1

declare dso_local i32 @security_task_kill(%struct.task_struct*, %struct.kernel_siginfo*, i32, %struct.cred*) #1

declare dso_local i64 @lock_task_sighand(%struct.task_struct*, i64*) #1

declare dso_local i32 @__send_signal(i32, %struct.kernel_siginfo*, %struct.task_struct*, i32, i32) #1

declare dso_local i32 @unlock_task_sighand(%struct.task_struct*, i64*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
