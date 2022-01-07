; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_signal.c_send_sig_info.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_signal.c_send_sig_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_siginfo = type { i32 }
%struct.task_struct = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PIDTYPE_PID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_sig_info(i32 %0, %struct.kernel_siginfo* %1, %struct.task_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.kernel_siginfo*, align 8
  %7 = alloca %struct.task_struct*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.kernel_siginfo* %1, %struct.kernel_siginfo** %6, align 8
  store %struct.task_struct* %2, %struct.task_struct** %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @valid_signal(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %20

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.kernel_siginfo*, %struct.kernel_siginfo** %6, align 8
  %17 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %18 = load i32, i32* @PIDTYPE_PID, align 4
  %19 = call i32 @do_send_sig_info(i32 %15, %struct.kernel_siginfo* %16, %struct.task_struct* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %14, %11
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare dso_local i32 @valid_signal(i32) #1

declare dso_local i32 @do_send_sig_info(i32, %struct.kernel_siginfo*, %struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
