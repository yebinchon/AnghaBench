; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_signal.c_send_signal.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_signal.c_send_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_siginfo = type { i64, i64, i32 }
%struct.task_struct = type { i32 }
%struct.user_namespace = type { i32 }

@SEND_SIG_NOINFO = common dso_local global %struct.kernel_siginfo* null, align 8
@current = common dso_local global i32 0, align 4
@SEND_SIG_PRIV = common dso_local global %struct.kernel_siginfo* null, align 8
@user_ns = common dso_local global i32 0, align 4
@SI_KERNEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.kernel_siginfo*, %struct.task_struct*, i32)* @send_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_signal(i32 %0, %struct.kernel_siginfo* %1, %struct.task_struct* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kernel_siginfo*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.user_namespace*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.kernel_siginfo* %1, %struct.kernel_siginfo** %6, align 8
  store %struct.task_struct* %2, %struct.task_struct** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.kernel_siginfo*, %struct.kernel_siginfo** %6, align 8
  %13 = load %struct.kernel_siginfo*, %struct.kernel_siginfo** @SEND_SIG_NOINFO, align 8
  %14 = icmp eq %struct.kernel_siginfo* %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %4
  %16 = load i32, i32* @current, align 4
  %17 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %18 = call i32 @task_active_pid_ns(%struct.task_struct* %17)
  %19 = call i32 @task_pid_nr_ns(i32 %16, i32 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %9, align 4
  br label %70

23:                                               ; preds = %4
  %24 = load %struct.kernel_siginfo*, %struct.kernel_siginfo** %6, align 8
  %25 = load %struct.kernel_siginfo*, %struct.kernel_siginfo** @SEND_SIG_PRIV, align 8
  %26 = icmp eq %struct.kernel_siginfo* %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 1, i32* %9, align 4
  br label %69

28:                                               ; preds = %23
  %29 = load %struct.kernel_siginfo*, %struct.kernel_siginfo** %6, align 8
  %30 = call i64 @has_si_pid_and_uid(%struct.kernel_siginfo* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %68

32:                                               ; preds = %28
  %33 = call i32 (...) @rcu_read_lock()
  %34 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %35 = load i32, i32* @user_ns, align 4
  %36 = call %struct.user_namespace* @task_cred_xxx(%struct.task_struct* %34, i32 %35)
  store %struct.user_namespace* %36, %struct.user_namespace** %10, align 8
  %37 = call %struct.user_namespace* (...) @current_user_ns()
  %38 = load %struct.user_namespace*, %struct.user_namespace** %10, align 8
  %39 = icmp ne %struct.user_namespace* %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %32
  %41 = call %struct.user_namespace* (...) @current_user_ns()
  %42 = load %struct.kernel_siginfo*, %struct.kernel_siginfo** %6, align 8
  %43 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @make_kuid(%struct.user_namespace* %41, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load %struct.user_namespace*, %struct.user_namespace** %10, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @from_kuid_munged(%struct.user_namespace* %46, i32 %47)
  %49 = load %struct.kernel_siginfo*, %struct.kernel_siginfo** %6, align 8
  %50 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %40, %32
  %52 = call i32 (...) @rcu_read_unlock()
  %53 = load %struct.kernel_siginfo*, %struct.kernel_siginfo** %6, align 8
  %54 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SI_KERNEL, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* @current, align 4
  %60 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %61 = call i32 @task_active_pid_ns(%struct.task_struct* %60)
  %62 = call i32 @task_pid_nr_ns(i32 %59, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %51
  %65 = load %struct.kernel_siginfo*, %struct.kernel_siginfo** %6, align 8
  %66 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  store i32 1, i32* %9, align 4
  br label %67

67:                                               ; preds = %64, %51
  br label %68

68:                                               ; preds = %67, %28
  br label %69

69:                                               ; preds = %68, %27
  br label %70

70:                                               ; preds = %69, %15
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.kernel_siginfo*, %struct.kernel_siginfo** %6, align 8
  %73 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @__send_signal(i32 %71, %struct.kernel_siginfo* %72, %struct.task_struct* %73, i32 %74, i32 %75)
  ret i32 %76
}

declare dso_local i32 @task_pid_nr_ns(i32, i32) #1

declare dso_local i32 @task_active_pid_ns(%struct.task_struct*) #1

declare dso_local i64 @has_si_pid_and_uid(%struct.kernel_siginfo*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.user_namespace* @task_cred_xxx(%struct.task_struct*, i32) #1

declare dso_local %struct.user_namespace* @current_user_ns(...) #1

declare dso_local i32 @make_kuid(%struct.user_namespace*, i32) #1

declare dso_local i32 @from_kuid_munged(%struct.user_namespace*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @__send_signal(i32, %struct.kernel_siginfo*, %struct.task_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
