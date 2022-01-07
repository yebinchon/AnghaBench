; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_bpf_sk_storage.c_selem_unlink_sk.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_bpf_sk_storage.c_selem_unlink_sk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_sk_storage_elem = type { i32 }
%struct.bpf_sk_storage = type { i32 }

@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_sk_storage_elem*)* @selem_unlink_sk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @selem_unlink_sk(%struct.bpf_sk_storage_elem* %0) #0 {
  %2 = alloca %struct.bpf_sk_storage_elem*, align 8
  %3 = alloca %struct.bpf_sk_storage*, align 8
  %4 = alloca i32, align 4
  store %struct.bpf_sk_storage_elem* %0, %struct.bpf_sk_storage_elem** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.bpf_sk_storage_elem*, %struct.bpf_sk_storage_elem** %2, align 8
  %6 = call i32 @selem_linked_to_sk(%struct.bpf_sk_storage_elem* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %39

13:                                               ; preds = %1
  %14 = load %struct.bpf_sk_storage_elem*, %struct.bpf_sk_storage_elem** %2, align 8
  %15 = getelementptr inbounds %struct.bpf_sk_storage_elem, %struct.bpf_sk_storage_elem* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.bpf_sk_storage* @rcu_dereference(i32 %16)
  store %struct.bpf_sk_storage* %17, %struct.bpf_sk_storage** %3, align 8
  %18 = load %struct.bpf_sk_storage*, %struct.bpf_sk_storage** %3, align 8
  %19 = getelementptr inbounds %struct.bpf_sk_storage, %struct.bpf_sk_storage* %18, i32 0, i32 0
  %20 = call i32 @raw_spin_lock_bh(i32* %19)
  %21 = load %struct.bpf_sk_storage_elem*, %struct.bpf_sk_storage_elem** %2, align 8
  %22 = call i32 @selem_linked_to_sk(%struct.bpf_sk_storage_elem* %21)
  %23 = call i64 @likely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %13
  %26 = load %struct.bpf_sk_storage*, %struct.bpf_sk_storage** %3, align 8
  %27 = load %struct.bpf_sk_storage_elem*, %struct.bpf_sk_storage_elem** %2, align 8
  %28 = call i32 @__selem_unlink_sk(%struct.bpf_sk_storage* %26, %struct.bpf_sk_storage_elem* %27, i32 1)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %25, %13
  %30 = load %struct.bpf_sk_storage*, %struct.bpf_sk_storage** %3, align 8
  %31 = getelementptr inbounds %struct.bpf_sk_storage, %struct.bpf_sk_storage* %30, i32 0, i32 0
  %32 = call i32 @raw_spin_unlock_bh(i32* %31)
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.bpf_sk_storage*, %struct.bpf_sk_storage** %3, align 8
  %37 = load i32, i32* @rcu, align 4
  %38 = call i32 @kfree_rcu(%struct.bpf_sk_storage* %36, i32 %37)
  br label %39

39:                                               ; preds = %12, %35, %29
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @selem_linked_to_sk(%struct.bpf_sk_storage_elem*) #1

declare dso_local %struct.bpf_sk_storage* @rcu_dereference(i32) #1

declare dso_local i32 @raw_spin_lock_bh(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @__selem_unlink_sk(%struct.bpf_sk_storage*, %struct.bpf_sk_storage_elem*, i32) #1

declare dso_local i32 @raw_spin_unlock_bh(i32*) #1

declare dso_local i32 @kfree_rcu(%struct.bpf_sk_storage*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
