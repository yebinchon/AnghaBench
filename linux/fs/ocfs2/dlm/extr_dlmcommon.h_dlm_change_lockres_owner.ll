; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmcommon.h_dlm_change_lockres_owner.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmcommon.h_dlm_change_lockres_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32 }
%struct.dlm_lock_resource = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i64)* @dlm_change_lockres_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlm_change_lockres_owner(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, i64 %2) #0 {
  %4 = alloca %struct.dlm_ctxt*, align 8
  %5 = alloca %struct.dlm_lock_resource*, align 8
  %6 = alloca i64, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %4, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %8 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %7, i32 0, i32 1
  %9 = call i32 @assert_spin_locked(i32* %8)
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %12 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %17 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @dlm_set_lockres_owner(%struct.dlm_ctxt* %16, %struct.dlm_lock_resource* %17, i64 %18)
  br label %20

20:                                               ; preds = %15, %3
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @dlm_set_lockres_owner(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
