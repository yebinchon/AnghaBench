; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_signal.c_do_notify_parent_cldstop.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_signal.c_do_notify_parent_cldstop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, %struct.sighand_struct*, %struct.TYPE_4__*, %struct.task_struct*, %struct.task_struct*, %struct.task_struct* }
%struct.sighand_struct = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.kernel_siginfo = type { i32, i32, i32, i8*, i8*, i32, i32, i64 }

@SIGCHLD = common dso_local global i32 0, align 4
@user_ns = common dso_local global i32 0, align 4
@SIGCONT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i64 0, align 8
@SA_NOCLDSTOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i32, i32)* @do_notify_parent_cldstop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_notify_parent_cldstop(%struct.task_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kernel_siginfo, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca %struct.sighand_struct*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 5
  %18 = load %struct.task_struct*, %struct.task_struct** %17, align 8
  store %struct.task_struct* %18, %struct.task_struct** %9, align 8
  br label %26

19:                                               ; preds = %3
  %20 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i32 0, i32 4
  %22 = load %struct.task_struct*, %struct.task_struct** %21, align 8
  store %struct.task_struct* %22, %struct.task_struct** %4, align 8
  %23 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i32 0, i32 3
  %25 = load %struct.task_struct*, %struct.task_struct** %24, align 8
  store %struct.task_struct* %25, %struct.task_struct** %9, align 8
  br label %26

26:                                               ; preds = %19, %15
  %27 = call i32 @clear_siginfo(%struct.kernel_siginfo* %7)
  %28 = load i32, i32* @SIGCHLD, align 4
  %29 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %7, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %7, i32 0, i32 7
  store i64 0, i64* %30, align 8
  %31 = call i32 (...) @rcu_read_lock()
  %32 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %33 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %34 = call i32 @task_active_pid_ns(%struct.task_struct* %33)
  %35 = call i32 @task_pid_nr_ns(%struct.task_struct* %32, i32 %34)
  %36 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %7, i32 0, i32 6
  store i32 %35, i32* %36, align 4
  %37 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %38 = load i32, i32* @user_ns, align 4
  %39 = call i32 @task_cred_xxx(%struct.task_struct* %37, i32 %38)
  %40 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %41 = call i32 @task_uid(%struct.task_struct* %40)
  %42 = call i32 @from_kuid_munged(i32 %39, i32 %41)
  %43 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %7, i32 0, i32 5
  store i32 %42, i32* %43, align 8
  %44 = call i32 (...) @rcu_read_unlock()
  %45 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %46 = call i32 @task_cputime(%struct.task_struct* %45, i32* %11, i32* %12)
  %47 = load i32, i32* %11, align 4
  %48 = call i8* @nsec_to_clock_t(i32 %47)
  %49 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %7, i32 0, i32 4
  store i8* %48, i8** %49, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i8* @nsec_to_clock_t(i32 %50)
  %52 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %7, i32 0, i32 3
  store i8* %51, i8** %52, align 8
  %53 = load i32, i32* %6, align 4
  %54 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %7, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %6, align 4
  switch i32 %55, label %73 [
    i32 130, label %56
    i32 129, label %59
    i32 128, label %67
  ]

56:                                               ; preds = %26
  %57 = load i32, i32* @SIGCONT, align 4
  %58 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %7, i32 0, i32 2
  store i32 %57, i32* %58, align 8
  br label %75

59:                                               ; preds = %26
  %60 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %61 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 127
  %66 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %7, i32 0, i32 2
  store i32 %65, i32* %66, align 8
  br label %75

67:                                               ; preds = %26
  %68 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %69 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, 127
  %72 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %7, i32 0, i32 2
  store i32 %71, i32* %72, align 8
  br label %75

73:                                               ; preds = %26
  %74 = call i32 (...) @BUG()
  br label %75

75:                                               ; preds = %73, %67, %59, %56
  %76 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %77 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %76, i32 0, i32 1
  %78 = load %struct.sighand_struct*, %struct.sighand_struct** %77, align 8
  store %struct.sighand_struct* %78, %struct.sighand_struct** %10, align 8
  %79 = load %struct.sighand_struct*, %struct.sighand_struct** %10, align 8
  %80 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %79, i32 0, i32 0
  %81 = load i64, i64* %8, align 8
  %82 = call i32 @spin_lock_irqsave(i32* %80, i64 %81)
  %83 = load %struct.sighand_struct*, %struct.sighand_struct** %10, align 8
  %84 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %83, i32 0, i32 1
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = load i32, i32* @SIGCHLD, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @SIG_IGN, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %113

95:                                               ; preds = %75
  %96 = load %struct.sighand_struct*, %struct.sighand_struct** %10, align 8
  %97 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %96, i32 0, i32 1
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = load i32, i32* @SIGCHLD, align 4
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @SA_NOCLDSTOP, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %95
  %110 = load i32, i32* @SIGCHLD, align 4
  %111 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %112 = call i32 @__group_send_sig_info(i32 %110, %struct.kernel_siginfo* %7, %struct.task_struct* %111)
  br label %113

113:                                              ; preds = %109, %95, %75
  %114 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %115 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %116 = call i32 @__wake_up_parent(%struct.task_struct* %114, %struct.task_struct* %115)
  %117 = load %struct.sighand_struct*, %struct.sighand_struct** %10, align 8
  %118 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %117, i32 0, i32 0
  %119 = load i64, i64* %8, align 8
  %120 = call i32 @spin_unlock_irqrestore(i32* %118, i64 %119)
  ret void
}

declare dso_local i32 @clear_siginfo(%struct.kernel_siginfo*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @task_pid_nr_ns(%struct.task_struct*, i32) #1

declare dso_local i32 @task_active_pid_ns(%struct.task_struct*) #1

declare dso_local i32 @from_kuid_munged(i32, i32) #1

declare dso_local i32 @task_cred_xxx(%struct.task_struct*, i32) #1

declare dso_local i32 @task_uid(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @task_cputime(%struct.task_struct*, i32*, i32*) #1

declare dso_local i8* @nsec_to_clock_t(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__group_send_sig_info(i32, %struct.kernel_siginfo*, %struct.task_struct*) #1

declare dso_local i32 @__wake_up_parent(%struct.task_struct*, %struct.task_struct*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
