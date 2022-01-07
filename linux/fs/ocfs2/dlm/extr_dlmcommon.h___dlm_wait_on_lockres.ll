; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmcommon.h___dlm_wait_on_lockres.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmcommon.h___dlm_wait_on_lockres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lock_resource = type { i32 }

@DLM_LOCK_RES_IN_PROGRESS = common dso_local global i32 0, align 4
@DLM_LOCK_RES_RECOVERING = common dso_local global i32 0, align 4
@DLM_LOCK_RES_RECOVERY_WAITING = common dso_local global i32 0, align 4
@DLM_LOCK_RES_MIGRATING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_lock_resource*)* @__dlm_wait_on_lockres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dlm_wait_on_lockres(%struct.dlm_lock_resource* %0) #0 {
  %2 = alloca %struct.dlm_lock_resource*, align 8
  store %struct.dlm_lock_resource* %0, %struct.dlm_lock_resource** %2, align 8
  %3 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %2, align 8
  %4 = load i32, i32* @DLM_LOCK_RES_IN_PROGRESS, align 4
  %5 = load i32, i32* @DLM_LOCK_RES_RECOVERING, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @DLM_LOCK_RES_RECOVERY_WAITING, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @DLM_LOCK_RES_MIGRATING, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @__dlm_wait_on_lockres_flags(%struct.dlm_lock_resource* %3, i32 %10)
  ret void
}

declare dso_local i32 @__dlm_wait_on_lockres_flags(%struct.dlm_lock_resource*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
