; ModuleID = '/home/carl/AnghaBench/linux/ipc/extr_util.c_ipc_findkey.c'
source_filename = "/home/carl/AnghaBench/linux/ipc/extr_util.c_ipc_findkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kern_ipc_perm = type { i32 }
%struct.ipc_ids = type { i32 }

@ipc_kht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kern_ipc_perm* (%struct.ipc_ids*, i32)* @ipc_findkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kern_ipc_perm* @ipc_findkey(%struct.ipc_ids* %0, i32 %1) #0 {
  %3 = alloca %struct.kern_ipc_perm*, align 8
  %4 = alloca %struct.ipc_ids*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kern_ipc_perm*, align 8
  store %struct.ipc_ids* %0, %struct.ipc_ids** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ipc_ids*, %struct.ipc_ids** %4, align 8
  %8 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %7, i32 0, i32 0
  %9 = load i32, i32* @ipc_kht_params, align 4
  %10 = call %struct.kern_ipc_perm* @rhashtable_lookup_fast(i32* %8, i32* %5, i32 %9)
  store %struct.kern_ipc_perm* %10, %struct.kern_ipc_perm** %6, align 8
  %11 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %12 = icmp ne %struct.kern_ipc_perm* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.kern_ipc_perm* null, %struct.kern_ipc_perm** %3, align 8
  br label %19

14:                                               ; preds = %2
  %15 = call i32 (...) @rcu_read_lock()
  %16 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %17 = call i32 @ipc_lock_object(%struct.kern_ipc_perm* %16)
  %18 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  store %struct.kern_ipc_perm* %18, %struct.kern_ipc_perm** %3, align 8
  br label %19

19:                                               ; preds = %14, %13
  %20 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %3, align 8
  ret %struct.kern_ipc_perm* %20
}

declare dso_local %struct.kern_ipc_perm* @rhashtable_lookup_fast(i32*, i32*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @ipc_lock_object(%struct.kern_ipc_perm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
