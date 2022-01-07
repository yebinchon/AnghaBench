; ModuleID = '/home/carl/AnghaBench/linux/security/smack/extr_smack.h_smk_of_task_struct.c'
source_filename = "/home/carl/AnghaBench/linux/security/smack/extr_smack.h_smk_of_task_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smack_known = type { i32 }
%struct.task_struct = type { i32 }
%struct.cred = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.smack_known* (%struct.task_struct*)* @smk_of_task_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.smack_known* @smk_of_task_struct(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.smack_known*, align 8
  %4 = alloca %struct.cred*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %5 = call i32 (...) @rcu_read_lock()
  %6 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %7 = call %struct.cred* @__task_cred(%struct.task_struct* %6)
  store %struct.cred* %7, %struct.cred** %4, align 8
  %8 = load %struct.cred*, %struct.cred** %4, align 8
  %9 = call i32 @smack_cred(%struct.cred* %8)
  %10 = call %struct.smack_known* @smk_of_task(i32 %9)
  store %struct.smack_known* %10, %struct.smack_known** %3, align 8
  %11 = call i32 (...) @rcu_read_unlock()
  %12 = load %struct.smack_known*, %struct.smack_known** %3, align 8
  ret %struct.smack_known* %12
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cred* @__task_cred(%struct.task_struct*) #1

declare dso_local %struct.smack_known* @smk_of_task(i32) #1

declare dso_local i32 @smack_cred(%struct.cred*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
