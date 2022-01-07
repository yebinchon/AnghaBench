; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_free_lock_state.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_free_lock_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32 }
%struct.nfs4_lock_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs4_free_lock_state(%struct.nfs_server* %0, %struct.nfs4_lock_state* %1) #0 {
  %3 = alloca %struct.nfs_server*, align 8
  %4 = alloca %struct.nfs4_lock_state*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %3, align 8
  store %struct.nfs4_lock_state* %1, %struct.nfs4_lock_state** %4, align 8
  %5 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %6 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %5, i32 0, i32 0
  %7 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %4, align 8
  %8 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ida_simple_remove(i32* %6, i32 %10)
  %12 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %4, align 8
  %13 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %12, i32 0, i32 0
  %14 = call i32 @nfs4_destroy_seqid_counter(%struct.TYPE_2__* %13)
  %15 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %4, align 8
  %16 = call i32 @kfree(%struct.nfs4_lock_state* %15)
  ret void
}

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @nfs4_destroy_seqid_counter(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.nfs4_lock_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
