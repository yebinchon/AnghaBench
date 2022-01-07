; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_bpf_sk_storage.c_selem_unlink_map.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_bpf_sk_storage.c_selem_unlink_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_sk_storage_elem = type { i32 }
%struct.bpf_sk_storage_map = type { i32 }
%struct.bucket = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_sk_storage_elem*)* @selem_unlink_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @selem_unlink_map(%struct.bpf_sk_storage_elem* %0) #0 {
  %2 = alloca %struct.bpf_sk_storage_elem*, align 8
  %3 = alloca %struct.bpf_sk_storage_map*, align 8
  %4 = alloca %struct.bucket*, align 8
  store %struct.bpf_sk_storage_elem* %0, %struct.bpf_sk_storage_elem** %2, align 8
  %5 = load %struct.bpf_sk_storage_elem*, %struct.bpf_sk_storage_elem** %2, align 8
  %6 = call i32 @selem_linked_to_map(%struct.bpf_sk_storage_elem* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %37

13:                                               ; preds = %1
  %14 = load %struct.bpf_sk_storage_elem*, %struct.bpf_sk_storage_elem** %2, align 8
  %15 = call %struct.TYPE_2__* @SDATA(%struct.bpf_sk_storage_elem* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.bpf_sk_storage_map* @rcu_dereference(i32 %17)
  store %struct.bpf_sk_storage_map* %18, %struct.bpf_sk_storage_map** %3, align 8
  %19 = load %struct.bpf_sk_storage_map*, %struct.bpf_sk_storage_map** %3, align 8
  %20 = load %struct.bpf_sk_storage_elem*, %struct.bpf_sk_storage_elem** %2, align 8
  %21 = call %struct.bucket* @select_bucket(%struct.bpf_sk_storage_map* %19, %struct.bpf_sk_storage_elem* %20)
  store %struct.bucket* %21, %struct.bucket** %4, align 8
  %22 = load %struct.bucket*, %struct.bucket** %4, align 8
  %23 = getelementptr inbounds %struct.bucket, %struct.bucket* %22, i32 0, i32 0
  %24 = call i32 @raw_spin_lock_bh(i32* %23)
  %25 = load %struct.bpf_sk_storage_elem*, %struct.bpf_sk_storage_elem** %2, align 8
  %26 = call i32 @selem_linked_to_map(%struct.bpf_sk_storage_elem* %25)
  %27 = call i64 @likely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %13
  %30 = load %struct.bpf_sk_storage_elem*, %struct.bpf_sk_storage_elem** %2, align 8
  %31 = getelementptr inbounds %struct.bpf_sk_storage_elem, %struct.bpf_sk_storage_elem* %30, i32 0, i32 0
  %32 = call i32 @hlist_del_init_rcu(i32* %31)
  br label %33

33:                                               ; preds = %29, %13
  %34 = load %struct.bucket*, %struct.bucket** %4, align 8
  %35 = getelementptr inbounds %struct.bucket, %struct.bucket* %34, i32 0, i32 0
  %36 = call i32 @raw_spin_unlock_bh(i32* %35)
  br label %37

37:                                               ; preds = %33, %12
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @selem_linked_to_map(%struct.bpf_sk_storage_elem*) #1

declare dso_local %struct.bpf_sk_storage_map* @rcu_dereference(i32) #1

declare dso_local %struct.TYPE_2__* @SDATA(%struct.bpf_sk_storage_elem*) #1

declare dso_local %struct.bucket* @select_bucket(%struct.bpf_sk_storage_map*, %struct.bpf_sk_storage_elem*) #1

declare dso_local i32 @raw_spin_lock_bh(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @hlist_del_init_rcu(i32*) #1

declare dso_local i32 @raw_spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
