; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_apparmor_task_setrlimit.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_apparmor_task_setrlimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.rlimit = type { i32 }
%struct.aa_label = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i32, %struct.rlimit*)* @apparmor_task_setrlimit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apparmor_task_setrlimit(%struct.task_struct* %0, i32 %1, %struct.rlimit* %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rlimit*, align 8
  %7 = alloca %struct.aa_label*, align 8
  %8 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.rlimit* %2, %struct.rlimit** %6, align 8
  %9 = call %struct.aa_label* (...) @__begin_current_label_crit_section()
  store %struct.aa_label* %9, %struct.aa_label** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %11 = call i32 @unconfined(%struct.aa_label* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.rlimit*, %struct.rlimit** %6, align 8
  %18 = call i32 @aa_task_setrlimit(%struct.aa_label* %14, %struct.task_struct* %15, i32 %16, %struct.rlimit* %17)
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %13, %3
  %20 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %21 = call i32 @__end_current_label_crit_section(%struct.aa_label* %20)
  %22 = load i32, i32* %8, align 4
  ret i32 %22
}

declare dso_local %struct.aa_label* @__begin_current_label_crit_section(...) #1

declare dso_local i32 @unconfined(%struct.aa_label*) #1

declare dso_local i32 @aa_task_setrlimit(%struct.aa_label*, %struct.task_struct*, i32, %struct.rlimit*) #1

declare dso_local i32 @__end_current_label_crit_section(%struct.aa_label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
