; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_complete_dlm_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_complete_dlm_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32 }

@dlm_domain_lock = common dso_local global i32 0, align 4
@dlm_domain_events = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ctxt*)* @dlm_complete_dlm_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlm_complete_dlm_shutdown(%struct.dlm_ctxt* %0) #0 {
  %2 = alloca %struct.dlm_ctxt*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %2, align 8
  %3 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %4 = call i32 @dlm_unregister_domain_handlers(%struct.dlm_ctxt* %3)
  %5 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %6 = call i32 @dlm_complete_thread(%struct.dlm_ctxt* %5)
  %7 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %8 = call i32 @dlm_complete_recovery_thread(%struct.dlm_ctxt* %7)
  %9 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %10 = call i32 @dlm_destroy_dlm_worker(%struct.dlm_ctxt* %9)
  %11 = call i32 @spin_lock(i32* @dlm_domain_lock)
  %12 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %13 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %12, i32 0, i32 0
  %14 = call i32 @list_del_init(i32* %13)
  %15 = call i32 @spin_unlock(i32* @dlm_domain_lock)
  %16 = call i32 @wake_up(i32* @dlm_domain_events)
  ret void
}

declare dso_local i32 @dlm_unregister_domain_handlers(%struct.dlm_ctxt*) #1

declare dso_local i32 @dlm_complete_thread(%struct.dlm_ctxt*) #1

declare dso_local i32 @dlm_complete_recovery_thread(%struct.dlm_ctxt*) #1

declare dso_local i32 @dlm_destroy_dlm_worker(%struct.dlm_ctxt*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
