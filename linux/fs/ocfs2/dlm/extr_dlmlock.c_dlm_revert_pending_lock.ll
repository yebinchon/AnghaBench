; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmlock.c_dlm_revert_pending_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmlock.c_dlm_revert_pending_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lock_resource = type { i32 }
%struct.dlm_lock = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@DLM_LKSB_GET_LVB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlm_revert_pending_lock(%struct.dlm_lock_resource* %0, %struct.dlm_lock* %1) #0 {
  %3 = alloca %struct.dlm_lock_resource*, align 8
  %4 = alloca %struct.dlm_lock*, align 8
  store %struct.dlm_lock_resource* %0, %struct.dlm_lock_resource** %3, align 8
  store %struct.dlm_lock* %1, %struct.dlm_lock** %4, align 8
  %5 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %6 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %5, i32 0, i32 1
  %7 = call i32 @list_del_init(i32* %6)
  %8 = load i32, i32* @DLM_LKSB_GET_LVB, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %11 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %9
  store i32 %15, i32* %13, align 4
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
