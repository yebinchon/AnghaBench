; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_apparmor_ptrace_access_check.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_apparmor_ptrace_access_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.aa_label = type { i32 }

@PTRACE_MODE_READ = common dso_local global i32 0, align 4
@AA_PTRACE_READ = common dso_local global i32 0, align 4
@AA_PTRACE_TRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i32)* @apparmor_ptrace_access_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apparmor_ptrace_access_check(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aa_label*, align 8
  %6 = alloca %struct.aa_label*, align 8
  %7 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call %struct.aa_label* (...) @__begin_current_label_crit_section()
  store %struct.aa_label* %8, %struct.aa_label** %5, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %10 = call %struct.aa_label* @aa_get_task_label(%struct.task_struct* %9)
  store %struct.aa_label* %10, %struct.aa_label** %6, align 8
  %11 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %12 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @PTRACE_MODE_READ, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @AA_PTRACE_READ, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @AA_PTRACE_TRACE, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = call i32 @aa_may_ptrace(%struct.aa_label* %11, %struct.aa_label* %12, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %25 = call i32 @aa_put_label(%struct.aa_label* %24)
  %26 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %27 = call i32 @__end_current_label_crit_section(%struct.aa_label* %26)
  %28 = load i32, i32* %7, align 4
  ret i32 %28
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
