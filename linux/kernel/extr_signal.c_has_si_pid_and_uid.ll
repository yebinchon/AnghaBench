; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_signal.c_has_si_pid_and_uid.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_signal.c_has_si_pid_and_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_siginfo = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kernel_siginfo*)* @has_si_pid_and_uid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_si_pid_and_uid(%struct.kernel_siginfo* %0) #0 {
  %2 = alloca %struct.kernel_siginfo*, align 8
  %3 = alloca i32, align 4
  store %struct.kernel_siginfo* %0, %struct.kernel_siginfo** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.kernel_siginfo*, %struct.kernel_siginfo** %2, align 8
  %5 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.kernel_siginfo*, %struct.kernel_siginfo** %2, align 8
  %8 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @siginfo_layout(i32 %6, i32 %9)
  switch i32 %10, label %13 [
    i32 132, label %11
    i32 137, label %11
    i32 130, label %11
    i32 128, label %12
    i32 131, label %12
    i32 136, label %12
    i32 134, label %12
    i32 135, label %12
    i32 133, label %12
    i32 129, label %12
  ]

11:                                               ; preds = %1, %1, %1
  store i32 1, i32* %3, align 4
  br label %13

12:                                               ; preds = %1, %1, %1, %1, %1, %1, %1
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %1, %12, %11
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

declare dso_local i32 @siginfo_layout(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
