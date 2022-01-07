; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_apparmor_ptrace_traceme.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_apparmor_ptrace_traceme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.aa_label = type { i32 }

@AA_PTRACE_TRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*)* @apparmor_ptrace_traceme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apparmor_ptrace_traceme(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.aa_label*, align 8
  %4 = alloca %struct.aa_label*, align 8
  %5 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %6 = call %struct.aa_label* (...) @__begin_current_label_crit_section()
  store %struct.aa_label* %6, %struct.aa_label** %4, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %8 = call %struct.aa_label* @aa_get_task_label(%struct.task_struct* %7)
  store %struct.aa_label* %8, %struct.aa_label** %3, align 8
  %9 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %10 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %11 = load i32, i32* @AA_PTRACE_TRACE, align 4
  %12 = call i32 @aa_may_ptrace(%struct.aa_label* %9, %struct.aa_label* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %14 = call i32 @aa_put_label(%struct.aa_label* %13)
  %15 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %16 = call i32 @__end_current_label_crit_section(%struct.aa_label* %15)
  %17 = load i32, i32* %5, align 4
  ret i32 %17
}

declare dso_local %struct.aa_label* @__begin_current_label_crit_section(...) #1

declare dso_local %struct.aa_label* @aa_get_task_label(%struct.task_struct*) #1

declare dso_local i32 @aa_may_ptrace(%struct.aa_label*, %struct.aa_label*, i32) #1

declare dso_local i32 @aa_put_label(%struct.aa_label*) #1

declare dso_local i32 @__end_current_label_crit_section(%struct.aa_label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
