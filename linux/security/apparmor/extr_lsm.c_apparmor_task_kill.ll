; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_apparmor_task_kill.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_apparmor_task_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.kernel_siginfo = type { i32 }
%struct.cred = type { i32 }
%struct.aa_label = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.kernel_siginfo*, i32, %struct.cred*)* @apparmor_task_kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apparmor_task_kill(%struct.task_struct* %0, %struct.kernel_siginfo* %1, i32 %2, %struct.cred* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.kernel_siginfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cred*, align 8
  %10 = alloca %struct.aa_label*, align 8
  %11 = alloca %struct.aa_label*, align 8
  %12 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %6, align 8
  store %struct.kernel_siginfo* %1, %struct.kernel_siginfo** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.cred* %3, %struct.cred** %9, align 8
  %13 = load %struct.cred*, %struct.cred** %9, align 8
  %14 = icmp ne %struct.cred* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %4
  %16 = load %struct.cred*, %struct.cred** %9, align 8
  %17 = call %struct.aa_label* @aa_get_newest_cred_label(%struct.cred* %16)
  store %struct.aa_label* %17, %struct.aa_label** %10, align 8
  %18 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %19 = call %struct.aa_label* @aa_get_task_label(%struct.task_struct* %18)
  store %struct.aa_label* %19, %struct.aa_label** %11, align 8
  %20 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %21 = load %struct.aa_label*, %struct.aa_label** %11, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @aa_may_signal(%struct.aa_label* %20, %struct.aa_label* %21, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %25 = call i32 @aa_put_label(%struct.aa_label* %24)
  %26 = load %struct.aa_label*, %struct.aa_label** %11, align 8
  %27 = call i32 @aa_put_label(%struct.aa_label* %26)
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %5, align 4
  br label %42

29:                                               ; preds = %4
  %30 = call %struct.aa_label* (...) @__begin_current_label_crit_section()
  store %struct.aa_label* %30, %struct.aa_label** %10, align 8
  %31 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %32 = call %struct.aa_label* @aa_get_task_label(%struct.task_struct* %31)
  store %struct.aa_label* %32, %struct.aa_label** %11, align 8
  %33 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %34 = load %struct.aa_label*, %struct.aa_label** %11, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @aa_may_signal(%struct.aa_label* %33, %struct.aa_label* %34, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load %struct.aa_label*, %struct.aa_label** %11, align 8
  %38 = call i32 @aa_put_label(%struct.aa_label* %37)
  %39 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %40 = call i32 @__end_current_label_crit_section(%struct.aa_label* %39)
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %29, %15
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local %struct.aa_label* @aa_get_newest_cred_label(%struct.cred*) #1

declare dso_local %struct.aa_label* @aa_get_task_label(%struct.task_struct*) #1

declare dso_local i32 @aa_may_signal(%struct.aa_label*, %struct.aa_label*, i32) #1

declare dso_local i32 @aa_put_label(%struct.aa_label*) #1

declare dso_local %struct.aa_label* @__begin_current_label_crit_section(...) #1

declare dso_local i32 @__end_current_label_crit_section(%struct.aa_label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
