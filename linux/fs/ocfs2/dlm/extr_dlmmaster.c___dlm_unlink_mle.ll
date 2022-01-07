; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c___dlm_unlink_mle.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c___dlm_unlink_mle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32 }
%struct.dlm_master_list_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__dlm_unlink_mle(%struct.dlm_ctxt* %0, %struct.dlm_master_list_entry* %1) #0 {
  %3 = alloca %struct.dlm_ctxt*, align 8
  %4 = alloca %struct.dlm_master_list_entry*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %3, align 8
  store %struct.dlm_master_list_entry* %1, %struct.dlm_master_list_entry** %4, align 8
  %5 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %6 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %5, i32 0, i32 1
  %7 = call i32 @assert_spin_locked(i32* %6)
  %8 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %9 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %8, i32 0, i32 0
  %10 = call i32 @assert_spin_locked(i32* %9)
  %11 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %12 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %11, i32 0, i32 0
  %13 = call i32 @hlist_unhashed(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %17 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %16, i32 0, i32 0
  %18 = call i32 @hlist_del_init(i32* %17)
  br label %19

19:                                               ; preds = %15, %2
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @hlist_unhashed(i32*) #1

declare dso_local i32 @hlist_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
