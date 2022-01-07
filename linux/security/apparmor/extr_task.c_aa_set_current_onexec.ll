; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_task.c_aa_set_current_onexec.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_task.c_aa_set_current_onexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.aa_task_ctx = type { i32, %struct.aa_label* }

@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_set_current_onexec(%struct.aa_label* %0, i32 %1) #0 {
  %3 = alloca %struct.aa_label*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aa_task_ctx*, align 8
  store %struct.aa_label* %0, %struct.aa_label** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @current, align 4
  %7 = call %struct.aa_task_ctx* @task_ctx(i32 %6)
  store %struct.aa_task_ctx* %7, %struct.aa_task_ctx** %5, align 8
  %8 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %9 = call i32 @aa_get_label(%struct.aa_label* %8)
  %10 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %5, align 8
  %11 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %10, i32 0, i32 1
  %12 = load %struct.aa_label*, %struct.aa_label** %11, align 8
  %13 = call i32 @aa_put_label(%struct.aa_label* %12)
  %14 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %15 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %15, i32 0, i32 1
  store %struct.aa_label* %14, %struct.aa_label** %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  ret i32 0
}

declare dso_local %struct.aa_task_ctx* @task_ctx(i32) #1

declare dso_local i32 @aa_get_label(%struct.aa_label*) #1

declare dso_local i32 @aa_put_label(%struct.aa_label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
