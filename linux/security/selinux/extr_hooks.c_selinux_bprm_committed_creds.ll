; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_bprm_committed_creds.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_bprm_committed_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.linux_binprm = type { i32 }
%struct.task_security_struct = type { i64, i64 }
%struct.itimerval = type { i32 }

@selinux_state = common dso_local global i32 0, align 4
@SECCLASS_PROCESS = common dso_local global i32 0, align 4
@PROCESS__SIGINH = common dso_local global i32 0, align 4
@CONFIG_POSIX_TIMERS = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_9__* null, align 8
@tasklist_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.linux_binprm*)* @selinux_bprm_committed_creds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @selinux_bprm_committed_creds(%struct.linux_binprm* %0) #0 {
  %2 = alloca %struct.linux_binprm*, align 8
  %3 = alloca %struct.task_security_struct*, align 8
  %4 = alloca %struct.itimerval, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.linux_binprm* %0, %struct.linux_binprm** %2, align 8
  %9 = call i32 (...) @current_cred()
  %10 = call %struct.task_security_struct* @selinux_cred(i32 %9)
  store %struct.task_security_struct* %10, %struct.task_security_struct** %3, align 8
  %11 = load %struct.task_security_struct*, %struct.task_security_struct** %3, align 8
  %12 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %5, align 8
  %14 = load %struct.task_security_struct*, %struct.task_security_struct** %3, align 8
  %15 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %83

21:                                               ; preds = %1
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i32, i32* @SECCLASS_PROCESS, align 4
  %25 = load i32, i32* @PROCESS__SIGINH, align 4
  %26 = call i32 @avc_has_perm(i32* @selinux_state, i64 %22, i64 %23, i32 %24, i32 %25, i32* null)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %75

29:                                               ; preds = %21
  %30 = load i32, i32* @CONFIG_POSIX_TIMERS, align 4
  %31 = call i64 @IS_ENABLED(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = call i32 @memset(%struct.itimerval* %4, i32 0, i32 4)
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %41, %33
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 3
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @do_setitimer(i32 %39, %struct.itimerval* %4, i32* null)
  br label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %35

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %29
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = call i32 @spin_lock_irq(i32* %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %52 = call i32 @fatal_signal_pending(%struct.TYPE_9__* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %69, label %54

54:                                               ; preds = %45
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 4
  %57 = call i32 @flush_sigqueue(i32* %56)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = call i32 @flush_sigqueue(i32* %61)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %64 = call i32 @flush_signal_handlers(%struct.TYPE_9__* %63, i32 1)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  %67 = call i32 @sigemptyset(i32* %66)
  %68 = call i32 (...) @recalc_sigpending()
  br label %69

69:                                               ; preds = %54, %45
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = call i32 @spin_unlock_irq(i32* %73)
  br label %75

75:                                               ; preds = %69, %21
  %76 = call i32 @read_lock(i32* @tasklist_lock)
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @__wake_up_parent(%struct.TYPE_9__* %77, i32 %80)
  %82 = call i32 @read_unlock(i32* @tasklist_lock)
  br label %83

83:                                               ; preds = %75, %20
  ret void
}

declare dso_local %struct.task_security_struct* @selinux_cred(i32) #1

declare dso_local i32 @current_cred(...) #1

declare dso_local i32 @avc_has_perm(i32*, i64, i64, i32, i32, i32*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @memset(%struct.itimerval*, i32, i32) #1

declare dso_local i32 @do_setitimer(i32, %struct.itimerval*, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @fatal_signal_pending(%struct.TYPE_9__*) #1

declare dso_local i32 @flush_sigqueue(i32*) #1

declare dso_local i32 @flush_signal_handlers(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @recalc_sigpending(...) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @__wake_up_parent(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
