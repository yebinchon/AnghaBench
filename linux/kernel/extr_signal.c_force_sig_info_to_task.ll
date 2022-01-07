; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_signal.c_force_sig_info_to_task.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_signal.c_force_sig_info_to_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_siginfo = type { i32 }
%struct.task_struct = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.k_sigaction* }
%struct.k_sigaction = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@SIG_IGN = common dso_local global i64 0, align 8
@SIG_DFL = common dso_local global i64 0, align 8
@SIGNAL_UNKILLABLE = common dso_local global i32 0, align 4
@PIDTYPE_PID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kernel_siginfo*, %struct.task_struct*)* @force_sig_info_to_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @force_sig_info_to_task(%struct.kernel_siginfo* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.kernel_siginfo*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.k_sigaction*, align 8
  %10 = alloca i32, align 4
  store %struct.kernel_siginfo* %0, %struct.kernel_siginfo** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %11 = load %struct.kernel_siginfo*, %struct.kernel_siginfo** %3, align 8
  %12 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load %struct.k_sigaction*, %struct.k_sigaction** %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %24, i64 %27
  store %struct.k_sigaction* %28, %struct.k_sigaction** %9, align 8
  %29 = load %struct.k_sigaction*, %struct.k_sigaction** %9, align 8
  %30 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SIG_IGN, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %8, align 4
  %36 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %37 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %36, i32 0, i32 3
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @sigismember(i32* %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %2
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %42, %2
  %46 = load i64, i64* @SIG_DFL, align 8
  %47 = load %struct.k_sigaction*, %struct.k_sigaction** %9, align 8
  %48 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i64 %46, i64* %49, align 8
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %54 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %53, i32 0, i32 3
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @sigdelset(i32* %54, i32 %55)
  %57 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %58 = call i32 @recalc_sigpending_and_wake(%struct.task_struct* %57)
  br label %59

59:                                               ; preds = %52, %45
  br label %60

60:                                               ; preds = %59, %42
  %61 = load %struct.k_sigaction*, %struct.k_sigaction** %9, align 8
  %62 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SIG_DFL, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %60
  %68 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %69 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @SIGNAL_UNKILLABLE, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %76 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %75, i32 0, i32 1
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %74
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %72, %67, %60
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.kernel_siginfo*, %struct.kernel_siginfo** %3, align 8
  %84 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %85 = load i32, i32* @PIDTYPE_PID, align 4
  %86 = call i32 @send_signal(i32 %82, %struct.kernel_siginfo* %83, %struct.task_struct* %84, i32 %85)
  store i32 %86, i32* %6, align 4
  %87 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %88 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i64, i64* %5, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sigismember(i32*, i32) #1

declare dso_local i32 @sigdelset(i32*, i32) #1

declare dso_local i32 @recalc_sigpending_and_wake(%struct.task_struct*) #1

declare dso_local i32 @send_signal(i32, %struct.kernel_siginfo*, %struct.task_struct*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
