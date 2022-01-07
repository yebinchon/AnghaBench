; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_ptrace.c_ptrace_attach.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_ptrace.c_ptrace_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32, i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@PTRACE_SEIZE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@PTRACE_O_MASK = common dso_local global i64 0, align 8
@PT_PTRACED = common dso_local global i64 0, align 8
@PT_SEIZED = common dso_local global i64 0, align 8
@PT_OPT_FLAG_SHIFT = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@PF_KTHREAD = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTNOINTR = common dso_local global i32 0, align 4
@PTRACE_MODE_ATTACH_REALCREDS = common dso_local global i32 0, align 4
@tasklist_lock = common dso_local global i32 0, align 4
@SIGSTOP = common dso_local global i32 0, align 4
@SEND_SIG_PRIV = common dso_local global i32 0, align 4
@JOBCTL_TRAP_STOP = common dso_local global i32 0, align 4
@JOBCTL_TRAPPING = common dso_local global i32 0, align 4
@__TASK_STOPPED = common dso_local global i32 0, align 4
@JOBCTL_TRAPPING_BIT = common dso_local global i32 0, align 4
@TASK_KILLABLE = common dso_local global i32 0, align 4
@PTRACE_ATTACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i64, i64, i64)* @ptrace_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptrace_attach(%struct.task_struct* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @PTRACE_SEIZE, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %4
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %151

23:                                               ; preds = %19
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @PTRACE_O_MASK, align 8
  %26 = xor i64 %25, -1
  %27 = and i64 %24, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %151

30:                                               ; preds = %23
  %31 = load i64, i64* @PT_PTRACED, align 8
  %32 = load i64, i64* @PT_SEIZED, align 8
  %33 = or i64 %31, %32
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @PT_OPT_FLAG_SHIFT, align 8
  %36 = shl i64 %34, %35
  %37 = or i64 %33, %36
  store i64 %37, i64* %8, align 8
  br label %40

38:                                               ; preds = %4
  %39 = load i64, i64* @PT_PTRACED, align 8
  store i64 %39, i64* %8, align 8
  br label %40

40:                                               ; preds = %38, %30
  %41 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %42 = call i32 @audit_ptrace(%struct.task_struct* %41)
  %43 = load i32, i32* @EPERM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %10, align 4
  %45 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %46 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @PF_KTHREAD, align 4
  %49 = and i32 %47, %48
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %151

53:                                               ; preds = %40
  %54 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %55 = load i32, i32* @current, align 4
  %56 = call i64 @same_thread_group(%struct.task_struct* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %151

59:                                               ; preds = %53
  %60 = load i32, i32* @ERESTARTNOINTR, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %10, align 4
  %62 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %63 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %62, i32 0, i32 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = call i64 @mutex_lock_interruptible(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %151

69:                                               ; preds = %59
  %70 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %71 = call i32 @task_lock(%struct.task_struct* %70)
  %72 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %73 = load i32, i32* @PTRACE_MODE_ATTACH_REALCREDS, align 4
  %74 = call i32 @__ptrace_may_access(%struct.task_struct* %72, i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %76 = call i32 @task_unlock(%struct.task_struct* %75)
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  br label %145

80:                                               ; preds = %69
  %81 = call i32 @write_lock_irq(i32* @tasklist_lock)
  %82 = load i32, i32* @EPERM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %10, align 4
  %84 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %85 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @unlikely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  br label %143

90:                                               ; preds = %80
  %91 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %92 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %143

96:                                               ; preds = %90
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i64, i64* @PT_SEIZED, align 8
  %101 = load i64, i64* %8, align 8
  %102 = or i64 %101, %100
  store i64 %102, i64* %8, align 8
  br label %103

103:                                              ; preds = %99, %96
  %104 = load i64, i64* %8, align 8
  %105 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %106 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %105, i32 0, i32 2
  store i64 %104, i64* %106, align 8
  %107 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %108 = load i32, i32* @current, align 4
  %109 = call i32 @ptrace_link(%struct.task_struct* %107, i32 %108)
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %103
  %113 = load i32, i32* @SIGSTOP, align 4
  %114 = load i32, i32* @SEND_SIG_PRIV, align 4
  %115 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %116 = call i32 @send_sig_info(i32 %113, i32 %114, %struct.task_struct* %115)
  br label %117

117:                                              ; preds = %112, %103
  %118 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %119 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %118, i32 0, i32 5
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = call i32 @spin_lock(i32* %121)
  %123 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %124 = call i64 @task_is_stopped(%struct.task_struct* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %117
  %127 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %128 = load i32, i32* @JOBCTL_TRAP_STOP, align 4
  %129 = load i32, i32* @JOBCTL_TRAPPING, align 4
  %130 = or i32 %128, %129
  %131 = call i64 @task_set_jobctl_pending(%struct.task_struct* %127, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %126
  %134 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %135 = load i32, i32* @__TASK_STOPPED, align 4
  %136 = call i32 @signal_wake_up_state(%struct.task_struct* %134, i32 %135)
  br label %137

137:                                              ; preds = %133, %126, %117
  %138 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %139 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %138, i32 0, i32 5
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = call i32 @spin_unlock(i32* %141)
  store i32 0, i32* %10, align 4
  br label %143

143:                                              ; preds = %137, %95, %89
  %144 = call i32 @write_unlock_irq(i32* @tasklist_lock)
  br label %145

145:                                              ; preds = %143, %79
  %146 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %147 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %146, i32 0, i32 4
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = call i32 @mutex_unlock(i32* %149)
  br label %151

151:                                              ; preds = %145, %68, %58, %52, %29, %22
  %152 = load i32, i32* %10, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %163, label %154

154:                                              ; preds = %151
  %155 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %156 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %155, i32 0, i32 3
  %157 = load i32, i32* @JOBCTL_TRAPPING_BIT, align 4
  %158 = load i32, i32* @TASK_KILLABLE, align 4
  %159 = call i32 @wait_on_bit(i32* %156, i32 %157, i32 %158)
  %160 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %161 = load i32, i32* @PTRACE_ATTACH, align 4
  %162 = call i32 @proc_ptrace_connector(%struct.task_struct* %160, i32 %161)
  br label %163

163:                                              ; preds = %154, %151
  %164 = load i32, i32* %10, align 4
  ret i32 %164
}

declare dso_local i32 @audit_ptrace(%struct.task_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @same_thread_group(%struct.task_struct*, i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local i32 @__ptrace_may_access(%struct.task_struct*, i32) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @ptrace_link(%struct.task_struct*, i32) #1

declare dso_local i32 @send_sig_info(i32, i32, %struct.task_struct*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @task_is_stopped(%struct.task_struct*) #1

declare dso_local i64 @task_set_jobctl_pending(%struct.task_struct*, i32) #1

declare dso_local i32 @signal_wake_up_state(%struct.task_struct*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_on_bit(i32*, i32, i32) #1

declare dso_local i32 @proc_ptrace_connector(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
